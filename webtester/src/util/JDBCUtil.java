package util;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class JDBCUtil {

	public static Connection getConnection() {
		Connection con = null;
		
		Properties p = new Properties();
		try {
			
			// 상대경로가 아닌 절대경로로 하는 것이 안전 -> 서버의 경우 서버 내의 절대 경로 사용하기
			p.load(new FileInputStream("D:/lib/dbinfo.txt/"));
			
			String driver = p.getProperty("_driver");
			String url = p.getProperty("_url");
			String user = p.getProperty("_user");
			String pw = p.getProperty("_pw");
			
			Class.forName(driver);
			
			con = DriverManager.getConnection(url,user,pw);
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return con;
	}

	public static void close(Connection con , Statement st , ResultSet rs ) {
	
		try {
			if(rs != null) rs.close();
			if(st != null) st.close();
			if(con != null) con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	
}





