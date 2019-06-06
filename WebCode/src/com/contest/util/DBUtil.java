package com.contest.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * 连接数据库
 * 
 * @author Star
 *
 */
public class DBUtil {
	private static Connection conn;
	private static PreparedStatement pst;
	
	public static PreparedStatement getpst(String sql) {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=contest", "sa", "123456");
			pst = conn.prepareStatement(sql);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return pst;
	}

	public static void close(ResultSet rs) {
		try {
			if (rs != null)rs.close();
			if (pst != null)pst.close();
			if (conn != null)conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
