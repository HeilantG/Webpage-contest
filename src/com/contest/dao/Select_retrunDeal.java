package com.contest.dao;

import java.util.List;

import com.contest.model.DealInfo;
import com.contest.model.UserInfo;

public class Select_retrunDeal {
	List<DealInfo> listDeal;
	List<UserInfo> listUser;
	public Select_retrunDeal() {
		super();
	}
	public Select_retrunDeal(List<DealInfo> listDeal, List<UserInfo> listUser) {
		super();
		this.listDeal = listDeal;
		this.listUser = listUser;
	}
	public List<DealInfo> getListDeal() {
		return listDeal;
	}
	public void setListDeal(List<DealInfo> listDeal) {
		this.listDeal = listDeal;
	}
	public List<UserInfo> getListUser() {
		return listUser;
	}
	public void setListUser(List<UserInfo> listUser) {
		this.listUser = listUser;
	}
	
	
}
