package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class DBMainDAO implements MainDAO{

	private String jdbc_driver = "com.mysql.jdbc.Driver";
	private String jdbc_url = "jdbc:mysql://localhost:3306/project?characterEncoding=utf8&&serverTimezone=UTC";
	private Connection conn;
	private Statement stmt;
	
	private void connect() {
		try {
			Class.forName(jdbc_driver);
			conn = DriverManager.getConnection(jdbc_url, "user_id", "p2pproject");
			stmt = conn.createStatement();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	private void disconnect() {
		
		try {
			stmt.close();
			conn.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	@Override
	public ArrayList<Integer> count(String id) {
		// TODO Auto-generated method stub
		ArrayList<Integer> list=new ArrayList<>();
		String sql1 = "SELECT count(*) count FROM language where id=?";
		String sql2 = "SELECT count(*) count FROM license where id=?";;
		String sql3 = "SELECT count(*) count FROM award where id=?";
		String sql4 = "SELECT count(*) count FROM career where id=?";
		String sql5 = "SELECT count(*) count FROM service where id=?";
		
		try {
			connect();
			PreparedStatement pstmt = conn.prepareStatement(sql1);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			list.add(rs.getInt("count"));
			rs.close();
			pstmt.close();
			
			pstmt = conn.prepareStatement(sql2);
			pstmt.setString(1, id);
			ResultSet rs2 = pstmt.executeQuery();
			rs2.next();
			list.add(rs2.getInt("count"));
			rs2.close();
			pstmt.close();
			
			pstmt = conn.prepareStatement(sql3);
			pstmt.setString(1, id);
			ResultSet rs3 = pstmt.executeQuery();
			rs3.next();
			list.add(rs3.getInt("count"));
			rs3.close();
			pstmt.close();
			
			pstmt = conn.prepareStatement(sql4);
			pstmt.setString(1, id);
			ResultSet rs4 = pstmt.executeQuery();
			rs4.next();
			list.add(rs4.getInt("count"));
			rs4.close();
			pstmt.close();
			
			pstmt = conn.prepareStatement(sql5);
			pstmt.setString(1, id);
			ResultSet rs5 = pstmt.executeQuery();
			rs5.next();
			list.add(rs5.getInt("count"));
			rs5.close();
			pstmt.close();
			
			disconnect();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

}
