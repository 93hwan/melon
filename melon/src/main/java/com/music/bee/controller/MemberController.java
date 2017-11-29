package com.music.bee.controller;


import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
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
	@Autowired
	private BCryptPasswordEncoder encoder;
	
	// 회원가입
	@ResponseBody
	@RequestMapping("/join")
	String join(Member_dto member_dto, 
			@RequestHeader(required = false, value = "referer", defaultValue = "/") String referer) throws Exception {
		logger.debug("member_dto = " + member_dto.toString());
		String securePassword = encoder.encode(member_dto.getPassword());
		logger.debug("password = " + member_dto.getPassword());
		member_dto.setPassword(securePassword);
		memberDAO = sqlSession.getMapper(MemberDAO.class);
		memberDAO.join(member_dto);
		return "/";
	}
	
	//로그인
	@RequestMapping("/login")
	String login(Member_dto member_dto) {
		return "";
	}
	
}
