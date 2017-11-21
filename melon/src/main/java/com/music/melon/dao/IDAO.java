package com.music.melon.dao;

public interface IDAO {

	
	public void album(String album_num,String album_title,String artist_name,String album_img,String relDate);
	public void artist(String artist_num,String artist,String arti_img,String etc,String award_record);
	public void music(String music_num,String album_title,String title,String artistName,String genre, String video, String lyrics, String relDate);
}

