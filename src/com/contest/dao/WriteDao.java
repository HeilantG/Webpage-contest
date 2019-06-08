package com.contest.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.contest.model.UserInfo;
import com.contest.model.WriteInfo;
import com.contest.util.DBUtil;

/**
 * 贴吧持久层
 * 
 * @author Star
 *
 */
public class WriteDao {
	private static PreparedStatement pst;
	private static ResultSet rs;

	public int add(UserInfo user, WriteInfo write) {
		String SQL = "insert into writeInfo values (?,?,getdate(),?)";
		pst = DBUtil.getpst(SQL);
		int num = 0;
		try {
			pst.setInt(1, user.getStuNumber());
			pst.setString(2, write.getTitle());
			pst.setString(3, write.getContent());
			num = pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(null);
		}
		return num;
	}

	public int delete(WriteInfo write) {
		String SQL = "delete * from WriteInfo where wid=?";
		pst = DBUtil.getpst(SQL);
		int num = 0;
		try {
			pst.setInt(1, write.getWid());
			num = pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(null);
		}
		return num;
	}

	/**
	 * 查询最近两条帖子
	 * select top 10 w.wid , w.title , u.stuName , w.creatTime , w.content from
	 * userInfo u,writeInfo w where u.stuNumber= 2018104396 order by w.creatTime
	 * DESC
	 */

	 public static List<WriteInfo> find_top2Bytime(int userNumber) {
		 List<WriteInfo> list = new ArrayList<>();
		 WriteInfo write = null;
		 String sql = "select w.wid , w.title , w.creatTime , w.content from writeInfo w "
		 		+ " where w.userNumber =? order by w.creatTime desc";
		 pst = DBUtil.getpst(sql);
		 try {
			pst.setInt(1, userNumber);
			rs = pst.executeQuery();
			while(rs.next()){
				write = new WriteInfo(rs.getInt("wid"), rs.getInt("userNumber"), 
						rs.getString("title"), rs.getDate("creatTime"), rs.getString("content"));
				list.add(write);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(rs);
		}
		 return null;
	 }
	/**
	 * 查询全部Byid
	 * 
	 * 
	 * select top 10 w.wid , w.title , u.stuName , w.creatTime , w.content from
	 * userInfo u,writeInfo w where u.stuNumber= 2018104396 order by w.creatTime
	 * DESC
	 */

	public static Select_retrun find_top10() {
		List<WriteInfo> listwrite = new ArrayList<>();
		List<UserInfo> listuser = new ArrayList<>();
		WriteInfo write = null;
		UserInfo user = null;
		String sql = "select top 10 w.wid ,w.userNumber, w.title , u.stuName , w.creatTime , w.content "
				+ " from userInfo u,writeInfo w where u.stuNumber=w.userNumber order by w.creatTime DESC";
		pst = DBUtil.getpst(sql);
		try {
			rs = pst.executeQuery();
			while (rs.next()) {
				write = new WriteInfo(rs.getInt("wid"), rs.getInt("userNumber"), rs.getString("title"),
						rs.getDate("creatTime"), rs.getString("content"));
				user = new UserInfo(rs.getString("stuName"));
				listwrite.add(write);
				listuser.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(rs);
		}
		Select_retrun re = new Select_retrun(listwrite, listuser);
		
		return re;
	}
}
