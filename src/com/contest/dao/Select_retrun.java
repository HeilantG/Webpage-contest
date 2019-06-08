package com.contest.dao;

import java.util.ArrayList;
import java.util.List;

import com.contest.model.UserInfo;
import com.contest.model.WriteInfo;

public class Select_retrun {

	List<WriteInfo> listwrite ;
	List<UserInfo> listuser ;
	public Select_retrun() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Select_retrun(List<WriteInfo> listwrite, List<UserInfo> listuser) {
		super();
		this.listwrite = listwrite;
		this.listuser = listuser;
	}
	public List<WriteInfo> getListwrite() {
		return listwrite;
	}
	public void setListwrite(List<WriteInfo> listwrite) {
		this.listwrite = listwrite;
	}
	public List<UserInfo> getListuser() {
		return listuser;
	}
	public void setListuser(List<UserInfo> listuser) {
		this.listuser = listuser;
	}
	
}
