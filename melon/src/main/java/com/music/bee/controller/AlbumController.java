package com.music.bee.controller;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.music.bee.dao.AlbumDAO;
import com.music.bee.dao.ArtistDAO;
import com.music.bee.dao.MusicDAO;
import com.music.bee.dto.Album_dto;
import com.music.bee.dto.Music_dto;

@Controller
@RequestMapping(value="/album")
public class AlbumController {

	@Autowired
	SqlSession sqlSession ;
	
	@RequestMapping(value="/album_main" ,method = RequestMethod.GET)
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
	
	@RequestMapping( value="/music_info" ,method = RequestMethod.GET)
	public String music_info(Model model, String music_no){
		System.out.println("music_info 통과");
		MusicDAO musicDAO = sqlSession.getMapper(MusicDAO.class);
		AlbumDAO albumDAO = sqlSession.getMapper(AlbumDAO.class);
		List<Music_dto> musicInform = musicDAO.music_info(music_no);	//곡번호로  가사,아티스트, 
		List<Album_dto> albumInform = albumDAO.album_main("10100191");	//앨범번호로 앨범 이미지,출시일, 앨범명 출력
		
		model.addAttribute("album_main", albumInform.get(0));
		model.addAttribute("music_info",musicInform.get(0));
		
		System.out.println("music_info 페이지 넘겨버리기");
		
		return "music_info";
	}
	
	
	
}
