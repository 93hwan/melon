package com.music.bee.dao;

import java.util.List;

import com.music.bee.dto.Music_dto;

public interface MusicDAO {
	public List<Music_dto> chart_latest(int a);
}
