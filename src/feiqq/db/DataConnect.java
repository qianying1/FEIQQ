package feiqq.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DataConnect {

	private static Connection conn;

	private DataConnect() {

	}

	public static Connection getConnect() {
		try {
			if (null == conn) {
				String driver = "com.mysql.jdbc.Driver";
				String url = "jdbc:mysql://localhost:3306/qqchect";
				Class.forName(driver);
				conn = DriverManager.getConnection(url, "root", "123456");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
}
