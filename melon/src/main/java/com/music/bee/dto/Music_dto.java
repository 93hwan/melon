package com.music.bee.dto;

import javax.servlet.http.HttpServletRequest;

public class Music_dto {

	private String music_no;
	private String album_title;
	private String title;
	private String artist_name;
	private String genre;
	private String video;
	private String lyrics;
	private String reg;
	private int play_count;
	private int no;
	private String img;
	private String album_no;
	private String artist_no;
	


	public Music_dto() {

	}
	
	
	public Music_dto(HttpServletRequest request){
		setMusic_no(request.getParameter("music_no"));
		setAlbum_title(request.getParameter("album_title"));
		setTitle(request.getParameter("title"));
		setArtist_name(request.getParameter("artist_name"));
		setGenre(request.getParameter("genre"));
		setVideo(request.getParameter("video"));
		setLyrics(request.getParameter("lyrics"));
		setReg(request.getParameter("reg"));
		setPlay_count(Integer.parseInt(request.getParameter("play_count")));
		setNo(Integer.parseInt(request.getParameter("no")));
		setAlbum_no(request.getParameter("album_no"));
		setMusic_no(request.getParameter("music_no"));
	}

	public void setMusic_no(String music_no) {
		this.music_no = music_no;
	}

	public void setAlbum_title(String album_title) {
		this.album_title = album_title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setArtist_name(String artist_name) {
		this.artist_name = artist_name;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public void setVideo(String video) {
		this.video = video;
	}

	public void setLyrics(String lyrics) {
		this.lyrics = lyrics;
	}

	public void setReg(String reg) {
		this.reg = reg;
	}

	public void setPlay_count(int play_count) {
		this.play_count = play_count;
	}

	public void setNo(int no) {
		this.no = no;
	}


	public String getMusic_no() {
		return music_no;
	}


	public String getAlbum_title() {
		return album_title;
	}


	public String getTitle() {
		String a = title.replace("곡명 ", "");
		if(a.length()>15) {
			String title = a.substring(0,15)+"...";
			return title;
		}
		return a;
	}


	public String getArtist_name() {
		String name = artist_name;
		if(name.length() > 10){
			String artist = name.substring(0,10)+"..."; 
			return artist;
		}
		return name;
	}


	public String getGenre() {
		return genre;
	}


	public String getVideo() {
		return video;
	}


	public String getLyrics() {
		return lyrics;
	}


	public String getReg() {
		return reg;
	}


	public int getPlay_count() {
		return play_count;
	}


	public int getNo() {
		return no;
	}
	
	public String getImg() {
		return img;
	}


	public void setImg(String img) {
		this.img = img;
	}


	public String getAlbum_no() {
		return album_no;
	}


	public void setAlbum_no(String album_no) {
		this.album_no = album_no;
	}


	public String getArtist_no() {
		return artist_no;
	}


	public void setArtist_no(String artist_no) {
		this.artist_no = artist_no;
	}

	
	
	
	
}
