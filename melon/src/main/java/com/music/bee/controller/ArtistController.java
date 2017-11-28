package com.music.bee.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.music.bee.dao.ArtistDAO;
import com.music.bee.dto.Album_dto;
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
		artiDTO.setImg("zz");
		artiDTO.setArtist_name("이유경");
		artiDTO.setEtc("정보");
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
		artiDAO.arti_musicList(music_dto);
		
		model.addAttribute("arti_music",music_dto);
		
	return "artist_music";
	}
	
	@RequestMapping("/artist_album")
	public String artist_album(Model model, Album_dto albumDTO){
		
		System.out.println("/artist_album Start");
		
		ArtistDAO artiDAO = sqlSession.getMapper(ArtistDAO.class);
		artiDAO.arti_albumList(albumDTO);
		
		model.addAttribute("arti_album",albumDTO);
		
	return "artist_album";
	}
	
	@RequestMapping("/artist_video")
	public String artist_video(){
	
	return "artist_video";
	}
	
}
