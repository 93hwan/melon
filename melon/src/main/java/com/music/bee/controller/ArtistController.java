package com.music.bee.controller;

import java.util.List;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.music.bee.dao.ArtistDAO;
import com.music.bee.dto.Album_dto;
import com.music.bee.dto.ArtistComment_dto;
import com.music.bee.dto.Artist_dto;
import com.music.bee.dto.Music_dto;


@Controller
@RequestMapping("/artist")
public class ArtistController {
	
	
	@Autowired
	private SqlSession sqlSession;

	@RequestMapping(value="/main", method = RequestMethod.GET)
	public String artist_main(Model model,String artist_no){
		System.out.println("내용물 = "+artist_no.toString());
		ArtistDAO artiDAO = sqlSession.getMapper(ArtistDAO.class);
		List<Artist_dto> arti_main = artiDAO.artist_static(artist_no);
		model.addAttribute("arti_main", arti_main.get(0));		//artiDTO 대신에 artiDAO.artist_static~~ 넣어도되는건가ㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏ
		
		return "artist_main";
	}
	
	@RequestMapping("/artist_music")
	public String artist_music(Model model,String artist_name){
		
		System.out.println("/artist_music Start");
		
		ArtistDAO artiDAO = sqlSession.getMapper(ArtistDAO.class);
		
//		music_dto.setArtist_name("이유경");
//		music_dto.setTitle("좋다고 말해");
//		music_dto.setAlbum_title("월간 윤종신 11월 호");
//		music_dto.setMusic_no("좋아");
		
		List<Music_dto> arti_music = artiDAO.arti_musicList("볼빨간사춘기");
		model.addAttribute("arti_music",arti_music.get(0));
	
			return "artist_music";
	}
	
	@RequestMapping("/artist_album")
	public String artist_album(Model model, Album_dto albumDTO){
		
		System.out.println("/artist_album Start");
		
		ArtistDAO artiDAO = sqlSession.getMapper(ArtistDAO.class);
		
		albumDTO.setAlbum_title("월간 윤종신 11월 호");
		albumDTO.setArtist_name("이유경");
		albumDTO.setImg("http://cdnimg.melon.co.kr/cm/album/images/100/70/846/10070846_500.jpg/melon/resize/130/quality/80/optimize");
		artiDAO.arti_albumList(albumDTO.getAlbum_no());
		
		model.addAttribute("arti_album",albumDTO);
		
		return "artist_album";
	}
	
	@RequestMapping("/artist_video")
	public String artist_video(Model model, Music_dto musicDTO){
	
		ArtistDAO artiDAO = sqlSession.getMapper(ArtistDAO.class);
		artiDAO.album_musicList(musicDTO.getMusic_no());
		
		model.addAttribute("arti_muVideo",musicDTO);
		
		return "artist_video";
	}
	
	@RequestMapping("/artist_reply")
	public String artist_reply(Model model, ArtistComment_dto commentDTO){
	
		System.out.println("artist_reply 통과");
		ArtistDAO artiDAO = sqlSession.getMapper(ArtistDAO.class);
		commentDTO.setArtist_no("123456");
		artiDAO.arti_Comment(commentDTO.getArtist_no());
		
		model.addAttribute("arti_comment",commentDTO);
		
		return "artist_reply";
	}
	
	
	@RequestMapping("/artist_comment_send")
	public String artist_reply_send(Model model, ArtistComment_dto commentDTO){
	
		System.out.println("artist_reply_send 통과");
		ArtistDAO artiDAO = sqlSession.getMapper(ArtistDAO.class);
		commentDTO.setArtist_no("123456");
		commentDTO.setMember_id("rosie");
		artiDAO.arti_Comment_send(commentDTO.getArtist_no());
		
		model.addAttribute("artist_comment_send",commentDTO);
		
		System.out.println("artist_reply_send 페이지 못넘겼니");
		return "artist_reply";
	}
	
	
}
