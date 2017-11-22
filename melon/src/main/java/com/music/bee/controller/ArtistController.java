package com.music.bee.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/artist")
public class ArtistController {
	
	
	@Autowired
	private SqlSession sqlSession;


	@RequestMapping("/main")
	public String artist_main(){
		
	return "artist_main";
	}
	
	@RequestMapping("/artist_music")
	public void artist_music(){
		
	}
	
	@RequestMapping("/artist_album")
	public void artist_album(){
		
	}
	
	@RequestMapping("/artist_video")
	public void artist_video(){
		
	}
	
	
	
	
	
}
