package myinfo;

import java.util.Date;

public class IntroBean {
	private int count;
	private int num;
	private String id;
	private boolean state;	// false면 작성중, true면 작성완료
	private String day;
	private String company;
	private String business;
	private String kind;
	private String question_1;
	private String answer_1;
	private String question_2;
	private String answer_2;
	private String question_3;
	private String answer_3;
	private String question_4;
	private String answer_4;
	private String question_5;
	private String answer_5;
	private String search;
	private int option;
	
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
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
	public boolean isState() {
		return state;
	}
	public void setState(boolean state) {
		this.state = state;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day.substring(0, 4) + "-" + day.substring(4, 6) + "-" + day.substring(6, 8);
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getBusiness() {
		return business;
	}
	public void setBusiness(String business) {
		this.business = business;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public String getQuestion_1() {
		return question_1;
	}
	public void setQuestion_1(String question_1) {
		this.question_1 = question_1;
	}
	public String getAnswer_1() {
		return answer_1;
	}
	public void setAnswer_1(String answer_1) {
		this.answer_1 = answer_1;
	}
	public String getQuestion_2() {
		return question_2;
	}
	public void setQuestion_2(String question_2) {
		this.question_2 = question_2;
	}
	public String getAnswer_2() {
		return answer_2;
	}
	public void setAnswer_2(String answer_2) {
		this.answer_2 = answer_2;
	}
	public String getQuestion_3() {
		return question_3;
	}
	public void setQuestion_3(String question_3) {
		this.question_3 = question_3;
	}
	public String getAnswer_3() {
		return answer_3;
	}
	public void setAnswer_3(String answer_3) {
		this.answer_3 = answer_3;
	}
	public String getQuestion_4() {
		return question_4;
	}
	public void setQuestion_4(String question_4) {
		this.question_4 = question_4;
	}
	public String getAnswer_4() {
		return answer_4;
	}
	public void setAnswer_4(String answer_4) {
		this.answer_4 = answer_4;
	}
	public String getQuestion_5() {
		return question_5;
	}
	public void setQuestion_5(String question_5) {
		this.question_5 = question_5;
	}
	public String getAnswer_5() {
		return answer_5;
	}
	public void setAnswer_5(String answer_5) {
		this.answer_5 = answer_5;
	}
	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
	public int getOption() {
		return option;
	}
	public void setOption(int option) {
		this.option = option;
	}
}
