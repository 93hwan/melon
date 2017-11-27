package com.music.bee.dao;

import com.music.bee.dto.Album_dto;
import com.music.bee.dto.Artist_dto;
import com.music.bee.dto.Music_dto;

public interface ArtistDAO {

	public void arti_detail(Artist_dto artiDTO);
	public void arti_album(Album_dto artiDTO);
	public void arti_music(Music_dto artiDTO);
	public void arti_video(Artist_dto artiDTO);
	
}
