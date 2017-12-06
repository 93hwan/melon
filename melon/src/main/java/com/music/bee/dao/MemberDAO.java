package com.music.bee.dao;

import com.music.bee.dto.Member_dto;

public interface MemberDAO {
	public void join(Member_dto member_dto);
	public int check(String member_id);
}
