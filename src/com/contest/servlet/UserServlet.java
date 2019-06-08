package com.contest.servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.contest.model.UserInfo;
import com.contest.service.WebContestService;
import com.sun.glass.ui.Application;

/**
 * 控制层
 */
@WebServlet("/user")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	// 创建 业务层对象
	WebContestService ws = new WebContestService();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String type = request.getParameter("type");
		if("login".equals(type)){
			login(request,response);
		}else if("alter".equals(type)){
			alter(request,response);
		}else if("add1".equals(type)){
			add1(request,response);
		}else if("add2".equals(type)){
			add2(request,response);
		}else{
			System.out.println("没有找到该类型！");
		}
	}
	/**
	 * 完整注册
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void add2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String stuNumber = request.getParameter("stuNumber");
		String stuName = request.getParameter("stuName");
		String password = request.getParameter("password");
		String realName = request.getParameter("realName");
		String sex = request.getParameter("sex");
		String classes = request.getParameter("classes");
		String tel = request.getParameter("tel");
		String dormitory = request.getParameter("dormitory");
		UserInfo user = new UserInfo(0, Integer.parseInt(stuNumber), password, stuName, realName, Integer.parseInt(sex), tel, classes, dormitory);
		int i = ws.add(user);
		if(i>0){
			UserInfo user_login = new UserInfo(Integer.parseInt(stuNumber), password);
			UserInfo login = ws.login(user_login);
			HttpSession session = request.getSession();
			// 返回值前台参数
			session.setAttribute("login", login);
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}else{
			request.setAttribute("fail", "注册失败了");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	}
	/**
	 * 注册--简单
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void add1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String stuNumber = request.getParameter("stuNumber");
		String realName = request.getParameter("realName");
		String password = request.getParameter("password");
		UserInfo user = new UserInfo(0, Integer.parseInt(stuNumber), password, null,realName,2, null, null, null);
		int num = ws.add(user);
		if(num>0){
			UserInfo user_login = new UserInfo(Integer.parseInt(stuNumber), password);
			UserInfo login = ws.login(user_login);
			HttpSession session = request.getSession();
			// 返回给前台参数
			session.setAttribute("user", login);
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}else{
			request.setAttribute("fail", "注册失败了");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	}
	/**
	 * 修改用户信息
	 * @param request
	 * @param response
	 */
	private void alter(HttpServletRequest request, HttpServletResponse response) {
		
		
	}
	/**
	 * 登陆
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String stuNumber = request.getParameter("stuNumber");
		String password = request.getParameter("password");
		// 封装
		UserInfo user = new UserInfo(Integer.parseInt(stuNumber),password);
		UserInfo userInfo = ws.login(user);
		// 创建session对象
		HttpSession session = request.getSession();
		// 传值
		session.setAttribute("user", userInfo);
		//跳转
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
