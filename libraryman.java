package com.library.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class libraryman 
{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String name;
	private String lname;
	private String email;
	private String phone;
	private String password;
	private String cpassword;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCpassword() {
		return cpassword;
	}
	public void setCpassword(String cpassword) {
		this.cpassword = cpassword;
	}
	public libraryman(int id, String name, String lname, String email, String phone, String password,
			String cpassword) {
		super();
		this.id = id;
		this.name = name;
		this.lname = lname;
		this.email = email;
		this.phone = phone;
		this.password = password;
		this.cpassword = cpassword;
	}
	public libraryman() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "libraryman [id=" + id + ", name=" + name + ", lname=" + lname + ", email=" + email + ", phone=" + phone
				+ ", password=" + password + ", cpassword=" + cpassword + "]";
	}
	
	
	

}
