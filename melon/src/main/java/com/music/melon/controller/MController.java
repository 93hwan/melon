package com.music.melon.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import java.io.FileWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;


import com.music.melon.dao.IDAO;
import com.music.melon.temp.test01;

@Controller
public class MController   {

			IDAO idao;
			test01 test = new test01();
			
			@Autowired
			private SqlSession sqlSession;
			
			@RequestMapping("/artist")
			public void crawling() throws Exception {
				String chartUrl = "http://www.melon.com/chart/index.htm";		
				ArrayList<String> singer_list = new ArrayList<>();
				ArrayList<String> title_list = new ArrayList<>();
				ArrayList<String> singerNum_list = new ArrayList<>();
				ArrayList<String> singNum_list = new ArrayList<>();
				ArrayList<String> AlbumNum_list = new ArrayList<>();
				ArrayList<String> music_list = new ArrayList<>();
				
				Document doc1 = Jsoup.connect(chartUrl).get();
				
				Elements titles = doc1.select("div[class$= rank01]"); // div태그 안에 클래스 이름이 rank01로 끝나는 데이터 뽑아올때
				Elements songNum = doc1.select("a[class$=song_info]"); // 곡 고유번호
				Elements albumName = doc1.select("div[class$= rank03]"); // div태그 안에 클래스 이름이 rank01로 끝나는 데이터 뽑아올때
				Elements artist = doc1.select("span.checkEllipsis");
				Elements artistNo = doc1.select(".checkEllipsis:has(a[href])");
				Elements albumImg = doc1.select("img[src$= optimize]");

				String artist_get,title_get, albumName_get, artist_No, album_Img, SongNum_get;
			
				FileWriter fw=null;
				
				for(int i= 0; i< titles.size(); i++){
					String trimed_singerNo= artistNo.get(i).html().split("<a href=\"javascript:melon.link.goArtistDetail")[1].substring(2).split("'")[0];
					String trimed_albumNum= albumName.get(i).html().split("\"javascript:melon.link.goAlbumDetail")[1].substring(2).split("'")[0];  //trimed_albumNum
					artist_get = artist.get(i).text();
					title_get = titles.get(i).text();
					SongNum_get = songNum.get(i).attr("href").split("javascript:melon.link.goSongDetail")[1].substring(2).split("'")[0];;
					artist_No = trimed_singerNo;
					album_Img = albumImg.get(i).attr("src");
					albumName_get=albumName.get(i).text();
					
					//list 넣기 -> 연결 페이지에서 필요한 정보 크롤링 할 때 필요 
					singer_list.add(artist_get);			//가수 저장 리스트
					title_list.add(title_get);				//제목 저장 리스트
					singerNum_list.add(artist_No);			//가수 번호 저장
					AlbumNum_list.add(trimed_albumNum);		//앨범 고유번호 저장
					singNum_list.add(SongNum_get);
					
						System.out.print((i+1)+"위  - "+title_get+"\n"); 	//	순위 & title
						System.out.println("곡 번호 : "+SongNum_get);		// 곡번호 
						System.out.println("가수 : "+ artist_get);		//	가수이름
						System.out.println("가수no : "+artist_No);			//	singerNo
						System.out.println("albumNo : "+trimed_albumNum);	//	trimed_albumNum
						System.out.println("albumName : "+albumName_get);		//albumName
						System.out.println("album_Img : "+album_Img); 	//ImgSrc
						System.out.println("--------------------------------1단계크롤링 완료");
				
//				chart page에서 받아온 albumNum을 통해 url 생성 ->접속 후 앨범정보 (앨범제목,출시일,곡목록,타이틀 크롤링)
				String album_albumImgVar, album_TitleVar, album_titleMuVar, album_relDateVar,musicNum_trimed;
				
					String AlbumUrl = "http://www.melon.com/album/detail.htm?albumId="+AlbumNum_list.get(i);
					Document docAlbum = Jsoup.connect(AlbumUrl).get();
					
					//앨범사진
					Elements album_AlbumImg = docAlbum.select("img[src$= optimize]");
					//앨범제목
					Elements album_Title = docAlbum.select(".albumname");
					//타이틀곡 & 타이틀곡번호
					Elements title_Music = docAlbum.select(".ellipsis:has(span[class$=title]) a:eq(2)");//.tagName("a");
					//출시일
					Elements album_relDate = docAlbum.select("dl[class~=song_info] dd:eq(3)");
					//곡목록 ->pending
//					Elements music_List = docAlbum.select("#d_artist_award");
					//곡번호
					Elements music_Num = docAlbum.select("a[href*=goSongDetail]");

				
					musicNum_trimed  = music_Num.attr("href").split("javascript:melon.link.goSongDetail")[1].substring(2).split("'")[0];  //곡번호
					album_titleMuVar =title_Music.get(0).attr("title").toString();	//타이틀명 출력	
					album_albumImgVar = album_AlbumImg.attr("src");
					album_TitleVar = album_Title.text(); 	//앨범명
					album_relDateVar =album_relDate.get(0).text().toString();
//					.split(" <dd>")[1].split("\n")[0]
//					System.out.println("타이틀곡 : " + album_titleMuVar);
//					System.out.println("타이틀곡 번호 : "+ musicNum_trimed);
					System.out.println("앨범사진 : "+album_albumImgVar);
					System.out.println("앨범명 : "+album_TitleVar);
					System.out.println("앨범출시일 : "+album_relDateVar);
					System.out.println("--------------------------------2단계크롤링 완료");
					
				String url= "http://www.melon.com/artist/detail.htm?artistId="+singerNum_list.get(i);
				Document doc2 = Jsoup.connect(url).get();
//				
//				//가수이미지
				Elements detail_Img = doc2.select("img[src$=optimize]");
//				//수상이력부분
				Elements detail_AwardRecord = doc2.select("#d_artist_award");
//				//활동정보
				Elements detail_Debut01 = doc2.select("dl[class~=atist_info] dt");
				Elements detail_Debut02 = doc2.select("dl[class~=atist_info] dd");
//				Elements detail_Nation = doc2.select(".section_atistinfo04 dl.list_define.clfix dd");		//국적 -> 대부분 첫번째에 국적표시, 몇몇 가수는 본명, 별명 등이 입력되어있음
//				//SNS정보
//				Elements detail_FanPage = doc2.select(".section_atistinfo05 dl.list_define.clfix:has(a[href]) dd:eq(1)");
		//
					System.out.println("수상경력"+"\n"+detail_AwardRecord.text()+"\n");
					int cnt=0;
					ArrayList<String> list_title = new ArrayList<>();
					ArrayList<String> list_content = new ArrayList<>();
						for(Element el : detail_Debut01){
							list_title.add(el.text().toString());
						}
						for(Element el2 : detail_Debut02){
							list_content.add(el2.text().toString());		
								cnt++;
						}
						for(int k=1;k<list_title.size();k++){
							String str_get = list_title.get(k);
							String str_get02 = list_content.get(k);			// artist 테이블 -etc 컬럼
							System.out.println(str_get+"\n" + str_get02+"\n");
						}
						String artist_img=detail_Img.attr("src");
					System.out.println("아티스트 image : "+ artist_img);
//					System.out.println("국적 : "+detail_Nation.get(0).text()); //국적
//					System.out.println("가수명 | 관련페이지");
//					System.out.println(detail_FanPage.get(0).text());
					System.out.println("--------------------------------3단계크롤링 완료");
					
					//곡정보 - (m_music table)
					String url04= "http://www.melon.com/song/detail.htm?songId="+singNum_list.get(i);
					Document doc3 = Jsoup.connect(url04).get();
					Elements lyrics = doc3.select(".lyric");
					Elements song_info = doc3.select("dl[class~=song_info] dd");
					Elements song_Name = doc3.select(".songname");

					String lyric_get=lyrics.text().toString();
//					String song_Info_get=song_info.text().toString();
					String song_Name_get=song_Name.text().substring(2).toString();
					
//					System.out.println("곡정보 (아티스트/앨범/발매일/장르) \n"+song_Info_get);
					System.out.println("제목 : "+ song_Name_get);
					for(int k=0;k<4;k++){
						String list[] = {"아티스트","앨범","발매일","장르"};
						System.out.println(list[k]);
						System.out.println(song_info.get(0).text().toString()+"\n");
						System.out.println(song_info.get(1).text().toString()+"\n");
						System.out.println(song_info.get(2).text().toString()+"\n");
						System.out.println(song_info.get(3).text().toString()+"\n");
					
					}
					String arti_=song_info.get(0).text().toString();
					String al=	song_info.get(1).text().toString();
					String rel=	song_info.get(2).text().toString();
					String genr=song_info.get(3).text().toString();
					
					System.out.println("가사"+"\n"+ lyric_get);
					System.out.println("--------------------------------4단계크롤링 완료");
					
					
						IDAO dao = sqlSession.getMapper(IDAO.class);
//						dao.album(albumName_get, title_get, artist_get,album_albumImgVar);
						dao.artist(artist_get, artist_img, "대한민국", "20171112");
//						dao.music(artist_get, artist_img, "대한민국", "20171112");
					
				}		//첫번째 for
			}
			
	
	
	

}
