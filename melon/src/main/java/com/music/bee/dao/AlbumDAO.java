package com.music.bee.dao;

import java.util.List;

import com.music.bee.dto.Album_dto;
import com.music.bee.dto.Music_dto;

public interface AlbumDAO {

	//album페이지 DAO
		public List<Album_dto> album_main(String album_no);
		public List<Music_dto> album_musicList(String album_title);
		public List<Album_dto> album_lateast(int num);
}
