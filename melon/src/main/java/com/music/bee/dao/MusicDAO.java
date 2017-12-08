package com.music.bee.dao;

import java.util.List;

import com.music.bee.dto.Album_dto;
import com.music.bee.dto.Music_dto;

public interface MusicDAO {
	public List<Music_dto> chart_domestic(int num);
	public List<Music_dto> chart_overseas(int num);
	public List<Album_dto> lateast_album(int num);
}
