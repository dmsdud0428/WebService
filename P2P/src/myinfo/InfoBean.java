package myinfo;

import java.util.ArrayList;

public class InfoBean {
	private String major;
	private String schoolID;
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
	
	public void setInfo(ArrayList<String> info) {
		major = info.get(0);
		schoolID = info.get(1);
		name = info.get(2);
		type = info.get(3);
	}
}
