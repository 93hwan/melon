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
		List<Artist_dto> arti_main_static = artiDAO.artist_static(artist_no);
		model.addAttribute("arti_main_static", arti_main_static.get(0));		//artiDTO 대신에 artiDAO.artist_static~~ 넣어도되는건가ㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏ
		List<Artist_dto> arti_main_detail = artiDAO.arti_detail(artist_no);
		model.addAttribute("arti_main_detail", arti_main_detail.get(0));		//artiDTO 대신에 artiDAO.artist_static~~ 넣어도되는건가ㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏ
		
		return "artist_main";
	}
	
	@RequestMapping("/artist_music")
	public String artist_music(Model model,String artist_name){
		
		System.out.println("/artist_music Start");
		
		ArtistDAO artiDAO = sqlSession.getMapper(ArtistDAO.class);
		List<Music_dto> arti_music = artiDAO.arti_musicList("볼빨간사춘기"); //나중엔 hidden으로 받아온 파라미터 String 값으로 받아야함
		List<Artist_dto> arti_main_static = artiDAO.artist_static("792022");
		model.addAttribute("arti_main_static", arti_main_static.get(0));		//artiDTO 대신에 artiDAO.artist_static~~ 넣어도되는건가ㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏ
		for(int k=0; k<arti_music.size();k++){
			System.out.println(""+k+ arti_music.get(k).toString());
		}
		
		model.addAttribute("arti_music",arti_music);
//		model.addAttribute("arti_music",arti_music.get(0));
	
			return "artist_music";
	}
	
	@RequestMapping("/artist_album")
	public String artist_album(Model model, String artist_name){
		
		System.out.println("/artist_album Start");
		
		ArtistDAO artiDAO = sqlSession.getMapper(ArtistDAO.class);
		List<Album_dto> arti_album = artiDAO.arti_albumList("볼빨간사춘기"); //나중엔 hidden으로 받아온 파라미터 String 값으로 받아야함
		List<Artist_dto> arti_main_static = artiDAO.artist_static("792022");
		model.addAttribute("arti_main_static", arti_main_static.get(0));	
		model.addAttribute("arti_album",arti_album);
		
		return "artist_album";
	}
	
	@RequestMapping("/artist_video")
	public String artist_video(Model model, String music_no){
	
		ArtistDAO artiDAO = sqlSession.getMapper(ArtistDAO.class);
		List<Music_dto> arti_muVideo =	artiDAO.album_musicList(music_no);
		List<Artist_dto> arti_main_static = artiDAO.artist_static("792022");
		model.addAttribute("arti_main_static", arti_main_static.get(0));	
		model.addAttribute("arti_muVideo",arti_muVideo);
		
		return "artist_video";
	}
	
	@RequestMapping("/artist_reply")
	public String artist_reply(Model model, String arti_no){
	
		System.out.println("artist_reply 통과");
		ArtistDAO artiDAO = sqlSession.getMapper(ArtistDAO.class);
		List<ArtistComment_dto> arti_comment = artiDAO.arti_Comment(arti_no);
		
		model.addAttribute("arti_comment",arti_comment.get(0));
		
		return "artist_reply";
	}
	
	
	@RequestMapping("/artist_comment_send")
	public String artist_reply_send(Model model, ArtistComment_dto commentDTO){
	
		System.out.println("artist_reply_send 통과");
		ArtistDAO artiDAO = sqlSession.getMapper(ArtistDAO.class);
		commentDTO.setMember_id("rosie");
		
		model.addAttribute("artist_comment_send",commentDTO);
		
		System.out.println("artist_reply_send 페이지 못넘겼니");
		return "artist_reply";
	}
	
	
}
