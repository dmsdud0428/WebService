package myinfo;

public class Major {
	private String semester;
	private double average;
	
	public Major(String s, double a) {
		this.semester = s;
		this.average = a;
	}
	
	public double getAverage() {
		return average;
	}
}
