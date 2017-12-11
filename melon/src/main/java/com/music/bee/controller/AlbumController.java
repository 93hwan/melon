package com.music.bee.controller;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.music.bee.dao.AlbumDAO;
import com.music.bee.dao.MusicDAO;

@Controller
@RequestMapping(value="/album")
public class AlbumController {

	@Autowired
	SqlSession sqlSession ;
	
	@RequestMapping(value="/album_main" ,method = RequestMethod.GET)
	public String album_main(Model model,String albumNo){

		System.out.println("헬로 album");
		AlbumDAO albumDAO = sqlSession.getMapper(AlbumDAO.class);
		
		model.addAttribute("album_main",albumDAO.album_main("10100191").get(0));
		model.addAttribute("album_musicList",albumDAO.album_musicList("Red Diary Page.1"));
		System.out.println("바이 album");
		
		return "album_main";
	}
	
	@RequestMapping( value="/music_info" ,method = RequestMethod.GET)
	public String music_info(Model model, String music_no){
		System.out.println("music_info 통과");
		MusicDAO musicDAO = sqlSession.getMapper(MusicDAO.class);
		AlbumDAO albumDAO = sqlSession.getMapper(AlbumDAO.class);
		
		model.addAttribute("album_main", albumDAO.album_main("10100191").get(0));	////앨범번호로 앨범 이미지,출시일, 앨범명 출력
		model.addAttribute("music_info",musicDAO.music_info(music_no).get(0));		//곡번호로  가사,아티스트, 
		
		System.out.println("music_info 페이지 넘겨버리기");
		
		return "music_info";
	}
	
	
	
}
