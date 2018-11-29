package myinfo;

import java.util.ArrayList;

public class ScoreBean {
	private String semester;			// 학기
	private String subject;				// 교과목명
	private String complete_type;		// 이수구분
	private int score;					// 학점
	private int design_score;			// 설계학점
	private String grade;				// 등급
	private float average;				// 평점평균
	ArrayList<Score> score_array = new ArrayList<>();
	ArrayList<Float> average_array = new ArrayList<>();
	
	
	public String getSemester() {
		return semester;
	}
	
	public void setScore(ArrayList<String> buf) {	
		for(int i = 0; i < buf.size(); i++) {
			if(buf.get(i).indexOf("학기") != -1) {
				semester = buf.get(i);
				continue;
			}
			else if(buf.get(i).indexOf("평점평균") != -1) {
				average = Float.parseFloat(buf.get(i).substring(buf.get(i).indexOf("평점평균") + 17));
				average_array.add(average);
				continue;
			}
			subject = buf.get(i + 1);
			complete_type = buf.get(i + 2);
			score = Integer.parseInt(buf.get(i + 4));
			if(buf.get(i + 5).equals(""))
				design_score = 0;
			else
				design_score = Integer.parseInt(buf.get(i + 5));
			grade = buf.get(i + 6).substring(6);
			score_array.add(new Score(semester, subject, complete_type, score, design_score, grade));
			i += 7;
		}
	}
	
	public ArrayList<Score> get_Score() {
		return score_array;
	}
	
	public ArrayList<Float> getAverage() {
		return average_array;
	}
}

class Score {
	private String sem;		// 학기
	private String sub;		// 교과목명
	private String com;		// 이수구분
	private int sco;		// 학점
	private int des;		// 설계학점
	private String gra;		// 등급
	
	Score(String sem, String sub, String com, int sco, int des, String gra) {
		this.sem = sem;
		this.sub = sub;
		this.com = com;
		this.sco = sco;
		this.des = des;
		this.gra = gra;
	}
}