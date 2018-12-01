package myinfo;

import java.sql.Date;

public class EtcBean {
	private int num;
	private String id;
	private String title;
	private String company;
	private Date s_day;
	private Date e_day;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public Date getS_day() {
		return s_day;
	}
	public void setS_day(Date s_day) {
		this.s_day = s_day;
	}
	public Date getE_day() {
		return e_day;
	}
	public void setE_day(Date e_day) {
		this.e_day = e_day;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
}
