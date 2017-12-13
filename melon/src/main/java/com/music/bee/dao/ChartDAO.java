package com.music.bee.dao;

import java.util.List;

import com.music.bee.dto.Music_dto;

public interface ChartDAO {

	public List<Music_dto> recentChart_music() ;
	public List<Music_dto> recentChart(String music_no) ;
	
}
