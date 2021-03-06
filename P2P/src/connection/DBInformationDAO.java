package connection;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import myinfo.AwardBean;
import myinfo.CareerBean;
import myinfo.EtcBean;
import myinfo.LanguageBean;
import myinfo.LicenseBean;
import myinfo.ServiceBean;

public class DBInformationDAO implements InformationDAO{
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
	
	public void addLanguage(String id,String title,String rating,String score, Date day) {
		
		Double temp = Double.parseDouble(score);
		String sql = "INSERT INTO language(id, title, rating, score,day) VALUES(?,?,?,?,?)";
		try {	
			connect();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, title);
			pstmt.setString(3, rating);
			pstmt.setDouble(4, temp);
			pstmt.setDate(5, day);
			pstmt.executeUpdate();
			pstmt.close();
			disconnect();
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}

	public void modifyLanguage(String id, String title, String rating, String score, Date day, int num) {
		// TODO Auto-generated method stub
		Double temp = Double.parseDouble(score);
		String sql = "UPDATE language SET id = ?, title = ?, rating = ?, score = ?, day = ? WHERE num = ?";
		try {	
			connect();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, title);
			pstmt.setString(3, rating);
			pstmt.setDouble(4, temp);
			pstmt.setDate(5, day);
			pstmt.setInt(6, num);
			pstmt.executeUpdate();
			pstmt.close();
			disconnect();
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}
	public ArrayList<LanguageBean> getAllLanguage(String id){
		String	sql = "SELECT id,title, rating, score, day,num FROM language where id = ?";
		ArrayList<LanguageBean> list = new ArrayList<LanguageBean>();
		try {
			connect();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				LanguageBean lag = new LanguageBean();
				lag.setId(rs.getString("id"));
				lag.setTitle(rs.getString("title"));
				lag.setRating(rs.getString("rating"));
				lag.setScore(rs.getDouble("score"));
				lag.setDay(Date.valueOf(rs.getString("day")));
				lag.setNum(Integer.parseInt((rs.getString("num"))));
				list.add(lag);
			}
			rs.close();
			pstmt.close();
			disconnect();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;
		
		
	}

