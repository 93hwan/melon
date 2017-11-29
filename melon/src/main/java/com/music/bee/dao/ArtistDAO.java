package com.music.bee.dao;

import com.music.bee.dto.Album_dto;
import com.music.bee.dto.ArtistComment_dto;
import com.music.bee.dto.Artist_dto;
import com.music.bee.dto.Music_dto;

public interface ArtistDAO {

	public void artist_static(Artist_dto artiDTO);
	public void arti_detail(Artist_dto artiDTO);
	public void arti_albumList(Album_dto albumDTO);
	public void arti_musicList(Music_dto musicDTO);
	public void arti_Comment(ArtistComment_dto commentDTO);
	public void arti_Comment_send(ArtistComment_dto commentDTO);	//댓글 저장
	
}
