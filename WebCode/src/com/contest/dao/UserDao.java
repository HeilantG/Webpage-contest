package com.contest.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.contest.model.UserInfo;
import com.contest.util.DBUtil;

/**
 * 用户持久层
 * @author Star
 *
 */
public class UserDao {
	private static PreparedStatement pst;
	private static ResultSet rs;

//	增加
	public static int addUser(UserInfo user) {
		String SQL = "insert into userInfo values (?,?,?,?,?,?,?,?)";
		pst = DBUtil.getpst(SQL);
		int num = 0;
		try {
			pst.setInt(1, user.getStuNumber());
			pst.setString(2, user.getPassword());
			pst.setString(3, user.getStuName());
			pst.setString(4, user.getRealName());
			pst.setInt(5, user.getSex());
			pst.setString(6, user.getTel());
			pst.setString(7, user.getClasses());
			pst.setString(8, user.getDormitory());
			num = pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(null);
		}
		return num;
	}
//	修改
	public static int updadteUser(UserInfo user) {
		String SQL = "upadte userInfo set stuNumber=?,password=?,realName=?,sex=?,tel=?,classes=?,dormitory=? where uid=?";
		pst = DBUtil.getpst(SQL);
		int num = 0;
		try {
			pst.setInt(1, user.getStuNumber());
			pst.setString(2, user.getPassword());
			pst.setString(3, user.getStuName());
			pst.setString(4, user.getRealName());
			pst.setInt(5, user.getSex());
			pst.setString(6, user.getTel());
			pst.setString(7, user.getClasses());
			pst.setString(8, user.getDormitory());
			pst.setInt(9, user.getUid());
			num = pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(null);
		}
		return num;
	}
//	查询一个(登陆)
	public static UserInfo selectOne(UserInfo user) {
		String SQL = "select * from userInfo where stuNumber = ? and password=?";
		pst = DBUtil.getpst(SQL);
		UserInfo u = null;
		try {
			pst.setInt(1, user.getStuNumber());
			pst.setString(2, user.getPassword());
			rs = pst.executeQuery();
			while (rs.next()) {
				u = new  UserInfo(rs.getInt("uid"), rs.getInt("stuNumber"), rs.getString("password"),
						rs.getString("stuName"), rs.getString("realName"), rs.getInt("sex"), rs.getString("tel"),
						rs.getString("classes"), rs.getNString("dormitory"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(rs);
		}
		return u;
	}
}
