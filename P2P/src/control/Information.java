package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import connection.DBInformationDAO;
import connection.InformationDAO;
import myinfo.AwardBean;
import myinfo.CareerBean;
import myinfo.LanguageBean;
import myinfo.LicenseBean;

/**
 * Servlet implementation class Information
 */
@WebServlet("/Information")
public class Information extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Information() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		InformationDAO dao=new DBInformationDAO();
		String address = null;
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession(true);
		String id = (String)session.getAttribute("id");
		if(id == null) id = "null";
		String action = request.getParameter("action");
		
		if(action==null||action.equals("list")) {
			System.out.println("list");
			ArrayList<LanguageBean> list=dao.getAllLanguage(id);
			request.setAttribute("Languagelist", list);
			LanguageBean lag=new LanguageBean();
			request.setAttribute("language",lag);
			
			ArrayList<LicenseBean> Llist=dao.getAllLicense(id);
			request.setAttribute("Licenselist", Llist);
			LicenseBean Llag=new LicenseBean();
			request.setAttribute("License",Llag);
			
			ArrayList<AwardBean> Alist=dao.getAllAward(id);
			request.setAttribute("Awardlist", Alist);
			AwardBean Alag=new AwardBean();
			request.setAttribute("Award",Alag);
			
			ArrayList<CareerBean> Clist=dao.getAllCareer(id);
			request.setAttribute("Careerlist", Clist);
			CareerBean Clag=new CareerBean();
			request.setAttribute("Career",Clag);
		
			address="/information.jsp";
		}
		
		else if(action.equals("languagewrite")) {
			System.out.println("languaged");
			String title=request.getParameter("title");
			String rating=request.getParameter("rating");
			String score =request.getParameter("score");
			String temp=request.getParameter("day");

			if(title.equals("")||rating.equals("")||score.equals("")||temp.equals("")) {
				response.setContentType("text/html; charset=utf-8");
				PrintWriter out=response.getWriter();
				out.println("<script>");
				out.println("alert('모든 내용을 입력하여 주세요');");
				out.println("history.back();");
				out.println("</script>");
				return;
			}
			else if(rating.length()!=1){
				response.setContentType("text/html; charset=utf-8");
				PrintWriter out=response.getWriter();
				out.println("<script>");
				out.println("alert('등급이 너무 큽니다.');");
				out.println("history.back();");
				out.println("</script>");
				return;
			}
			else {
				Date day=Date.valueOf(request.getParameter("day"));
				dao.addLanguage(id,title, rating, score, day);
			}
			address = "/Information?action=list";
		}else if(action.equals("languagedmodify")) {
			
			System.out.println("languagedmodify");
			String title=request.getParameter("title");
			String rating=request.getParameter("rating");
			String score =request.getParameter("score");
			String temp=request.getParameter("day");
			int num=Integer.parseInt(request.getParameter("num"));
			
			System.out.println(num);
			address = "/Information?action=list";
		}
		else if(action.equals("licensewrite")) {
			
			System.out.println("licensewrite");
			String title=request.getParameter("title");
			String rating=request.getParameter("rating");
			String company =request.getParameter("company");
			String temp=request.getParameter("day");
			System.out.println(title);
			if(title.equals("")||rating.equals("")||company.equals("")||temp.equals("")) {
				response.setContentType("text/html; charset=utf-8");
				PrintWriter out=response.getWriter();
				out.println("<script>");
				out.println("alert('모든 내용을 입력하여 주세요');");
				out.println("history.back();");
				out.println("</script>");
				return;
			}
			else {
				Date day=Date.valueOf(request.getParameter("day"));
				dao.addLicense(id,title, rating, company, day);
			}
			address = "/Information?action=list";
		}
		else if(action.equals("licensemodify")) {
			System.out.println("languagedmodify");
			String title=request.getParameter("title");
			String rating=request.getParameter("rating");
			String company =request.getParameter("company");
			String temp=request.getParameter("day");
			int num=Integer.parseInt(request.getParameter("num"));
			
			System.out.println(num);
			address = "/Information?action=list";	
		}
		else if(action.equals("Awardwrite")) {
			
			System.out.println("Awardwrite");
			String title=request.getParameter("title");
			String rating=request.getParameter("rating");
			String company =request.getParameter("company");
			String temp=request.getParameter("day");
			System.out.println(title);
			if(title.equals("")||rating.equals("")||company.equals("")||temp.equals("")) {
				response.setContentType("text/html; charset=utf-8");
				PrintWriter out=response.getWriter();
				out.println("<script>");
				out.println("alert('모든 내용을 입력하여 주세요');");
				out.println("history.back();");
				out.println("</script>");
				return;
			}
			else {
				Date day=Date.valueOf(request.getParameter("day"));
				dao.addAward(id,title, rating, company, day);
			}
			address = "/Information?action=list";
		}else if(action.equals("Awardmodify")) {
			System.out.println("Awarddmodify");
			String title=request.getParameter("title");
			String rating=request.getParameter("rating");
			String company =request.getParameter("company");
			String temp=request.getParameter("day");
			int num=Integer.parseInt(request.getParameter("num"));
			
			System.out.println(num);
			address = "/Information?action=list";	
		}else if(action.equals("Careerwrite")) {
			
			System.out.println("Awardwrite");
			String kind=request.getParameter("kind");
			String business=request.getParameter("business");
			String company =request.getParameter("company");
			String temp=request.getParameter("sday");
			String tmp=request.getParameter("eday");

			if(kind.equals("")||business.equals("")||company.equals("")||temp.equals("")||tmp.equals("")) {
				response.setContentType("text/html; charset=utf-8");
				PrintWriter out=response.getWriter();
				out.println("<script>");
				out.println("alert('모든 내용을 입력하여 주세요');");
				out.println("history.back();");
				out.println("</script>");
				return;
			}
			else {
				Date sday=Date.valueOf(request.getParameter("sday"));
				Date eday=Date.valueOf(request.getParameter("eday"));
				dao.addCareer(id,kind, company,business, sday,eday);
			}
			address = "/Information?action=list";
		}
		else if(action.equals("Careermodify")) {
			System.out.println("Awarddmodify");
			String title=request.getParameter("title");
			String rating=request.getParameter("rating");
			String company =request.getParameter("company");
			String temp=request.getParameter("day");
			int num=Integer.parseInt(request.getParameter("num"));
			
			System.out.println(num);
			address = "/Information?action=list";	
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(address);
		dispatcher.forward(request, response);
	}

}
