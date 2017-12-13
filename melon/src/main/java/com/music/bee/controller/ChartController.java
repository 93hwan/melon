package com.music.bee.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.music.bee.dao.ChartDAO;

@Controller
@RequestMapping("/chart")
public class ChartController {

	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/chart_recent")
	public String recent_chart(Model model, String music_no){
		
		System.out.println("Chart Page Started");
		ChartDAO chartDao = sqlSession.getMapper(ChartDAO.class);
		
		model.addAttribute("recentChart_music",chartDao.recentChart_music());
//		model.addAttribute("recentChart",chartDao.recentChart(music_no));
		
		System.out.println("Chart Page 넘어갔니");
		
		return "chart_recent";
	}
	
	
}
