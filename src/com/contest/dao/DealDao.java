package com.contest.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.contest.model.DealInfo;
import com.contest.model.UserInfo;
import com.contest.model.WriteInfo;
import com.contest.util.DBUtil;

/**
 * 闲置交易持久层
 * @author Star
 *
 */
public class DealDao {
	private PreparedStatement pst;
	private ResultSet rs;

	public Select_retrunDeal select_top10() {
		List<DealInfo> listDeal = new ArrayList<>();
		List<UserInfo> listUser = new ArrayList<>();
		
		DealInfo deal = null;
		UserInfo user = null;
		
		String sql = "select top 10 d.cid,d.userNumber,d.cName,d.type,d.money,d.remarks,d.savepath ,d.createTime "
				+ " from dealInfo d,userInfo u where d.userNumber = u.stuNumber order by d.createTime desc";
		pst = DBUtil.getpst(sql);
		try {
			rs = pst.executeQuery();
			while(rs.next()){
				deal = new DealInfo(rs.getInt("cid"), rs.getInt("userNumber"), rs.getString("cName"), rs.getString("type"), 
						rs.getFloat("money"), rs.getString("remarks"), rs.getString("savepath"),rs.getDate("createTime"));
				user = new UserInfo(rs.getString("userNumber"));
				listDeal.add(deal);
				listUser.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(rs);
		}
		Select_retrunDeal re = new Select_retrunDeal(listDeal, listUser); 
		return re;
	}
	
	 public List<DealInfo> select_top2(int userNumber) {
		 List<DealInfo> list = new ArrayList<>();
		 DealInfo deal = null;
		 String sql = "select top 2 d.cid,d.userNumber,d.cName,d.type,d.money,d.remarks,d.savepath ,d.createTime "
		 		+ "from dealInfo d,userInfo u where d.userNumber =? order by d.createTime desc";
		 pst = DBUtil.getpst(sql);
		 try {
			pst.setInt(1, userNumber);
			rs = pst.executeQuery();
			while(rs.next()){
				String sb = rs.getString("remarks");
				String substring;
				if (sb.length()>12) {
					substring = sb.substring(0, 12);
				} else {
					substring=sb;
				}
				deal = new DealInfo(rs.getInt("cid"), rs.getInt("userNumber"), rs.getString("cName"), rs.getString("type"), 
						rs.getFloat("money"), rs.getString("remarks"), rs.getString("savepath"),rs.getDate("createTime"));
				
				list.add(deal);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(rs);
		}
		 return list;
	 }
}
