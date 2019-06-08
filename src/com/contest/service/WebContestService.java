package com.contest.service;

import java.util.List;

import com.contest.dao.Select_retrun;
import com.contest.dao.UserDao;
import com.contest.dao.WriteDao;
import com.contest.model.UserInfo;
import com.contest.model.WriteInfo;

/**
 * 业务层
 * @author Star
 *
 */
public class WebContestService {
	// 调用dao层对象
	UserDao udao = new UserDao();
	WriteDao wdao = new WriteDao();
	/**
	 * 登陆
	 * @param user
	 * @return
	 */
	public UserInfo login(UserInfo user) {
		
		return udao.selectOne(user);
	}
	/**
	 * 注册用户
	 * @param user
	 * @return
	 */
	public int add(UserInfo user) {
		return udao.addUser(user);
	}
	/**
	 * 查询全部帖子
	 */
	public Select_retrun find_top10(){
		 return wdao.find_top10();
	}
	
	/**
	 * 查询最近两条帖子
	 * @return 
	 */
	public List<WriteInfo> find_top2Bytime(int userNumber){
		
		return wdao.find_top2Bytime(userNumber);
	}
	
	
}
