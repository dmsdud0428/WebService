package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import myinfo.IntroBean;

public class DBIntroDAO implements IntroDAO {

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
	
	public int countIntro() {
		int total_count = 0;
		String sql = "SELECT count(*) count FROM introduction";
		
		try {
			connect();
			ResultSet rs = stmt.executeQuery(sql);
			rs.next();
			total_count = rs.getInt("count");
			rs.close();
			disconnect();
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return total_count;
	}
	
	public void addIntro(IntroBean intro){
		int total_count = countIntro();
		
		String sql = "INSERT INTO introduction(num, id, state, day, company, business, kind, "
				+ "question_1, answer_1, question_2, answer_2, question_3, answer_3, question_4, answer_4, question_5, answer_5) "
				+ "VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
		try {	
			connect();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, total_count+1);
			pstmt.setString(2, intro.getId());
			pstmt.setBoolean(3, intro.isState());
			pstmt.setString(4, intro.getDay());
			pstmt.setString(5, intro.getCompany());
			pstmt.setString(6, intro.getBusiness());
			pstmt.setString(7, intro.getKind());
			pstmt.setString(8, intro.getQuestion_1());
			pstmt.setString(9, intro.getAnswer_1());
			pstmt.setString(10, intro.getQuestion_2());
			pstmt.setString(11, intro.getAnswer_2());
			pstmt.setString(12, intro.getQuestion_3());
			pstmt.setString(13, intro.getAnswer_3());
			pstmt.setString(14, intro.getQuestion_4());
			pstmt.setString(15, intro.getAnswer_4());
			pstmt.setString(16, intro.getQuestion_5());
			pstmt.setString(17, intro.getAnswer_5());
			pstmt.executeUpdate();
			pstmt.close();
			disconnect();
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public ArrayList<IntroBean> getAllIntro() {
		String sql = "SELECT * FROM introduction";
		ArrayList<IntroBean> list = new ArrayList<IntroBean>();
		try {
			connect();
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				IntroBean intro = new IntroBean();
				intro.setNum(rs.getInt("num"));
				intro.setId(rs.getString("id"));
				intro.setState(rs.getBoolean("state"));
				DateFormat df = new SimpleDateFormat("yyyyMMdd");
				intro.setDay(df.format((rs.getDate("day"))));
				intro.setCompany(rs.getString("company"));
				intro.setBusiness(rs.getString("business"));
				intro.setKind(rs.getString("kind"));
				intro.setQuestion_1(rs.getString("question_1"));
				intro.setAnswer_1(rs.getString("answer_1"));
				intro.setQuestion_2(rs.getString("question_2"));
				intro.setAnswer_2(rs.getString("answer_2"));
				intro.setQuestion_3(rs.getString("question_3"));
				intro.setAnswer_3(rs.getString("answer_3"));
				intro.setQuestion_4(rs.getString("question_4"));
				intro.setAnswer_4(rs.getString("answer_4"));
				intro.setQuestion_5(rs.getString("question_5"));
				intro.setAnswer_5(rs.getString("answer_5"));
				list.add(intro);
			}
			rs.close();
			disconnect();
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public ArrayList<IntroBean> getSubIntro(int currentPage) {
		int count = countIntro();
		int pageSize = 15;
		int startRow = count - (pageSize * (currentPage - 1));
		int endRow = count - (pageSize * currentPage) + 1;
		String sql = "SELECT * FROM introduction WHERE(num <= ? AND num >= ?) ORDER BY num DESC";
		ArrayList<IntroBean> list = new ArrayList<IntroBean>();
		try {
			connect();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				IntroBean intro = new IntroBean();
				intro.setNum(rs.getInt("num"));
				intro.setId(rs.getString("id"));
				intro.setState(rs.getBoolean("state"));
				DateFormat df = new SimpleDateFormat("yyyyMMdd");
				intro.setDay(df.format((rs.getDate("day"))));
				intro.setCompany(rs.getString("company"));
				intro.setBusiness(rs.getString("business"));
				intro.setKind(rs.getString("kind"));
				intro.setQuestion_1(rs.getString("question_1"));
				intro.setAnswer_1(rs.getString("answer_1"));
				intro.setQuestion_2(rs.getString("question_2"));
				intro.setAnswer_2(rs.getString("answer_2"));
				intro.setQuestion_3(rs.getString("question_3"));
				intro.setAnswer_3(rs.getString("answer_3"));
				intro.setQuestion_4(rs.getString("question_4"));
				intro.setAnswer_4(rs.getString("answer_4"));
				intro.setQuestion_5(rs.getString("question_5"));
				intro.setAnswer_5(rs.getString("answer_5"));
				list.add(intro);
			}
			rs.close();
			pstmt.close();
			disconnect();
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public IntroBean getIntro(String num) {
		String sql = "SELECT * FROM introduction WHERE num = ?";
		IntroBean intro = new IntroBean();
		try {
			connect();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			intro.setNum(rs.getInt("num"));
			intro.setId(rs.getString("id"));
			intro.setState(rs.getBoolean("state"));
			DateFormat df = new SimpleDateFormat("yyyyMMdd");
			intro.setDay(df.format((rs.getDate("day"))));
			intro.setCompany(rs.getString("company"));
			intro.setBusiness(rs.getString("business"));
			intro.setKind(rs.getString("kind"));
			intro.setQuestion_1(rs.getString("question_1"));
			intro.setAnswer_1(rs.getString("answer_1"));
			intro.setQuestion_2(rs.getString("question_2"));
			intro.setAnswer_2(rs.getString("answer_2"));
			intro.setQuestion_3(rs.getString("question_3"));
			intro.setAnswer_3(rs.getString("answer_3"));
			intro.setQuestion_4(rs.getString("question_4"));
			intro.setAnswer_4(rs.getString("answer_4"));
			intro.setQuestion_5(rs.getString("question_5"));
			intro.setAnswer_5(rs.getString("answer_5"));
			rs.close();
			pstmt.close();
			disconnect();
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return intro;
	}
	
	public void updateIntro(String num, IntroBean intro) {
		String sql = "UPDATE introduction SET state = ?, company = ?, business = ?, kind = ?"
					 + ", question_1 = ?, answer_1 = ?, question_2 = ?, answer_2 = ?"
					 + ", question_3 = ?, answer_3 = ?, question_4 = ?, answer_4 = ?"
					 + ", question_5 = ?, answer_5 = ? WHERE num = ?";
		try {	
			connect();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setBoolean(1, intro.isState());
			pstmt.setString(2, intro.getCompany());
			pstmt.setString(3, intro.getBusiness());
			pstmt.setString(4, intro.getKind());
			pstmt.setString(5, intro.getQuestion_1());
			pstmt.setString(6, intro.getAnswer_1());
			pstmt.setString(7, intro.getQuestion_2());
			pstmt.setString(8, intro.getAnswer_2());
			pstmt.setString(9, intro.getQuestion_3());
			pstmt.setString(10, intro.getAnswer_3());
			pstmt.setString(11, intro.getQuestion_4());
			pstmt.setString(12, intro.getAnswer_4());
			pstmt.setString(13, intro.getQuestion_5());
			pstmt.setString(14, intro.getAnswer_5());
			pstmt.setString(15, num);
			pstmt.executeUpdate();
			pstmt.close();
			disconnect();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public void deleteIntro(String num) {
		String sql = "DELETE FROM introduction WHERE num = ?";
		
		try {	
			connect();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			pstmt.executeUpdate();
			pstmt.close();
			disconnect();
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		modifyNumber(num);
	}
	
	public void modifyNumber(String num) {
		String sql = "UPDATE introduction SET num = num - 1 WHERE num > ?";
		
		try {	
			connect();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			pstmt.executeUpdate();
			pstmt.close();
			disconnect();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

	public ArrayList<IntroBean> getSearchIntro(int currentPage, int option, String word) {
		String sql = "";
		switch(option) {
			case 0:
				sql = "SELECT * from introduction WHERE(state LIKE ?) ORDER BY num DESC limit ?, 15";
				if("작성".indexOf("word") != -1)
					word = "false%' or state like '%true";
				else if("작성중".indexOf("word") == -1)
					word = "false";
				else
					word = "true";
				break;
			case 1:
				sql = "SELECT * from introduction WHERE(company LIKE ?) ORDER BY num DESC limit ?, 15";
				break;
			case 2:
				sql = "SELECT * from introduction WHERE(business LIKE ?) ORDER BY num DESC limit ?, 15";
				break;
			case 3:
				sql = "SELECT * from introduction WHERE(kind LIKE ?) ORDER BY num DESC limit ?, 15";
				break;
		}
		ArrayList<IntroBean> list = new ArrayList<IntroBean>();
		
		try {
			connect();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%" + word + "%");
			pstmt.setInt(2, ((currentPage - 1) * 15));
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				IntroBean intro = new IntroBean();
				intro.setNum(rs.getInt("num"));
				intro.setId(rs.getString("id"));
				intro.setState(rs.getBoolean("state"));
				DateFormat df = new SimpleDateFormat("yyyyMMdd");
				intro.setDay(df.format((rs.getDate("day"))));
				intro.setCompany(rs.getString("company"));
				intro.setBusiness(rs.getString("business"));
				intro.setKind(rs.getString("kind"));
				intro.setQuestion_1(rs.getString("question_1"));
				intro.setAnswer_1(rs.getString("answer_1"));
				intro.setQuestion_2(rs.getString("question_2"));
				intro.setAnswer_2(rs.getString("answer_2"));
				intro.setQuestion_3(rs.getString("question_3"));
				intro.setAnswer_3(rs.getString("answer_3"));
				intro.setQuestion_4(rs.getString("question_4"));
				intro.setAnswer_4(rs.getString("answer_4"));
				intro.setQuestion_5(rs.getString("question_5"));
				intro.setAnswer_5(rs.getString("answer_5"));
				list.add(intro);
			}
			rs.close();
			pstmt.close();
			disconnect();
		} catch(Exception e) {
			System.out.println(sql);
			e.printStackTrace();
		}
		
		return list;
	}

	public int countSearchIntro(int option, String word) {
		int total_count = 0;
		String sql = "";
		switch(option) {
			case 0:
				sql = "SELECT count(*) count FROM introduction WHERE state LIKE ?";
				if("작성".indexOf("word") != -1)
					word = "false%' or state like '%true";
				else if("작성중".indexOf("word") == -1)
					word = "false";
				else
					word = "true";
				break;
			case 1:
				sql = "SELECT count(*) count FROM introduction WHERE company LIKE ?";
				break;
			case 2:
				sql = "SELECT count(*) count FROM introduction WHERE business LIKE ?";
				break;
			case 3:
				sql = "SELECT count(*) count FROM introduction WHERE kind LIKE ?";
				break;
		}
		
		try {
			connect();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%" + word + "%");
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			total_count = rs.getInt("count");
			rs.close();
			pstmt.close();
			disconnect();
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return total_count;
	}
}
