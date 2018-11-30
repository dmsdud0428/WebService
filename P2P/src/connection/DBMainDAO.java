package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class DBMainDAO implements MainDAO{

	private String jdbc_driver = "com.mysql.jdbc.Driver";
	private String jdbc_ur1 = "jdbc:mysql://localhost:3306/project?characterEncoding=utf8&&serverTimezone=UTC";
	private Connection conn;
	private Statement stmt;
	
	private void connect() {
		try {
			Class.forName(jdbc_driver);
			conn = DriverManager.getConnection(jdbc_ur1, "user_id", "p2pproject");
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
		String sql1 = "SELECT count(*) count FROM language where id='"+id+"'";
		String sql2 = "SELECT count(*) count FROM license where id='"+id+"'";;
		String sql3 = "SELECT count(*) count FROM award where id='"+id+"'";
		String sql4 = "SELECT count(*) count FROM career where id='"+id+"'";
		String sql5 = "SELECT count(*) count FROM service where id='"+id+"'";
		
		try {
			connect();
			ResultSet rs=stmt.executeQuery(sql1);
			rs.next();
			list.add(rs.getInt("count"));
			rs.close();
			
			ResultSet rs2=stmt.executeQuery(sql2);
			rs2.next();
			list.add(rs2.getInt("count"));
			rs2.close();
			
			ResultSet rs3=stmt.executeQuery(sql3);
			rs3.next();
			list.add(rs3.getInt("count"));
			rs3.close();
			
			ResultSet rs4=stmt.executeQuery(sql4);
			rs4.next();
			list.add(rs4.getInt("count"));
			rs4.close();
			
			ResultSet rs5=stmt.executeQuery(sql5);
			rs5.next();
			list.add(rs5.getInt("count"));
			rs5.close();
			disconnect();
	
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

}
