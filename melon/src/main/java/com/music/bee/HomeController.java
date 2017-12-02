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

import com.music.bee.dao.MusicDAO;
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
		
		
		//최신 챠트
		List<Music_dto> chart_latest = MusicDao.chart_latest(10);
		
		model.addAttribute("chart_latest",chart_latest);
		
		return "home";
	}

	@RequestMapping("/hi")
	public String hi() {
		return "hi";
	}
}
