package myinfo;

import java.util.ArrayList;

public class UserBean {
	private String major;
	private String schoolID;
	private int year;
	private String name;
	private String type;
	
	public String getMajor() {
		return major;
	}
	public String getSchoolID() {
		return schoolID;
	}
	public String getName() {
		return name;
	}
	public String getType() {
		return type;
	}
	public int getYear() {
		return year;
	}
	
	public void setInfo(ArrayList<String> info) {
		major = info.get(0);
		schoolID = info.get(1);
		name = info.get(2);
		type = info.get(3);
		year = Integer.parseInt(schoolID.substring(0, 4));
	}
}
