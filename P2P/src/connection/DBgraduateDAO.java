package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import myinfo.GraduateBean;

public class DBgraduateDAO implements GraduateDAO{
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

	public ArrayList<GraduateBean> get2016Graduate() {
		// TODO Auto-generated method stub
		String	sql = "SELECT * FROM graduate where year='2016'";
		ArrayList<GraduateBean> list = new ArrayList<GraduateBean>();
		try {
			connect();
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				GraduateBean gra = new GraduateBean();
				gra.setRequirement(rs.getString("requirement"));;
				gra.setScore(rs.getInt("score"));
				list.add(gra);
			}
			rs.close();
			disconnect();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public ArrayList<GraduateBean> get2017Graduate() {
		// TODO Auto-generated method stub
		String	sql = "SELECT * FROM graduate where year='2017'";
		ArrayList<GraduateBean> list = new ArrayList<GraduateBean>();
		try {
			connect();
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				GraduateBean gra = new GraduateBean();
				gra.setRequirement(rs.getString("requirement"));;
				gra.setScore(rs.getInt("score"));
				list.add(gra);
			}
			rs.close();
			disconnect();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public ArrayList<GraduateBean> get2018Graduate() {
		// TODO Auto-generated method stub
		String	sql = "SELECT * FROM graduate where year='2018'";
		ArrayList<GraduateBean> list = new ArrayList<GraduateBean>();
		try {
			connect();
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				GraduateBean gra = new GraduateBean();
				gra.setRequirement(rs.getString("requirement"));;
				gra.setScore(rs.getInt("score"));
				list.add(gra);
			}
			rs.close();
			disconnect();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}