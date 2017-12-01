package com.music.bee.dto;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;

public class ArtistComment_dto {
	
	private int reply_artist_no;
	private String artist_no;
	private String member_id;
	private String reply;
	private Timestamp date;
	
	public ArtistComment_dto() {
	}
	
	public ArtistComment_dto(HttpServletRequest request) {
		setReply_artist_no(Integer.parseInt(request.getParameter("reply_artist_no")));
		setArtist_no(request.getParameter("artist_no"));
		setMember_id(request.getParameter("reply_artist_no"));
		setReply(request.getParameter("reply_artist_no"));
	}

	public int getReply_artist_no() {
		return reply_artist_no;
	}

	public void setReply_artist_no(int reply_artist_no) {
		this.reply_artist_no = reply_artist_no;
	}

	public String getArtist_no() {
		return artist_no;
	}

	public void setArtist_no(String artist_no) {
		this.artist_no = artist_no;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getReply() {
		return reply;
	}

	public void setReply(String reply) {
		this.reply = reply;
	}

	public Timestamp getDate() {
		return date;
	}

	public void setDate(Timestamp date) {
		this.date = date;
	}
	
	
}
