package myinfo;

import java.util.ArrayList;

public class ScoreBean {
	private String semester;			// 학기
	private String subject;				// 교과목명
	private String complete_type;		// 이수구분
	private int score;					// 학점
	private int design_score;			// 설계학점
	private double grade;				// 등급
	private double average;				// 평점평균
	ArrayList<Score> score_array = new ArrayList<>();		// 평점 평균 빼고 다 집어넣은 리스트
	ArrayList<Double> average_array = new ArrayList<>();	// 학기별 평점 평균 리스트
	ArrayList<Major> maverage_array = new ArrayList<>();	// 학기별 전공 평점 평균 리스트
	
	private double goal;				// 목표 점수
	private double total_ave;			// 총 평점 평균
	private double major_ave;			// 전공 평점 평균
	private int total_sco=0;			// 총 학점
	private int major_sco=0;			// 전공 학점
	private int cultureE_sco = 0;		// 교양 필수
	private int msc_sco = 0;			// msc 학점
	private int majorE_sco = 0;			// 전공 필수
	private int bsm_sco = 0;			// bsm 학점
	private int design_sco = 0;			// 설계학점
	private int designM_sco = 0;		// 공학인증 전공 학점
	private int designC_sco = 0;		// 공학인증 교양 학점
	
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
				average = Double.parseDouble(buf.get(i).substring(buf.get(i).indexOf("평점평균") + 17));
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
			grade = toDoubleGrade(buf.get(i + 6).substring(6));
			score_array.add(new Score(semester, subject, complete_type, score, design_score, grade));
			i += 7;
		}
		goal = 0;
		
		/*
		 * 학기별 전공 평점 평균 리스트
		 */
		int cnt = 0;
		double ave = 0;
		String sem_buf = score_array.get(0).getSem();
		for(Score s : score_array) {
			if(!sem_buf.equals(s.getSem())) {
				ave /= cnt;
				maverage_array.add(new Major(sem_buf, ave));
				sem_buf = s.getSem();
				cnt = 0;
				ave = 0;
			}
			if((s.getCom().equals("컴과") || s.getCom().equals("전필")) && s.getGra() != -1) {
				cnt++;
				ave += s.getGra();
			}
		}
		ave /= cnt;
		maverage_array.add(new Major(sem_buf, ave));
		
		/*
		 * 총 평점 평균 구하기 
		 */
		total_ave = 0;
		for(double d : average_array) {
			total_ave += d;
		}
		total_ave /= average_array.size();
		total_ave = Double.parseDouble(String.format("%.2f", total_ave));
		
		/*
		 * 전공 평점 평균 구하기 
		 */
		major_ave = 0;
		for(Major m : maverage_array) {
			major_ave += m.getAverage();
		}
		major_ave /= maverage_array.size();
		major_ave = Double.parseDouble(String.format("%.2f", major_ave));
		
		for(Score s : score_array) {
			total_sco += s.getSco();
			design_sco += s.getDes();
			
			if(s.getCom().equals("컴과")||s.getCom().equals("전필"))
				major_sco += s.getSco();
			
			if(s.getSub().equals("글쓰기"))
				cultureE_sco = 1;
			
			if(s.getCom().equals("M자")||s.getSub().equals("수치계산")||s.getSub().equals("이산수학"))
				msc_sco += s.getSco();
			
			if(s.getCom().equals("전필"))
				majorE_sco += 1;
			
			if(s.getCom().equals("M자"))
				bsm_sco += s.getSco();
			
			if(s.getCom().equals("컴과")||s.getCom().equals("전필")) {
				if(!s.getSub().equals("창의기초설계")&&!s.getSub().equals("C프로그래밍"))
					designM_sco += s.getSco();
			}
			
			if(s.getSub().equals("공학윤리")||s.getSub().equals("특허와기술개발")||s.getSub().equals("창의적문제해결전략")||s.getSub().equals("인간심리의이해"))
				designC_sco  += 1;
				
		}
		
	}
	
	public ArrayList<Score> getScore() {
		return score_array;
	}
	
	public ArrayList<Double> getAverage() {
		return average_array;
	}
	
	public ArrayList<Major> getMAverage() {
		return maverage_array;
	}
	
	public double toDoubleGrade(String s) {
		double value = 0;
		
		if(s.indexOf("A+") != -1)
			value = 4.5;
		else if(s.indexOf("A") != -1)
			value = 4;
		else if(s.indexOf("B+") != -1)
			value = 3.5;
		else if(s.indexOf("B") != -1)
			value = 3;
		else if(s.indexOf("C+") != -1)
			value = 2.5;
		else if(s.indexOf("C") != -1)
			value = 2;
		else if(s.indexOf("D+") != -1)
			value = 1.5;
		else if(s.indexOf("D") != -1)
			value = 1;
		else if(s.indexOf("F") != -1)
			value = 0;
		else if(s.indexOf("P") != -1)
			value = -1;
		
		return value;
	}
	
	public double getGoal() {
		return goal;
	}
	
	public void setGoal(double value) {
		goal = value;
	}

	public double getTotal_ave() {
		return total_ave;
	}

	public double getMajor_ave() {
		return major_ave;
	}
	
	public int getTotal_sco() {
		return total_sco;
	}
	
	public int getMajor_sco() {
		return major_sco;
	}
	public int getNecessary_sco() {
		return total_sco-major_sco;
	}
	
	public int getCultureE_sco() {
		return cultureE_sco;
	}
	
	public int getMsc_sco() {
		return msc_sco;
	}
	
	public int getMajorE_sco() {
		return majorE_sco;
	}
	
	public int getBsm_sco() {
		return bsm_sco;
	}
	
	public int getDesign_sco() {
		return design_sco;
	}
	
	public int getDesignM_sco() {
		return designM_sco;
	}
	
	public int getDesignC_sco() {
		return designC_sco;
	}
}