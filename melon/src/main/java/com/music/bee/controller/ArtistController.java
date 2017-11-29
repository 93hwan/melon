package com.music.bee.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

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


	@RequestMapping("/main")
	public String artist_main(Model model,Artist_dto artiDTO){
		System.out.println("/artist_main Start");
		System.out.println("내용물 = "+artiDTO.toString());
		artiDTO.setArtist_no("2032423");
		artiDTO.setImg("http://cdnimg.melon.co.kr/cm/album/images/100/70/846/10070846_500.jpg/melon/resize/130/quality/80/optimize");
		artiDTO.setArtist_name("이유경");
		artiDTO.setEtc("서툴고 미숙한 시기, 사춘기라는 이유만으로도 포용할 수 있는 그런 때가 있다."
				+ "순수하고 솔직한, 때 타지 않은 말간 감성들을 담아 노래하고픈 볼빨간사춘기. "
				+ "그대들의 싱그러웠던 사춘기 잔상을 톡톡 튀는 음악으로 전하고자 한다.");
		System.out.println("내용물 = "+artiDTO.toString());
		ArtistDAO artiDAO = sqlSession.getMapper(ArtistDAO.class);
		artiDAO.artist_static(artiDTO);
		
		model.addAttribute("arti_main",artiDTO);
		
	return "artist_main";
	}
	
	@RequestMapping("/artist_music")
	public String artist_music(Model model,Music_dto music_dto){
		
		System.out.println("/artist_music Start");
		
		ArtistDAO artiDAO = sqlSession.getMapper(ArtistDAO.class);
		
		music_dto.setArtist_name("이유경");
		music_dto.setTitle("좋다고 말해");
		music_dto.setAlbum_title("월간 윤종신 11월 호");
		music_dto.setMusic_no("좋아");
		artiDAO.arti_musicList(music_dto);
		
		model.addAttribute("arti_music",music_dto);
		
	return "artist_music";
	}
	
	@RequestMapping("/artist_album")
	public String artist_album(Model model, Album_dto albumDTO){
		
		System.out.println("/artist_album Start");
		
		ArtistDAO artiDAO = sqlSession.getMapper(ArtistDAO.class);
		
		albumDTO.setAlbum_title("월간 윤종신 11월 호");
		albumDTO.setArtist_name("이유경");
		albumDTO.setImg("http://cdnimg.melon.co.kr/cm/album/images/100/70/846/10070846_500.jpg/melon/resize/130/quality/80/optimize");
		artiDAO.arti_albumList(albumDTO);
		
		model.addAttribute("arti_album",albumDTO);
		
		return "artist_album";
	}
	
	@RequestMapping("/artist_video")
	public String artist_video(Model model, Music_dto musicDTO){
	
		ArtistDAO artiDAO = sqlSession.getMapper(ArtistDAO.class);
		artiDAO.arti_musicList(musicDTO);
		
		model.addAttribute("arti_muVideo",musicDTO);
		
		return "artist_video";
	}
	
	@RequestMapping("/artist_reply")
	public String artist_reply(Model model, ArtistComment_dto commentDTO){
	
		System.out.println("artist_reply 통과");
		ArtistDAO artiDAO = sqlSession.getMapper(ArtistDAO.class);
		commentDTO.setArtist_no(123456);
		artiDAO.arti_Comment(commentDTO);
		
		model.addAttribute("arti_comment",commentDTO);
		
		return "artist_reply";
	}
	
	
	@RequestMapping("/artist_comment_send")
	public String artist_reply_send(Model model, ArtistComment_dto commentDTO){
	
		System.out.println("artist_reply_send 통과");
		ArtistDAO artiDAO = sqlSession.getMapper(ArtistDAO.class);
		commentDTO.setArtist_no(123456);
		artiDAO.arti_Comment_send(commentDTO);
		
		model.addAttribute("artist_comment_send",commentDTO);
		
		System.out.println("artist_comment_send 페이지 못넘겼니");
		return "artist_reply";
	}
	
	
}
