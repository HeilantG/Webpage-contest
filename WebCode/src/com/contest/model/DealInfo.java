package com.contest.model;
/**
 * 闲置交易表实体类
 * @author Star
 *
 */


public class DealInfo {
	/**
	 * 	cid int primary key identity(1001,1),
		userNumber int REFERENCES userInfo(uid),
		cName varchar(50) not null,
		type varchar(20),
		money float not null,
		remarks varchar(255),
		savepath varchar(255),
	 */
	private int cid;
	private int userNumber;
	private String cName;
	private String type;
	private float money;
	private String remarks;
	private String savepath;
	public DealInfo() {
		super();
	}
	public DealInfo(int cid, int userNumber, String cName, String type, float money, String remarks, String savepath) {
		super();
		this.cid = cid;
		this.userNumber = userNumber;
		this.cName = cName;
		this.type = type;
		this.money = money;
		this.remarks = remarks;
		this.savepath = savepath;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public int getUserNumber() {
		return userNumber;
	}
	public void setUserNumber(int userNumber) {
		this.userNumber = userNumber;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public float getMoney() {
		return money;
	}
	public void setMoney(float money) {
		this.money = money;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public String getSavepath() {
		return savepath;
	}
	public void setSavepath(String savepath) {
		this.savepath = savepath;
	}
	@Override
	public String toString() {
		return "DealInfo [cid=" + cid + ", userNumber=" + userNumber + ", cName=" + cName + ", type=" + type
				+ ", money=" + money + ", remarks=" + remarks + ", savepath=" + savepath + "]";
	}
	
	
}
