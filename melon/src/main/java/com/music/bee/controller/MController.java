package com.music.bee.controller;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import com.music.bee.dao.CrolDAO;

@Controller
public class MController   {

			CrolDAO idao;
			
			@Autowired
			private SqlSession sqlSession;
			
			@RequestMapping("/album")
			public void crawling() throws Exception {
				
//				String chartUrl = "http://www.melon.com/chart/month/index.htm#params%5Bidx%5D=1&params%5BrankMonth%5D=201710&params%5BisFirstDate%5D=false&params%5BisLastDate%5D=true";
//				String chartUrl = "http://www.melon.com/genre/song_list.htm";
//				String chartUrl = "http://www.melon.com/artist/song.htm?artistId=792022";
				/** 국내 최신*/
				String chartUrl ="http://www.melon.com/new/index.htm#params%5BareaFlg%5D=I&params%5BorderBy%5D=&po=pageObj&startIndex=1";
				/** 해외 최신*/
//					String chartUrl ="http://www.melon.com/new/index.htm#params%5BareaFlg%5D=O&params%5BorderBy%5D=&po=pageObj&startIndex=1";
//				String chartUrl = "http://www.melon.com/chart/style/index.htm#params%5Bidx%5D=1&params%5BstartDay%5D=20171127&params%5BendDay%5D=20171203&params%5BisFirstDate%5D=false&params%5BisLastDate%5D=true";
//				String chartUrl = "http://www.melon.com/chart/day/index.htm";
//				String chartUrl = "http://www.melon.com/chart/index.htm#params%5Bidx%5D=51";
//				String chartUrl = "http://www.melon.com/genre/song_list.htm?gnrCode=GN0200";
//				String chartUrl = "http://www.melon.com/search/song/index.htm?q=%EC%82%AC%EB%9E%91&section=song&searchGnbYn=Y&kkoSpl=Y&kkoDpType=&ipath=srch_form";
				
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

				String artist_get,title_get, albumName_get, album_Img,artist_No,SongNum_get;
				
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
//					Elements album_Title = docAlbum.select(".albumname");
					//타이틀곡 & 타이틀곡번호
//					Elements title_Music = docAlbum.select(".ellipsis:has(span[class$=title]) a:eq(2)");
					//출시일
					Elements album_relDate = docAlbum.select(".list dd:eq(0)");
					//곡목록 ->pending
//					Elements music_List = docAlbum.select("#d_artist_award");
					//곡번호
					Elements music_Num = docAlbum.select("a[href*=goSongDetail]");

				
					musicNum_trimed  = music_Num.attr("href").split("javascript:melon.link.goSongDetail")[1].substring(2).split("'")[0];  //곡번호
					System.out.println("여기까지는됨1");
//					album_titleMuVar =title_Music.get(0).attr("title").toString();	//타이틀명 출력	
					System.out.println("여기까지는됨2");
					album_albumImgVar = album_AlbumImg.attr("src");
					System.out.println("여기까지는됨3");
					album_relDateVar =album_relDate.text();
//					.split(" <dd>")[1].split("\n")[0]
//					System.out.println("타이틀곡 : " + album_titleMuVar);
//					System.out.println("타이틀곡 번호 : "+ musicNum_trimed);
					System.out.println("앨범사진 : "+album_albumImgVar);
					System.out.println("앨범명 : "+albumName_get);
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
				Elements detail_Debut03 = doc2.select("#d_artist_intro");
//				Elements detail_Nation = doc2.select(".section_atistinfo04 dl.list_define.clfix dd");		//국적 -> 대부분 첫번째에 국적표시, 몇몇 가수는 본명, 별명 등이 입력되어있음
//				//SNS정보
//				Elements detail_FanPage = doc2.select(".section_atistinfo05 dl.list_define.clfix:has(a[href]) dd:eq(1)");
		//
					String Award_record = detail_AwardRecord.text();
					System.out.println("수상경력"+"\n"+Award_record+"\n");
					
					String arti_intro = detail_Debut03.text();
					ArrayList<String> list_title = new ArrayList<>();
					ArrayList<String> list_content = new ArrayList<>();
					String str_get ="",str_get02="";
					
						for(Element el : detail_Debut01){
							list_title.add(el.text().toString());
						}
						for(Element el2 : detail_Debut02){
							list_content.add(el2.text().toString());		
						}
						for(int k=0;k<list_title.size();k++){
							str_get =str_get +","+ list_title.get(k);
							str_get02 =str_get02 +","+ list_content.get(k);			// artist 테이블 -etc 컬럼
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
					Elements song_info = doc3.select(".list dd");
					Elements song_Name = doc3.select(".song_name");

					String lyric_get=lyrics.text().toString();
//					String song_Info_get=song_info.text().toString();
					String song_Name_get=song_Name.text().toString();
					
//					System.out.println("곡정보 (아티스트/앨범/발매일/장르) \n"+song_Info_get);
					System.out.println("제목 : "+ song_Name_get);
					for(int k=0;k<3;k++){
						String list[] = {"앨범","발매일","장르"};
						System.out.println(list[k]);
						System.out.println(song_info.get(0).text().toString()+"\n");
						System.out.println(song_info.get(1).text().toString()+"\n");
						System.out.println(song_info.get(2).text().toString()+"\n");
					}
					String al=song_info.get(0).text().toString();
					String rel=song_info.get(1).text().toString();
					String genr=song_info.get(2).text().toString();
					
					System.out.println("가사"+"\n"+ lyric_get);
					System.out.println("--------------------------------4단계크롤링 완료");

								System.out.println("---------------------------------------------youtube크롤링 시작");
								System.out.println(singer_list.get(i));
								System.out.println(title_list.get(i));
								String YoutubeUrl = "https://www.youtube.com/results";
								String query = singer_list.get(i).trim()+"+"+title_list.get(i).trim();
								Document youtube_doc = Jsoup.connect(YoutubeUrl.replaceAll(" ", "%20"))
										.data("search_query", query)
										.userAgent("Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.4; en-US; rv:1.9.2.2) Gecko/20100316 Firefox/3.6.2")
										.get();
								
								Element VideoLink = youtube_doc.select(".yt-lockup-title > a[title]").first();
								String strLink = VideoLink.attr("href").toString();
								if(VideoLink!=null){
									System.out.println(strLink);
									System.out.println("youtube크롤링완료----------------------------------------");
										}
					
						CrolDAO dao = sqlSession.getMapper(CrolDAO.class);
						System.out.println("sql세션연결완료");
						
						if(artist_No.equals("108356")){
							System.out.println("에픽하이 저장안함");
						}	else if(artist_No.equals("28801")){
							System.out.println("허각 저장안함");
						}	else if(artist_No.equals("1142")){
							System.out.println("임창정 저장안함");
						}	else if(artist_No.equals("247893")){
							System.out.println("저장안함");
						} 	else if(SongNum_get.equals("30566061")){
							System.out.println("n분의1 저장 안함");
						} 	else if(SongNum_get.equals("30769545")){
							System.out.println("방탄소년단 크리스탈 스노우");
						}	else if(SongNum_get.equals("30395919")){
							System.out.println("DJ Khaled 저장안함");
						
						} 	else{
						
//		국내
						dao.album(trimed_albumNum, al,artist_get, album_albumImgVar, rel);
						System.out.println("album db저장 완료");
						dao.artist(artist_No, artist_get, artist_img, "", Award_record,str_get,str_get02);  //가수소개 부분 공백처리 -에러너무많이남
						System.out.println("artist db저장 완료");
						dao.music(SongNum_get, al, song_Name_get, artist_get, genr, strLink, lyric_get, rel);
//		팝송	
//						dao.pop_album(trimed_albumNum, al,artist_get, album_albumImgVar, rel);
//						System.out.println("album db저장 완료");
//						dao.artist(artist_No, artist_get, artist_img, "", Award_record,str_get,str_get02);  //가수소개 부분 공백처리 -에러너무많이남
//						System.out.println("artist db저장 완료");
//						dao.pop(SongNum_get, al, song_Name_get, artist_get, genr, strLink, lyric_get, rel);
							}
						}
//				sqlSession.close();
			}//첫번째 for
}
