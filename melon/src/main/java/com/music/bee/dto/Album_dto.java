package com.music.bee.dto;

import javax.servlet.http.HttpServletRequest;

public class Album_dto {

	private String album_no ;
	private String album_title;
	private String artist_name;
	private String img;
	private String release;
	private int NO ;
	
	
	public Album_dto() {
		super();
	}
	
	public Album_dto(HttpServletRequest request) {
		setAlbum_no(request.getParameter("album_no"));
		setAlbum_title(request.getParameter("album_title"));
		setArtist_name(request.getParameter("artist_name"));
		setImg(request.getParameter("img"));
		setRelease(request.getParameter("release"));
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
	
	
}
