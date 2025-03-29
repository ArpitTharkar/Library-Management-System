package com.library.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class fetch1
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int bookid;
	private String bookname;
	private String authorname;
	private String category;
	private String available;
	private String status;
	public int getBookid() {
		return bookid;
	}
	public void setBookid(int bookid) {
		this.bookid = bookid;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getAuthorname() {
		return authorname;
	}
	public void setAuthorname(String authorname) {
		this.authorname = authorname;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getAvailable() {
		return available;
	}
	public void setAvailable(String available) {
		this.available = available;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public fetch1(int bookid, String bookname, String authorname, String category, String available, String status) {
		super();
		this.bookid = bookid;
		this.bookname = bookname;
		this.authorname = authorname;
		this.category = category;
		this.available = available;
		this.status = status;
	}
	public fetch1() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "fetch [bookid=" + bookid + ", bookname=" + bookname + ", authorname=" + authorname + ", category="
				+ category + ", available=" + available + ", status=" + status + "]";
	}
	

}
