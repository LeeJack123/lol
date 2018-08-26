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
		//1.ȡֵ
		//2.���÷���
		List list = skillsService.query();
		req.setAttribute("list", list);
		//3.��תҳ��
		req.getRequestDispatcher("/jsp/skills.jsp").forward(req, resp);
		
	}
	
}