	@Override
	public void addLicense(String id, String title, String rating, String company, Date day) {
		// TODO Auto-generated method stub
		String sql = "INSERT INTO license(id, title, company, rating, day) VALUES(?, ?, ?, ?, ?)";
		try {	
			connect();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, title);
			pstmt.setString(3, company);
			pstmt.setString(4, rating);
			pstmt.setDate(5, day);
			pstmt.executeUpdate();
			pstmt.close();
			disconnect();
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public void modifyLicense(String id, String title, String rating, String company, Date day, int num) {
		// TODO Auto-generated method stub
		String sql = "UPDATE license SET id = ?, title = ?, rating = ?, company = ?, day = ? WHERE num = ?";
		try {	
			connect();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, title);
			pstmt.setString(3, rating);
			pstmt.setString(4, company);
			pstmt.setDate(5, day);
			pstmt.setInt(6, num);
			pstmt.executeUpdate();
			pstmt.close();
			disconnect();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}


	@Override
	public ArrayList<LicenseBean> getAllLicense(String id) {
		// TODO Auto-generated method stub
		String	sql = "SELECT id, title, company,rating, day,num FROM license where id = ?";
		ArrayList<LicenseBean> list = new ArrayList<LicenseBean>();
		try {
			connect();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				LicenseBean lag = new LicenseBean();
				lag.setId(rs.getString("id"));
				lag.setTitle(rs.getString("title"));
				lag.setRating(rs.getString("rating"));
				lag.setCompany(rs.getString("company"));
				lag.setDay(Date.valueOf(rs.getString("day")));
				lag.setNum(Integer.parseInt((rs.getString("num"))));
				list.add(lag);
			}
			rs.close();
			pstmt.close();
			disconnect();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public void addAward(String id, String title, String rating, String company, Date day) {
		// TODO Auto-generated method stub
		String sql = "INSERT INTO award(id, title, company, rating, day) VALUES(?, ?, ?, ?, ?)";
		try {	
			connect();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, title);
			pstmt.setString(3, company);
			pstmt.setString(4, rating);
			pstmt.setDate(5, day);
			pstmt.executeUpdate();
			pstmt.close();
			disconnect();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void modifyAward(String id, String title, String rating, String company, Date day, int num) {
		// TODO Auto-generated method stub
		String sql = "UPDATE award SET id = ?, title = ?, rating = ?, company = ?, day = ? WHERE num = ?";
		try {	
			connect();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, title);
			pstmt.setString(3, rating);
			pstmt.setString(4, company);
			pstmt.setDate(5, day);
			pstmt.setInt(6, num);
			pstmt.executeUpdate();
			pstmt.close();
			disconnect();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	@Override
	public ArrayList<AwardBean> getAllAward(String id) {
		// TODO Auto-generated method stub
		String	sql = "SELECT id, title, company,rating, day,num FROM award where id = ?";
		ArrayList<AwardBean> list = new ArrayList<AwardBean>();
		try {
			connect();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				AwardBean lag = new AwardBean();
				lag.setId(rs.getString("id"));
				lag.setTitle(rs.getString("title"));
				lag.setRating(rs.getString("rating"));
				lag.setCompany(rs.getString("company"));
				lag.setDay(Date.valueOf(rs.getString("day")));
				lag.setNum(Integer.parseInt((rs.getString("num"))));
				list.add(lag);
			}
			rs.close();
			pstmt.close();
			disconnect();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public void addCareer(String id, String kind, String company, String business, Date sday, Date eday) {
		// TODO Auto-generated method stub
		String sql = "INSERT INTO career(id, kind, company, business, s_day, e_day) VALUES(?, ?, ?, ?, ?, ?)";
		try {	
			connect();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, kind);
			pstmt.setString(3, company);
			pstmt.setString(4, business);
			pstmt.setDate(5, sday);
			pstmt.setDate(6, eday);
			pstmt.executeUpdate();
			pstmt.close();
			disconnect();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void modifyCareer(String id, String kind, String company, String business, Date sday, Date eday, int num) {
		// TODO Auto-generated method stub
		String sql = "UPDATE career SET id = ?, kind = ?, company = ?, business = ?, s_day = ?, e_day = ? WHERE num = ?";
		try {	
			connect();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, kind);
			pstmt.setString(3, company);
			pstmt.setString(4, business);
			pstmt.setDate(5, sday);
			pstmt.setDate(6, eday);
			pstmt.setInt(7, num);
			pstmt.executeUpdate();
			pstmt.close();
			disconnect();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public ArrayList<CareerBean> getAllCareer(String id) {
		// TODO Auto-generated method stub
		String	sql = "SELECT id, kind,company,business,s_day,e_day,num FROM career where id = ?";
		ArrayList<CareerBean> list = new ArrayList<CareerBean>();
		try {
			connect();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				CareerBean lag = new CareerBean();
				lag.setId(rs.getString("id"));
				lag.setKind(rs.getString("kind"));
				lag.setCompany(rs.getString("company"));
				lag.setBusiness(rs.getString("business"));
				lag.setS_day(Date.valueOf(rs.getString("s_day")));
				lag.setE_day(Date.valueOf(rs.getString("e_day")));
				lag.setNum(Integer.parseInt((rs.getString("num"))));
				list.add(lag);
			}
			rs.close();
			pstmt.close();
			disconnect();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public void addService(String id, String kind, String company, String title, Date sday, Date eday) {
		// TODO Auto-generated method stub
		String sql = "INSERT INTO service(id, title,company,kind,s_day,e_day) VALUES(?, ?, ?, ?, ?, ?)";
		try {	
			connect();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, title);
			pstmt.setString(3, company);
			pstmt.setString(4, kind);
			pstmt.setDate(5, sday);
			pstmt.setDate(6, eday);
			pstmt.executeUpdate();
			pstmt.close();
			disconnect();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void modifyService(String id, String kind, String company, String title, Date sday, Date eday,int num) {
		// TODO Auto-generated method stub
		String sql = "UPDATE service SET id = ?, title = ?, company = ?, kind = ?, s_day = ?, e_day = ? WHERE num = ?";
		try {	
			connect();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, title);
			pstmt.setString(3, company);
			pstmt.setString(4, kind);
			pstmt.setDate(5, sday);
			pstmt.setDate(6, eday);
			pstmt.setInt(7, num);
			pstmt.executeUpdate();
			pstmt.close();
			disconnect();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public ArrayList<ServiceBean> getAllService(String id) {
		// TODO Auto-generated method stub
		String	sql = "SELECT id, title,company,kind,s_day,e_day,num FROM service where id = ?";
		ArrayList<ServiceBean> list = new ArrayList<ServiceBean>();
		try {
			connect();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				ServiceBean lag = new ServiceBean();
				lag.setId(rs.getString("id"));
				lag.setKind(rs.getString("kind"));
				lag.setCompany(rs.getString("company"));
				lag.setTitle(rs.getString("title"));
				lag.setS_day(Date.valueOf(rs.getString("s_day")));
				lag.setE_day(Date.valueOf(rs.getString("e_day")));
				lag.setNum(Integer.parseInt((rs.getString("num"))));
				list.add(lag);
			}
			rs.close();
			pstmt.close();
			disconnect();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public void addEtc(String id, String company, String title, Date sday, Date eday) {
		// TODO Auto-generated method stub
		String sql = "INSERT INTO etc(id, title, company, s_day, e_day) VALUES(?, ?, ?, ?, ?)";
		try {	
			connect();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, title);
			pstmt.setString(3, company);
			pstmt.setDate(4, sday);
			pstmt.setDate(5, eday);
			pstmt.executeUpdate();
			pstmt.close();
			disconnect();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	@Override
	public ArrayList<EtcBean> getAllEtc(String id) {
		// TODO Auto-generated method stub
		String	sql = "SELECT id, title,company,s_day,e_day,num FROM etc where id = ?";
		ArrayList<EtcBean> list = new ArrayList<EtcBean>();
		try {
			connect();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				EtcBean lag = new EtcBean();
				lag.setId(rs.getString("id"));
				lag.setCompany(rs.getString("company"));
				lag.setTitle(rs.getString("title"));
				lag.setS_day(Date.valueOf(rs.getString("s_day")));
				lag.setE_day(Date.valueOf(rs.getString("e_day")));
				lag.setNum(Integer.parseInt((rs.getString("num"))));
				list.add(lag);
			}
			rs.close();
			pstmt.close();
			disconnect();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public void modifyEtc(String id, String company, String title, Date sday, Date eday,int num) {
		// TODO Auto-generated method stub
		String sql = "UPDATE etc SET id = ?, title = ?, company = ?, s_day = ?, e_day = ? WHERE num = ?";
		try {	
			connect();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, title);
			pstmt.setString(3, company);
			pstmt.setDate(4, sday);
			pstmt.setDate(5, eday);
			pstmt.setInt(7, num);
			pstmt.executeUpdate();
			pstmt.close();
			disconnect();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

}
