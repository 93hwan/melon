package com.music.bee.dao;

import java.util.List;

import com.music.bee.dto.ArtistComment_dto;
import com.music.bee.dto.Artist_dto;
import com.music.bee.dto.Music_dto;

public interface ArtistDAO {

	public List<Artist_dto> artist_static(String ARTIST_NO);
	public List<Artist_dto> arti_detail(String ARTIST_NO);
	public List<Artist_dto> arti_albumList(String ALBUM_NO);
	public List<Music_dto> arti_musicList(String artist_name);
	public List<ArtistComment_dto> arti_Comment(String artist_no);
	public List<ArtistComment_dto> arti_Comment_send(String artist_no);	//댓글 저장
	
	//album페이지 DAO
	public void album_main(String album_no);
	public void album_musicList(String album_title);
	
}
