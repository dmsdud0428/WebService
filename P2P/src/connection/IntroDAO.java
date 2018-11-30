package connection;

import java.util.ArrayList;

import myinfo.IntroBean;

public interface IntroDAO {
	public int countIntro();
	public void addIntro(IntroBean intro);
	public IntroBean getIntro(String id);
	public ArrayList<IntroBean> getAllIntro();
	public ArrayList<IntroBean> getSubIntro(int currentPage);
	public void updateIntro(String num, IntroBean intro);
	public void deleteIntro(String num);
}
