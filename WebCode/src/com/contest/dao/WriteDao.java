package com.contest.dao;

import java.sql.PreparedStatement;
import java.sql.SQLException;

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

	public static int add(UserInfo user,WriteInfo write) {
		String SQL = "insert into writeInfo values (?,?,getdate(),?)";
		pst = DBUtil.getpst(SQL);
		int num = 0;
		try {
			pst.setInt(1, user.getStuNumber());
			pst.setString(2, write.getTitle());
			pst.setString(3, write.getContent());
			num = pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(null);
		}
		return num;
	}
	public static int delete(WriteInfo write) {
		String SQL = "delete * from WriteInfo where wid=?";
		pst = DBUtil.getpst(SQL);
		int num = 0;
		try {
			pst.setInt(1, write.getWid());
			num = pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(null);
		}
		return num;
	}
}
