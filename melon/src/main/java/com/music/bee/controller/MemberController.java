package com.music.bee.controller;

import java.util.Locale;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.music.bee.HomeController;
import com.music.bee.dao.MemberDAO;
import com.music.bee.dto.Member_dto;

@Controller
@RequestMapping("/member")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	private MemberDAO memberDAO;

	@Autowired
	private SqlSession sqlSession;
	
	// 회원가입
	@ResponseBody
	@RequestMapping("/join")
	String join(Member_dto member_dto, 
			@RequestHeader(required = false, value = "referer", defaultValue = "/") String referer) throws Exception {
		if (member_dto != null)
			memberDAO.join(member_dto);
		return referer;
	}
	
}
