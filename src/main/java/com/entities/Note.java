package com.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="notes")
public class Note {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String title;
	@Column(length = 1500)
	private String content;
	private Date adddedDate;
	
	public Note() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Note(String title, String content, Date adddedDate) {
		super();
		this.title = title;
		this.content = content;
		this.adddedDate = adddedDate;
	}
	public int getId() {
		return id;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getAdddedDate() {
		return adddedDate;
	}
	public void setAdddedDate(Date adddedDate) {
		this.adddedDate = adddedDate;
	}
	
	
}
