package com.contest.model;
/**
 * 贴吧表实体类
 * @author Star
 *
 */
import java.sql.Date;
public class WriteInfo {
	/**
	 * 	wid int primary key identity(101,1),
		userNumber int REFERENCES userInfo(uid),
		title varchar(50) not null,
		creatTime DateTime,
		content varchar(255)
	 */
	private int wid;
	private int userNumber;
	private String title;
	private Date creatTime;
	private String content;
	public WriteInfo() {
		super();
	}
	public WriteInfo(int wid, int userNumber, String title, Date creatTime, String content) {
		super();
		this.wid = wid;
		this.userNumber = userNumber;
		this.title = title;
		this.creatTime = creatTime;
		this.content = content;
	}
	public int getWid() {
		return wid;
	}
	public void setWid(int wid) {
		this.wid = wid;
	}
	public int getUserNumber() {
		return userNumber;
	}
	public void setUserNumber(int userNumber) {
		this.userNumber = userNumber;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getCreatTime() {
		return creatTime;
	}
	public void setCreatTime(Date creatTime) {
		this.creatTime = creatTime;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@Override
	public String toString() {
		return "DealInfo [wid=" + wid + ", userNumber=" + userNumber + ", title=" + title + ", creatTime=" + creatTime
				+ ", content=" + content + "]";
	}
}
