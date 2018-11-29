package myinfo;

public class Score {
	private String sem;		// 학기
	private String sub;		// 교과목명
	private String com;		// 이수구분
	private int sco;		// 학점
	private int des;		// 설계학점
	private double gra;		// 등급
		
	Score(String sem, String sub, String com, int sco, int des, double gra) {
		this.sem = sem;
		this.sub = sub;
		this.com = com;
		this.sco = sco;
		this.des = des;
		this.gra = gra;
	}
	
	public String getSem() {
		return sem;
	}
	
	public String getSub() {
		return sub;
	}
	
	public String getCom() {
		return com;
	}
	
	public int getSco() {
		return sco;
	}
	
	public int getDes() {
		return des;
	}
	
	public double getGra() {
		return gra;
	}
}
