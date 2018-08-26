package com.oldboy.skills.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oldboy.skills.service.SkillsService;

public class SkillsAction extends HttpServlet{


	private static final long serialVersionUID = 1L;
	private SkillsService skillsService = new SkillsService();
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//1.取值
		//2.调用方法
		List list = skillsService.query();
		req.setAttribute("list", list);
		//3.跳转页面
		req.getRequestDispatcher("/jsp/skills.jsp").forward(req, resp);
		
	}
	
}
