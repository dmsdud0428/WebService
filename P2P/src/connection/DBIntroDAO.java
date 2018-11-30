package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import myinfo.IntroBean;

public class DBIntroDAO implements IntroDAO {

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
				+ "VALUES('" + (total_count+1) + "','" + intro.getId() + "','" + intro.isState() + "','"
				+ intro.getDay() + "','" + intro.getCompany() + "','" + intro.getBusiness() + "','"
				+ intro.getKind() + "','" + intro.getQuestion_1() + "','" + intro.getAnswer_1() + "','"
				+ intro.getQuestion_2() + "','" + intro.getAnswer_2() + "','" 
				+ intro.getQuestion_3() + "','" + intro.getAnswer_3() + "','" 
				+ intro.getQuestion_4() + "','" + intro.getAnswer_4() + "','" 
				+ intro.getQuestion_5() + "','" + intro.getAnswer_5() + "')";
		
		try {	
			connect();
			stmt.executeUpdate(sql);
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
		String sql = "SELECT * FROM introduction WHERE(num <= " + startRow
					+ " AND num >= " + endRow + ") ORDER BY num DESC";
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
	
	public IntroBean getIntro(String num) {
		String sql = "SELECT * FROM introduction WHERE num=" + num;
		IntroBean intro = new IntroBean();
		try {
			connect();
			ResultSet rs = stmt.executeQuery(sql);
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
			disconnect();
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return intro;
	}
	
	public void updateIntro(String num, IntroBean intro) {
		String sql = "UPDATE introduction SET state = '" + intro.isState() + "', company = '" + intro.getCompany()
					+ "', business = '" + intro.getBusiness() + "', kind = '" + intro.getKind()
					 + "', question_1 = '" + intro.getQuestion_1()  + "', answer_1 = '" + intro.getAnswer_1()
					 + "', question_2 = '" + intro.getQuestion_2()  + "', answer_2 = '" + intro.getAnswer_2()
					 + "', question_3 = '" + intro.getQuestion_3()  + "', answer_3 = '" + intro.getAnswer_3()
					 + "', question_4 = '" + intro.getQuestion_4()  + "', answer_4 = '" + intro.getAnswer_4()
					 + "', question_5 = '" + intro.getQuestion_5()  + "', answer_5 = '" + intro.getAnswer_5()
					+ "' WHERE num = " + num;
		try {	
			connect();
			stmt.executeUpdate(sql);
			disconnect();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public void deleteIntro(String num) {
		String sql = "DELETE FROM introduction WHERE num = " + num;
		
		try {	
			connect();
			stmt.executeUpdate(sql);
			disconnect();
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		modifyNumber(num);
	}
	
	public void modifyNumber(String num) {
		String sql = "UPDATE introduction SET num = num - 1 WHERE num >" + num;
		
		try {	
			connect();
			stmt.executeUpdate(sql);
			disconnect();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}
