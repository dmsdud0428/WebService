package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import connection.DBIntroDAO;
import connection.IntroDAO;
import myinfo.IntroBean;

/**
 * Servlet implementation class Introduce
 */
@WebServlet("/Introduce")
public class Introduce extends HttpServlet {

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
		IntroDAO dao = new DBIntroDAO();
		String address = null;
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession(true);
		String id = (String)session.getAttribute("id");
		if(id == null) id = "null";
		
		String action = request.getParameter("action");
		if(action == null || action.equals("list")) {
			ArrayList<IntroBean> list;
			IntroBean intro = new IntroBean();
			String pageNum = request.getParameter("page");
			if(pageNum == null) {
				pageNum = "1";
			}
			int currentPage = Integer.parseInt(pageNum);
			
			if(request.getParameter("searchInput") != null) {
				int option = Integer.parseInt(request.getParameter("searchBy"));
				String word = request.getParameter("searchInput");
				list = dao.getSearchIntro(currentPage, option, word);
				intro.setCount(dao.countSearchIntro(option, word));
				intro.setOption(option);
				intro.setSearch(word);
			}
			else {
				list = dao.getSubIntro(currentPage);
				intro.setCount(dao.countIntro());
				intro.setSearch("");
			}
			
			request.setAttribute("introlist", list);
			request.setAttribute("in", intro);
			address = "/introduce.jsp";
		} else if(action.equals("view")) {
			IntroBean intro = dao.getIntro(request.getParameter("num"));
			request.setAttribute("intro", intro);
			address = "/introduce_view.jsp";
		} else if(action.equals("write")) {
			address = "/introduce_write.jsp";
		} else if(action.equals("add")) {
			IntroBean intro = new IntroBean();
			intro.setId(id);
			boolean state = false;
			if(request.getParameter("state").equals("writed"))
				state = true;
			intro.setState(state);
			intro.setDay(request.getParameter("day"));
			intro.setCompany(request.getParameter("enterprise"));
			intro.setBusiness(request.getParameter("job"));
			intro.setKind(request.getParameter("job_type"));
			intro.setQuestion_1(request.getParameter("q1"));
			intro.setAnswer_1(request.getParameter("a1"));
			intro.setQuestion_2(request.getParameter("q2"));
			intro.setAnswer_2(request.getParameter("a2"));
			intro.setQuestion_3(request.getParameter("q3"));
			intro.setAnswer_3(request.getParameter("a3"));
			intro.setQuestion_4(request.getParameter("q4"));
			intro.setAnswer_4(request.getParameter("a4"));
			intro.setQuestion_5(request.getParameter("q5"));
			intro.setAnswer_5(request.getParameter("a5"));
			dao.addIntro(intro);
			address = "/Introduce?action=list";
		} else if(action.equals("modify")) {
			String num = request.getParameter("num");
			IntroBean intro = dao.getIntro(num);
			if(intro.getId().equals(id)) {
				request.setAttribute("intro", intro);
				address = "/introduce_modify.jsp";
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
			IntroBean buf = dao.getIntro(num);
			if(buf.getId().equals(id)) {
				IntroBean intro = new IntroBean();
				boolean state = false;
				if(request.getParameter("state").equals("writed"))
					state = true;
				intro.setState(state);
				intro.setCompany(request.getParameter("enterprise"));
				intro.setBusiness(request.getParameter("job"));
				intro.setKind(request.getParameter("job_type"));
				intro.setQuestion_1(request.getParameter("q1"));
				intro.setAnswer_1(request.getParameter("a1"));
				intro.setQuestion_2(request.getParameter("q2"));
				intro.setAnswer_2(request.getParameter("a2"));
				intro.setQuestion_3(request.getParameter("q3"));
				intro.setAnswer_3(request.getParameter("a3"));
				intro.setQuestion_4(request.getParameter("q4"));
				intro.setAnswer_4(request.getParameter("a4"));
				intro.setQuestion_5(request.getParameter("q5"));
				intro.setAnswer_5(request.getParameter("a5"));
				dao.updateIntro(num, intro);
				address = "/Introduce?action=list";
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
			IntroBean buf = dao.getIntro(num);
			if(buf.getId().equals(id)) {
				dao.deleteIntro(num);
				address = "/Introduce?action=list";
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
