package com.music.bee.controller;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.music.bee.dao.AlbumDAO;
import com.music.bee.dao.ArtistDAO;
import com.music.bee.dto.Album_dto;
import com.music.bee.dto.Music_dto;

@Controller
@RequestMapping(value="/album")
public class AlbumController {

	@Autowired
	SqlSession sqlSession ;
	
	@RequestMapping(value="/album_main")
	public String album_main(Model model,String albumNo){

		System.out.println("헬로 album");
		AlbumDAO albumDAO = sqlSession.getMapper(AlbumDAO.class);
		List<Album_dto> album_main = albumDAO.album_main("10100191");
		List<Music_dto> album_music = albumDAO.album_musicList("Red Diary Page.1");
		
		model.addAttribute("album_main",album_main.get(0));
		model.addAttribute("album_musicList",album_music);
		System.out.println("바이 album");
		
		return "album_main";
	}
	
	
	
}
