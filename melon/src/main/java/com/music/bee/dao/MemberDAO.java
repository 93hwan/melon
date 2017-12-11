package com.music.bee.dao;

import java.util.List;

import com.music.bee.dto.Member_dto;

public interface MemberDAO {
	public void join(Member_dto member_dto);
	public int check(String member_id);
	public List<Member_dto> info(String member_id);
}
