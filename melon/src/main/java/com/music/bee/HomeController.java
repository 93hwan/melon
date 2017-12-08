package com.music.bee;

import java.util.List;
import java.util.Locale;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.music.bee.dao.AlbumDAO;
import com.music.bee.dao.MusicDAO;
import com.music.bee.dto.Album_dto;
import com.music.bee.dto.Music_dto;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		MusicDAO MusicDao = sqlSession.getMapper(MusicDAO.class);
		AlbumDAO AlbumDao =sqlSession.getMapper(AlbumDAO.class);
		
		// 최신 앨범
		List<Album_dto> album_lateast = AlbumDao.album_lateast(8);
		
		//국내 top10 챠트
		List<Music_dto> chart_domestic = MusicDao.chart_domestic(10);
		
		//해외 top10 챠트
		List<Music_dto> chart_overseas = MusicDao.chart_overseas(10);
		
		
		for( Music_dto list : chart_domestic) {
			System.out.println(list.getImg());
					}
		
		model.addAttribute("chart_domestic",chart_domestic);
		model.addAttribute("chart_overseas",chart_overseas);
		model.addAttribute("album_lateast", album_lateast);
		
		return "home";
	}

	@RequestMapping("/hi")
	public String hi() {
		return "hi";
	}
}
