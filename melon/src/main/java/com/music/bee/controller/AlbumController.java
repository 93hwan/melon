package com.music.bee.controller;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.music.bee.dao.ArtistDAO;
import com.music.bee.dto.Album_dto;
import com.music.bee.dto.Music_dto;

@Controller
@RequestMapping(value="/album")
public class AlbumController {

	@Autowired
	SqlSession sqlSession ;
	
	@RequestMapping(value="/album_main")
	public String album_main(Model model,Album_dto albumDTO,Music_dto musicDTO){

		System.out.println("헬로 album");
		ArtistDAO artiDAO = sqlSession.getMapper(ArtistDAO.class);
		artiDAO.album_main(albumDTO.getAlbum_no());
		artiDAO.arti_musicList(musicDTO.getMusic_no());
		
		albumDTO.setAlbum_title("우주를 줄게");
		albumDTO.setArtist_name("볼빨간 사춘기");
		albumDTO.setRelease("2016.10.01");
		albumDTO.setImg("http://cdnimg.melon.co.kr/cm/album/images/027/07/131/2707131_500.jpg/melon/resize/130/quality/80/optimize");
		model.addAttribute("album_main",albumDTO);
		model.addAttribute("album_musicList",musicDTO);
		System.out.println("바이 album");
		
		return "album_main";
	}
	
	
	
}
