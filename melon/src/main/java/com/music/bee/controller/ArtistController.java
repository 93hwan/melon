package com.music.bee.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
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
	public String artist_main(Model model,String artist_name){
		System.out.println("내용물 = "+artist_name.toString());
		
//		ArtistDAO artiDAO ;
		model.addAttribute("arti_main_static", sqlSession.getMapper(ArtistDAO.class).artist_static(artist_name).get(0));	
		
		return "artist_main";
	}
	
	
	@RequestMapping(value="/artist_music",method = RequestMethod.GET)
	public String artist_music(Model model,Artist_dto artist,Album_dto album,Music_dto music){
		
		System.out.println("/artist_music Start");
		
		ArtistDAO artiDAO = sqlSession.getMapper(ArtistDAO.class);
		
		model.addAttribute("arti_main_static", artiDAO.artist_static("792022").get(0));
		model.addAttribute("arti_music",artiDAO.arti_musicList("볼빨간사춘기"));
	
			return "artist_music";
	}
	
	@RequestMapping(value="/artist_album" ,method = RequestMethod.GET)
	public String artist_album(Model model, Artist_dto artist,Album_dto album,Music_dto music){
		
		System.out.println("/artist_album Start");
		
		ArtistDAO artiDAO = sqlSession.getMapper(ArtistDAO.class);
		
		model.addAttribute("arti_main_static", artiDAO.artist_static("792022").get(0));	
		model.addAttribute("arti_album",artiDAO.arti_albumList("볼빨간사춘기"));
		
		return "artist_album";
	}
	
	@RequestMapping(value="/artist_video",method = RequestMethod.GET)
	public String artist_video(Model model,Artist_dto artist,Album_dto album,Music_dto music){
	
		ArtistDAO artiDAO = sqlSession.getMapper(ArtistDAO.class);
		
		model.addAttribute("arti_main_static", artiDAO.artist_static("792022").get(0));	
		model.addAttribute("arti_muVideo",artiDAO.arti_musicList("볼빨간사춘기"));
		
		return "artist_video";
	}
	
	@RequestMapping(value="/artist_reply",method = RequestMethod.GET)
	public String artist_reply(Model model, String arti_no){
	
		System.out.println("artist_reply 통과");
		ArtistDAO artiDAO = sqlSession.getMapper(ArtistDAO.class);
		
		model.addAttribute("arti_main_static", artiDAO.artist_static(arti_no).get(0));	
		model.addAttribute("arti_comment", artiDAO.arti_Comment(arti_no));
		
		return "artist_reply";
	}
	
	
	@RequestMapping(value="/artist_comment_send",method = RequestMethod.GET)
	public String artist_reply_send(Model model, ArtistComment_dto arti_no){
		
		System.out.println("artist_reply_send 통과");
		ArtistDAO artiDAO = sqlSession.getMapper(ArtistDAO.class);
		arti_no.setMember_id("rosie");
		
		model.addAttribute("arti_main_static", artiDAO.artist_static(arti_no.getArtist_no()).get(0));
		model.addAttribute("artist_comment_send",arti_no);
		
		System.out.println("artist_reply_send 페이지 못넘겼니");
		return "artist_reply";
	}
	
}
