package com.music.bee.dto;

import javax.servlet.http.HttpServletRequest;

public class Artist_dto {

	private String artist_no;
	private String artist_name;
	private String img;
	private String etc;
	private String award_record;
	private String arti_infotitle;
	private String arti_infocontent;
	private int no;
	private String album_no;
	private String music_no;
	
	
	public Artist_dto() {
		// TODO Auto-generated constructor stub
	}
	
	public Artist_dto(HttpServletRequest request ){
		
		setArtist_no(request.getParameter("artist_no"));
		setArtist_name(request.getParameter("artist_name"));
		setImg(request.getParameter("img"));
		setEtc(request.getParameter("etc"));
		setAward_record(request.getParameter("award_record"));
		setNo(Integer.parseInt(request.getParameter("no")));
		setArti_infotitle(request.getParameter("arti_infotitle"));
		setArti_infocontent(request.getParameter("arti_infocontent"));
		setAlbum_no(request.getParameter("album_no"));
		setMusic_no(request.getParameter("music_no"));
	}
	
	public String getArti_infotitle() {
		return arti_infotitle.replace(",", "<br>");
	}

	public void setArti_infotitle(String arti_infotitle) {
		this.arti_infotitle = arti_infotitle;
	}

	public String getArti_infocontent() {
		return arti_infocontent.replace(",", "<br>");
	}

	public void setArti_infocontent(String arti_infocontent) {
		this.arti_infocontent = arti_infocontent;
	}

	public String getArtist_no() {
		return artist_no;
	}
	public void setArtist_no(String artist_no) {
		this.artist_no = artist_no;
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
	public String getEtc() {
		return etc;
	}
	public void setEtc(String etc) {
		this.etc = etc;
	}
	public String getAward_record() {
		return award_record;
	}
	public void setAward_record(String award_record) {
		this.award_record = award_record;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}

	public String getAlbum_no() {
		return album_no;
	}

	public void setAlbum_no(String album_no) {
		this.album_no = album_no;
	}

	public String getMusic_no() {
		return music_no;
	}

	public void setMusic_no(String music_no) {
		this.music_no = music_no;
	}

	@Override
	public String toString() {
		return "Artist_dto [artist_no=" + artist_no + ", artist_name=" + artist_name + ", img=" + img + ", etc=" + etc
				+ ", award_record=" + award_record + ", arti_infotitle=" + arti_infotitle + ", arti_infocontent="
				+ arti_infocontent + ", no=" + no + ", album_no=" + album_no + ", music_no=" + music_no + "]";
	}


	
	
	
	
}
