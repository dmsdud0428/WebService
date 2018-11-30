package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import connection.DBReviewDAO;
import connection.ReviewDAO;
import myinfo.ReviewBean;

/**
 * Servlet implementation class Review
 */
@WebServlet("/Review")
public class Review extends HttpServlet {

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ReviewDAO dao = new DBReviewDAO();
		String address = null;
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession(true);
		String id = (String)session.getAttribute("id");
		if(id == null) id = "null";
		
		String action = request.getParameter("action");
		if(action == null || action.equals("list")) {
			String pageNum = request.getParameter("page");
			if(pageNum == null) {
				pageNum = "1";
			}
			int currentPage = Integer.parseInt(pageNum);
			ArrayList<ReviewBean> list = dao.getSubReview(currentPage);
			request.setAttribute("reviewlist", list);
			ReviewBean review = new ReviewBean();
			review.setCount(dao.countReview());
			request.setAttribute("r", review);
			address = "/review.jsp";
		} else if(action.equals("view")) {
			ReviewBean review = dao.getReview(request.getParameter("num"));
			request.setAttribute("review", review);
			address = "/review_view.jsp";
		} else if(action.equals("write")) {
			address = "/review_write.jsp";
		} else if(action.equals("add")) {
			ReviewBean review = new ReviewBean();
			review.setId(id);
			review.setYear(request.getParameter("year"));
			review.setEnterprise(request.getParameter("enterprise"));
			review.setSpec(request.getParameter("spec"));
			review.setContent(request.getParameter("content"));
			dao.addReview(review);
			address = "/Review?action=list";
		} else if(action.equals("modify")) {
			String num = request.getParameter("num");
			ReviewBean review = dao.getReview(num);
			if(review.getId().equals(id)) {
				request.setAttribute("review", review);
				address = "/review_modify.jsp";
			} else {
				response.setContentType("text/html; charset=utf-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('수정할 수 없습니다.');");
				out.println("history.back();");
				out.println("</script>");
				
				return;
			}
		} else if(action.equals("modify_check")) {
			String num = request.getParameter("num");
			ReviewBean buf = dao.getReview(num);
			if(buf.getId().equals(id)) {
				ReviewBean review = new ReviewBean();
				review.setYear(request.getParameter("year"));
				review.setEnterprise(request.getParameter("enterprise"));
				review.setSpec(request.getParameter("spec"));
				review.setContent(request.getParameter("content"));
				dao.updateReview(num, review);
				address = "/Review?action=list";
			} else {
				response.setContentType("text/html; charset=utf-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('수정할 수 없습니다.');");
				out.println("history.back();");
				out.println("</script>");
				
				return;
			}
		} else if(action.equals("delete")) {
			String num = request.getParameter("num");
			ReviewBean buf = dao.getReview(num);
			if(buf.getId().equals(id)) {
				dao.deleteReview(num);
				address = "/Review?action=list";
			} else {
				response.setContentType("text/html; charset=utf-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('삭제할 수 없습니다.');");
				out.println("history.back();");
				out.println("</script>");
				
				return;
			}
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(address);
		dispatcher.forward(request, response);
	}

}
