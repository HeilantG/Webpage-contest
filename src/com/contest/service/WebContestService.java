package com.contest.service;

import com.contest.dao.UserDao;
import com.contest.model.UserInfo;

/**
 * 业务层
 * @author Star
 *
 */
public class WebContestService {
	// 调用dao层对象
	UserDao dao = new UserDao();
	
	public UserInfo login(UserInfo user) {
		
		return dao.selectOne(user);
	}

	public int add(UserInfo user) {
		return dao.addUser(user);
	}
	
	
}
