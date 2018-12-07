package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import myinfo.ReviewBean;

//DB에서 수행해야 하는 모든 이벤트는 여기에 들어갑니다. 
//사용시 DBReviewDAO의 객체를 바로 사용하면 안되고, 인터페이스 ReviewDAO를 이용하여 객체를 생성합니다. 
//---------ex) 	ReviewDAO dao = new DBReviewDAO(); 

public class DBReviewDAO implements ReviewDAO {

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
		
		public int countReview() {
			int total_count = 0;
			String sql = "SELECT count(*) count FROM interview";
			
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
		
		public void addReview(ReviewBean review){
			int total_count = countReview();
			
			String sql = "INSERT INTO interview(num, id, year, company, spec, review) VALUES(?,?,?,?,?,?)";
			
			try {	
				connect();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, total_count+1);
				pstmt.setString(2, review.getId());
				pstmt.setString(3, review.getYear());
				pstmt.setString(4, review.getEnterprise());
				pstmt.setString(5, review.getSpec());
				pstmt.setString(6, review.getContent());
				pstmt.executeUpdate();
				pstmt.close();
				disconnect();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		public ArrayList<ReviewBean> getAllReview() {
			String sql = "SELECT * FROM interview";
			ArrayList<ReviewBean> list = new ArrayList<ReviewBean>();
			try {
				connect();
				ResultSet rs = stmt.executeQuery(sql);
				while(rs.next()) {
					ReviewBean review = new ReviewBean();
					review.setNum(rs.getInt("num"));
					review.setId(rs.getString("id"));
					review.setYear(rs.getString("year"));
					review.setEnterprise(rs.getString("company"));
					review.setSpec(rs.getString("spec"));
					review.setContent(rs.getString("review"));
					list.add(review);
				}
				rs.close();
				disconnect();
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			return list;
		}
		
		public ArrayList<ReviewBean> getSubReview(int currentPage) {
			int count = countReview();
			int pageSize = 15;
			int startRow = count - (pageSize * (currentPage - 1));
			int endRow = count - (pageSize * currentPage) + 1;
			String sql = "SELECT * from interview WHERE(num <= ? AND num >= ?) ORDER BY num DESC";
			ArrayList<ReviewBean> list = new ArrayList<ReviewBean>();
			try {
				connect();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, startRow);
				pstmt.setInt(2, endRow);
				ResultSet rs = pstmt.executeQuery();
				while(rs.next()) {
					ReviewBean review = new ReviewBean();
					review.setNum(rs.getInt("num"));
					review.setId(rs.getString("id"));
					review.setYear(rs.getString("year"));
					review.setEnterprise(rs.getString("company"));
					review.setSpec(rs.getString("spec"));
					review.setContent(rs.getString("review"));
					list.add(review);
				}
				rs.close();
				pstmt.close();
				disconnect();
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			return list;
		}
		
		public ReviewBean getReview(String num) {
			String sql = "SELECT * FROM interview WHERE num = ?";
			ReviewBean review = new ReviewBean();
			try {
				connect();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, num);
				ResultSet rs = pstmt.executeQuery();
				rs.next();
				review.setNum(rs.getInt("num"));
				review.setId(rs.getString("id"));
				review.setYear(rs.getString("year"));
				review.setEnterprise(rs.getString("company"));
				review.setSpec(rs.getString("spec"));
				review.setContent(rs.getString("review"));
				rs.close();
				pstmt.close();
				disconnect();
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			return review;
		}
		
		public void updateReview(String num, ReviewBean review) {
			String sql = "UPDATE interview SET year = ?, company = ?, spec = ?, review = ? WHERE num = ?";
			try {	
				connect();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, review.getYear());
				pstmt.setString(2, review.getEnterprise());
				pstmt.setString(3, review.getSpec());
				pstmt.setString(4, review.getContent());
				pstmt.setString(5, num);
				pstmt.executeUpdate();
				pstmt.close();
				disconnect();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		public void deleteReview(String num) {
			String sql = "DELETE FROM interview WHERE num = ?";
			
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
			String sql = "UPDATE interview SET num = num - 1 WHERE num > ?";
			
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

		public ArrayList<ReviewBean> getSearchReview(int currentPage, int option, String word) {
			String sql = null;
			switch(option) {
				case 0:
					sql = "SELECT * from interview WHERE year LIKE ? ORDER BY num DESC limit ?, 15";
					break;
				case 1:
					sql = "SELECT * from interview WHERE company LIKE ? ORDER BY num DESC limit ?, 15";
					break;
				case 2:
					sql = "SELECT * from interview WHERE spec LIKE ? ORDER BY num DESC limit ?, 15";
					break;
			}
			ArrayList<ReviewBean> list = new ArrayList<ReviewBean>();
			
			try {
				connect();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, "%" + word + "%");
				pstmt.setInt(2, ((currentPage - 1) * 15));
				ResultSet rs = pstmt.executeQuery();
				while(rs.next()) {
					ReviewBean review = new ReviewBean();
					review.setNum(rs.getInt("num"));
					review.setId(rs.getString("id"));
					review.setYear(rs.getString("year"));
					review.setEnterprise(rs.getString("company"));
					review.setSpec(rs.getString("spec"));
					review.setContent(rs.getString("review"));
					list.add(review);
				}
				rs.close();
				pstmt.close();
				disconnect();
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			return list;
		}

		public int countSearchReview(int option, String word) {
			int total_count = 0;
			String sql = null;
			switch(option) {
				case 0:
					sql = "SELECT count(*) count FROM interview WHERE year LIKE ?";
					break;
				case 1:
					sql = "SELECT count(*) count FROM interview WHERE company LIKE ?";
					break;
				case 2:
					sql = "SELECT count(*) count FROM interview WHERE spec LIKE ?";
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
