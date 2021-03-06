package com.contest.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.contest.dao.Select_retrunDeal;
import com.contest.model.DealInfo;
import com.contest.model.UserInfo;
import com.contest.model.WriteInfo;
import com.contest.service.WebContestService;

/**
 * 闲置交易控制层
 */
@WebServlet("/deal")
public class DealServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	WebContestService ws = new WebContestService();

	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String type = request.getParameter("type");
		if("select_top2".equals(type)){
			select_top2(request,response);
		}else if("select_top10".equals(type)){
			select_top10(request,response);
		}
	}
	
	/**
	 * 查询  根据时间倒序查 前10个
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void select_top10(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Select_retrunDeal top10 = ws.select_top10();
		List<DealInfo> listdeal = top10.getListDeal();
		List<UserInfo> listuser = top10.getListUser();
		request.setAttribute("listdeal", listdeal);
		request.setAttribute("listuser", listuser);
		request.getRequestDispatcher("jsp/exchange.jsp").forward(request, response);
	}

	/**
	 * 查询  根据时间倒序查 前2个
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void select_top2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String stuNumber = request.getParameter("stuNumber");
//		List<WriteInfo> list = ws.find_top2Bytime(Integer.parseInt(stuNumber));
		List<DealInfo> listdeal = ws.select_top2(Integer.parseInt(stuNumber));
		request.setAttribute("deallist", listdeal);
		// 看下面的方法
	}
	/**
	 * 在WriteServlet里调用下面的方法
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void select(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		select_top2(request,response);
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
