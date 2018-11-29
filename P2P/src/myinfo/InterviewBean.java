package myinfo;

//interview의 정보를 저장할 bean입니다. 
public class InterviewBean {

	private String id;	//학점이 들어가 삭제 시 학점 확인 용으로 사용합니다. -> 현재 DB연결 확인 중이므로 id의 값은 201611803 으로 고정
						// 학점에 들어가는 값을 바꾸기 위해서는 Review.java를 수정하기 바랍니다 .
	private String year;
	private String enterprise;
	private String spec;
	private String content;
	
	public String getId() {
		return id;
	}
	
	public void setId() {
		this.id=id;
	}

	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getEnterprise() {
		return enterprise;
	}
	public void setEnterprise(String enterprise) {
		this.enterprise = enterprise;
	}
	public String getSpec() {
		return spec;
	}
	public void setSpec(String spec) {
		this.spec = spec;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
}
