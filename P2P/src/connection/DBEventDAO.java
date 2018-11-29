package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

//DB에서 수행해야 하는 모든 이벤트는 여기에 들어갑니다. 
//사용시 DBEvetDAO의 객체를 바로 사용하면 안되고, 인터페이스 EventDAO를 이용하여 객체를 생성합니다. 
//---------ex) 	EventDAO dao=new DBEventDAO(); 

public class DBEventDAO implements EventDAO{

		private String jdbc_driver="com.mysql.jdbc.Driver";
		private String jdbc_ur1="jdbc:mysql://localhost:3306/project?characterEncoding=utf8&&serverTimezone=UTC";
		private Connection conn;
		private Statement stmt;
		
		private void connect() {
			try {
				Class.forName(jdbc_driver);
				conn=DriverManager.getConnection(jdbc_ur1,"user_id","p2pproject");
				stmt=conn.createStatement();
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
		public void addInformation(String id, String year, String enterprise, String spec, String content){
			String sql="insert into interview(num,id,year,company,spec,review)values('"+
					1+"','"+id+"','"+year+"','"+enterprise+"','"+spec+"','"+content+"')";
			try {
				
				connect();
				stmt.executeUpdate(sql);
				disconnect();
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
		}
		
}
