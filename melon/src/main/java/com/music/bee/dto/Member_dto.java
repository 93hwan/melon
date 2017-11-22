package com.music.bee.dto;

import javax.servlet.http.HttpServletRequest;

public class Member_dto {
	 private int member_no;
	 private String member_id;
	 private String password;
	 private String name;
	 private String birth;
	 private String email;
	 private String phone;
	 private String status;
	 private String authority;
	 private String enabled;
	 private String reg;
	 
	public Member_dto() {
		super();
	}
	
	
	public Member_dto(HttpServletRequest request) {
		setMember_id(request.getParameter("member_id"));
		setPassword(request.getParameter("password"));
		setName(request.getParameter("name"));
		setBirth(request.getParameter("birth"));
		setEmail(request.getParameter("email"));
		setPhone(request.getParameter("phone"));
	}


	@Override
	public String toString() {
		return "Member_dto [member_no=" + member_no + ", member_id=" + member_id + ", password=" + password + ", name="
				+ name + ", birth=" + birth + ", email=" + email + ", phone=" + phone + ", status=" + status
				+ ", authority=" + authority + ", enabled=" + enabled + ", reg=" + reg + "]";
	}


	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
	public String getEnabled() {
		return enabled;
	}
	public void setEnabled(String enabled) {
		this.enabled = enabled;
	}
	public String getReg() {
		return reg;
	}
	public void setReg(String reg) {
		this.reg = reg;
	}

}
