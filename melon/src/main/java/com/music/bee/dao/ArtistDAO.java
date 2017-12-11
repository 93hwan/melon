package com.music.bee.dao;

import java.util.List;

import com.music.bee.dto.Album_dto;
import com.music.bee.dto.ArtistComment_dto;
import com.music.bee.dto.Artist_dto;
import com.music.bee.dto.Music_dto;

public interface ArtistDAO {

	public List<Artist_dto> artist_static(String artist_no);
	public List<Artist_dto> arti_detail(String artist_no);
	public List<Album_dto> arti_albumList(String album_no);
	public List<Music_dto> arti_musicList(String artist_no);
	public List<ArtistComment_dto> arti_comment(String artist_no);
	public void arti_Comment_send(String artist_no);	//댓글 저장
	
	
	
}
