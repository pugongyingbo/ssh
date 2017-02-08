package com.py.beans;

import java.util.Date;

/**
 * Info entity. @author MyEclipse Persistence Tools
 */

public class Info implements java.io.Serializable {

	private static final long serialVersionUID = 1L;

	private Integer iid;
	private String informationtype;
	private String topic;
	private String datetime;
	private String author;
	private String content;

	/** default constructor */
	public Info() {
	}

	/** full constructor */
	
	public Info(String informationtype, String topic, String datetime,
			String author, String content) {
		this.informationtype = informationtype;
		this.topic = topic;
		this.datetime = datetime;
		this.author = author;
		this.content = content;
	}

	// Property accessors

	public Integer getIid() {
		return iid;
	}

	public void setIid(Integer iid) {
		this.iid = iid;
	}

	public String getInformationtype() {
		return informationtype;
	}

	public void setInformationtype(String informationtype) {
		this.informationtype = informationtype;
	}

	public String getTopic() {
		return topic;
	}

	public void setTopic(String topic) {
		this.topic = topic;
	}

	public String getDatetime() {
		return datetime;
	}

	public void setDatetime(String datetime) {
		this.datetime = datetime;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

}