package com.contest.model;
/**
 * 用户表实体类
 * @author Star
 *
 */
public class UserInfo {
	/**
	 * 	uid int primary key identity(1,1),
		stuNumber varchar(10) not null,
		password varchar(16) not null,
		stuName varchar(20) not null,
		realName varchar(10) not null,
		sex int  not null,
		tel varchar(11),
		classes varchar(50),
		dormitory varchar(50)
	 */
	private int uid;
	private int stuNumber;
	private String password;
	private String stuName;
	private String realName;
	private int sex;
	private String tel;
	private String classes;
	private String dormitory;
	public UserInfo() {
		super();
	}
	public UserInfo(int uid, int stuNumber, String password, String stuName, String realName, int sex, String tel,
			String classes, String dormitory) {
		super();
		this.uid = uid;
		this.stuNumber = stuNumber;
		this.password = password;
		this.stuName = stuName;
		this.realName = realName;
		this.sex = sex;
		this.tel = tel;
		this.classes = classes;
		this.dormitory = dormitory;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public int getStuNumber() {
		return stuNumber;
	}
	public void setStuNumber(int stuNumber) {
		this.stuNumber = stuNumber;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getStuName() {
		return stuName;
	}
	public void setStuName(String stuName) {
		this.stuName = stuName;
	}
	public String getRealName() {
		return realName;
	}
	public void setRealName(String realName) {
		this.realName = realName;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getClasses() {
		return classes;
	}
	public void setClasses(String classes) {
		this.classes = classes;
	}
	public String getDormitory() {
		return dormitory;
	}
	public void setDormitory(String dormitory) {
		this.dormitory = dormitory;
	}
	@Override
	public String toString() {
		return "UserInfo [uid=" + uid + ", stuNumber=" + stuNumber + ", password=" + password + ", stuName=" + stuName
				+ ", realName=" + realName + ", sex=" + sex + ", tel=" + tel + ", classes=" + classes + ", dormitory="
				+ dormitory + "]";
	}
}
