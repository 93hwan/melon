package com.music.bee.dto;

import javax.servlet.http.HttpServletRequest;

public class Artist_dto {

	private String artist_no;
	private String artist_name;
	private String img;
	private String etc;
	private String award_record;
	private int no;
	
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

	@Override
	public String toString() {
		return "Artist_dto [artist_no=" + artist_no + ", artist_name=" + artist_name + ", img=" + img + ", etc=" + etc
				+ ", award_record=" + award_record + ", no=" + no + "]";
	}
	
	
	
	
}
