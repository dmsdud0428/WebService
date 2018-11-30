package connection;

import java.util.ArrayList;

import myinfo.ReviewBean;

public interface ReviewDAO {
	public int countReview();
	public void addReview(ReviewBean review);
	public ReviewBean getReview(String id);
	public ArrayList<ReviewBean> getAllReview();
	public ArrayList<ReviewBean> getSubReview(int currentPage);
	public void updateReview(String num, ReviewBean review);
	public void deleteReview(String num);
	public ArrayList<ReviewBean> getSearchReview(int currentPage, int option, String word);
	public int countSearchReview(int option, String word);
}
