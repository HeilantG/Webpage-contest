package com.contest.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.contest.dao.Select_retrun;
import com.contest.dao.WriteDao;
import com.contest.model.UserInfo;
import com.contest.model.WriteInfo;
import com.contest.service.WebContestService;

/**
 * 贴吧控制层
 */
@WebServlet("/write")
public class WriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	WebContestService ws = new WebContestService();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String type = request.getParameter("type");
		if("add".equals(type)){
			add(request,response);
		}else if("find_top2".equals(type)){
			find_top2(request,response);
		}else if("findAll_top10".equals(type)){
			find_top10(request,response);
		}
//		else if("main".equals(type)){
//			main(request,response);
//		}
//		else{
//		}
//	
	}

//	private void main(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
//		response.sendRedirect("index.jsp");
//	}

	/**
	 * 根据日期查询前10个
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void find_top10(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Select_retrun sr = ws.find_top10();
		
		List<WriteInfo> listwrite = sr.getListwrite();
		List<UserInfo> listuser = sr.getListuser();
		HttpSession session = request.getSession();
		session.setAttribute("write", listwrite);
		session.setAttribute("listuser", listuser);
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}
	

	/**
	 * 删除
	 * @param request
	 * @param response
	 */
	private void delete(HttpServletRequest request, HttpServletResponse response) {
		
	}
	/**
	 * 查询 最近两条
	 * 个人信息页面
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void find_top2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String stuNumber = request.getParameter("stuNumber");
		List<WriteInfo> list = ws.find_top2Bytime(Integer.parseInt(stuNumber));
		HttpSession session = request.getSession();
		session.setAttribute("writelist", list);
		request.getRequestDispatcher("jsp/Personal_information.jsp").forward(request, response);
		
	}
	/**
	 * 添加
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void add(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		// 接收前台的学号
//		String stuNumber = request.getParameter("stuNumber");
		String stuNumber = "2018104396";
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		WriteInfo write = new WriteInfo(0, 0, title, null, content);
		int i = ws.addtext(Integer.parseInt(stuNumber), write);
		if(i>0){
			find_top10(request,response);
		}else{
		}
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
