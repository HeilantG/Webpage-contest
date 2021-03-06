package com.contest.service;

import java.util.List;

import com.contest.dao.DealDao;
import com.contest.dao.Select_retrun;
import com.contest.dao.Select_retrunDeal;
import com.contest.dao.UserDao;
import com.contest.dao.WriteDao;
import com.contest.model.DealInfo;
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
	DealDao dao = new DealDao();
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
	
	/**
	 * 添加帖子
	 */
	public int addtext(int stuNumber,WriteInfo write) {
		return wdao.add(stuNumber, write);
	}
	/**
	 * 查询闲置交易帖子
	 */
	public Select_retrunDeal select_top10(){
		 return dao.select_top10();
	}
	public List<DealInfo> select_top2(int userNumber){
		
		return dao.select_top2(userNumber);
	}
	
}
