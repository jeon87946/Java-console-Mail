package kr.ac.kopo.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {

	public Connection getConnection() {

		Connection conn = null;

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// 2단계
			String url = "jdbc:oracle:thin:@localhost:1521:XE";
			String user = "C##hr";
			String password = "1234";
			conn = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
		
	}
}