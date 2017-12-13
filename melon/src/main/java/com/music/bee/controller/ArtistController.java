package com.music.bee.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.music.bee.dao.ArtistDAO;
import com.music.bee.dto.ArtistComment_dto;


@Controller
@RequestMapping("/artist")
public class ArtistController {
	
	
	@Autowired
	private SqlSession sqlSession;

	@RequestMapping(value="/main/{artist_no}", method = RequestMethod.GET)
	public String artist_main(Model model,@PathVariable("artist_no") String artist_no){
		System.out.println("내용물 = "+artist_no.toString());
		
		model.addAttribute("arti_main_static", sqlSession.getMapper(ArtistDAO.class).artist_static(artist_no).get(0));	
		
		return "artist_main";
	}
	
	
	@RequestMapping(value="/artist_music/{artist_no}",method = RequestMethod.GET)
	public String artist_music(Model model,@PathVariable("artist_no") String artist_no){
		
		System.out.println("/artist_music Start");
		
		ArtistDAO artiDAO = sqlSession.getMapper(ArtistDAO.class);
		
		model.addAttribute("arti_main_static", artiDAO.artist_static(artist_no).get(0));
		model.addAttribute("arti_music",artiDAO.arti_musicList(artist_no));
	
		System.out.println("/artist_music Finished");
		
			return "artist_music";
	}
	
	@RequestMapping(value="/artist_album/{artist_no}" ,method = RequestMethod.GET)
	public String artist_album(Model model,@PathVariable("artist_no") String artist_no){
		
		System.out.println("/artist_album Start");
		
		ArtistDAO artiDAO = sqlSession.getMapper(ArtistDAO.class);
		
		model.addAttribute("arti_main_static", artiDAO.artist_static(artist_no).get(0));	
		model.addAttribute("arti_album",artiDAO.arti_albumList(artist_no));
		
		return "artist_album";
	}
	
	@RequestMapping(value="/artist_video/{artist_no}",method = RequestMethod.GET)
	public String artist_video(Model model,@PathVariable("artist_no") String artist_no){
	
		ArtistDAO artiDAO = sqlSession.getMapper(ArtistDAO.class);
		
		model.addAttribute("arti_main_static", artiDAO.artist_static(artist_no).get(0));	
		model.addAttribute("arti_muVideo",artiDAO.arti_musicList(artist_no));
		
		return "artist_video";
	}
	
	@RequestMapping(value="/artist_reply/{artist_no}",method = RequestMethod.GET)
	public String artist_reply(Model model,@PathVariable("artist_no") String arti_no){
	
		System.out.println("artist_reply 통과");
		ArtistDAO artiDAO = sqlSession.getMapper(ArtistDAO.class);
		
		model.addAttribute("arti_main_static", artiDAO.artist_static(arti_no).get(0));	
		model.addAttribute("arti_comment", artiDAO.arti_comment(arti_no));
		
		return "artist_reply";
	}
	
	
	
	// 해결해야해.....................................ㅠ_ㅠ
	@RequestMapping(value="/artist_comment_send", method = RequestMethod.GET)
	public String artist_reply_send(Model model,String arti_no){
		
		System.out.println("artist_reply_send 통과");
		ArtistDAO artiDAO = sqlSession.getMapper(ArtistDAO.class);
//		arti_no.setMember_id("rosie");
		
		model.addAttribute("arti_main_static", artiDAO.artist_static(arti_no));
		model.addAttribute("artist_comment_send",arti_no);
		
		System.out.println("artist_reply_send 페이지 못넘겼니");
		return "artist_reply";
	}
	
}
