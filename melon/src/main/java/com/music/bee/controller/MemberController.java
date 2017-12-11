package com.music.bee.controller;





import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
	private BCryptPasswordEncoder encoder;
	@Autowired
	private SqlSession sqlSession;
	
	// 회원가입
	@ResponseBody
	@RequestMapping("/join")
	String join(UsernamePasswordAuthenticationToken token,Member_dto member_dto,
			@RequestHeader(required = false, value = "referer", defaultValue = "/") String referer) throws Exception {
		logger.debug("member_dto = " + member_dto.toString());
		if (token != null) {
			throw new Exception("이미 로그인된 상태입니다.");
		}
		String securePassword = encoder.encode(member_dto.getPassword());
		logger.debug("password = " + member_dto.getPassword());
		member_dto.setPassword(securePassword);
		logger.debug("암호화 password = " + securePassword);
		memberDAO = sqlSession.getMapper(MemberDAO.class);
		memberDAO.join(member_dto);
		return referer;
	}
	
	@ResponseBody
	@RequestMapping(value = "/check", method = RequestMethod.POST)
	String check(@RequestParam(value = "member_id") String member_id) {
		memberDAO = sqlSession.getMapper(MemberDAO.class);
		boolean result = memberDAO.check(member_id)==0;
		return String.valueOf(result);
	}
	
	@RequestMapping("/mypage")
	String mypage(UsernamePasswordAuthenticationToken token, Model m) {
		memberDAO = sqlSession.getMapper(MemberDAO.class);
		List<Member_dto> list= memberDAO.info(token.getName());
		m.addAttribute("member_dto", list);
		return "mypage";
	}
	
	@ResponseBody
	@RequestMapping("/edit")
	String edit(UsernamePasswordAuthenticationToken token, Member_dto member_dto, String new_password) {
			memberDAO = sqlSession.getMapper(MemberDAO.class);
			String origin = memberDAO.getPassword(token.getName());
			logger.debug("edit로 들어옴");
			boolean result = encoder.matches(member_dto.getPassword(), origin);
			if(result) {
				memberDAO.pwChange(encoder.encode(new_password), token.getName());
			}
		return String.valueOf(result);
	}
}
