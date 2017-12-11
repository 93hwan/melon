package com.music.bee.dto;

import javax.servlet.http.HttpServletRequest;

public class Album_dto {

	private String album_no ;
	private String album_title;
	private String artist_name;
	private String img;
	private String release;
	private int NO ;
	private String artist_no;
	private String music_no; 
	
	
	
	public Album_dto(HttpServletRequest request) {
		setAlbum_no(request.getParameter("album_no"));
		setAlbum_title(request.getParameter("album_title"));
		setArtist_name(request.getParameter("artist_name"));
		setImg(request.getParameter("img"));
		setRelease(request.getParameter("release"));
		setNO(Integer.parseInt(request.getParameter("NO")));
		setArtist_no(request.getParameter("artist_no"));
		setMusic_no(request.getParameter("music_no"));
	}
	
	public String getAlbum_no() {
		return album_no;
	}
	public void setAlbum_no(String album_no) {
		this.album_no = album_no;
	}
	public String getAlbum_title() {
		return album_title;
	}
	public void setAlbum_title(String album_title) {
		this.album_title = album_title;
	}
	public String getArtist_name() {
		return artist_name;
	}
	public void setArtist_name(String artist_name) {
		this.artist_name = artist_name;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getRelease() {
		return release;
	}
	public void setRelease(String release) {
		this.release = release;
	}
	public int getNO() {
		return NO;
	}
	public void setNO(int nO) {
		NO = nO;
	}

	public String getArtist_no() {
		return artist_no;
	}

	public void setArtist_no(String artist_no) {
		this.artist_no = artist_no;
	}

	public String getMusic_no() {
		return music_no;
	}

	public void setMusic_no(String music_no) {
		this.music_no = music_no;
	}

	public Album_dto() {
		super();
	}

	@Override
	public String toString() {
		return "Album_dto [album_no=" + album_no + ", album_title=" + album_title + ", artist_name=" + artist_name
				+ ", img=" + img + ", release=" + release + ", NO=" + NO + ", artist_no=" + artist_no + ", music_no="
				+ music_no + "]";
	}


	
}
