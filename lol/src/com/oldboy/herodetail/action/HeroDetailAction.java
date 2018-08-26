package com.oldboy.herodetail.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oldboy.herodetail.service.HeroDetailService;

public class HeroDetailAction extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private HeroDetailService heroDetailService = new HeroDetailService();
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String status = req.getParameter("status");
		if(status.equals("getHeroList")){
			this.getHeroList(req, resp);
		}if(status.equals("getHeroListByName")){
			this.getHeroListByName(req, resp);
		}if(status.equals("getSkillsJson")){
			this.getSkillsJson(req, resp);
		}
	}
	public void getHeroList(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String hero_name = req.getParameter("hero_name");
		List list = heroDetailService.getHeroList(hero_name);
		String[] tags = heroDetailService.getNums(list);
		List imageList = heroDetailService.getImages(hero_name);
		List imageStatusList = heroDetailService.getImagesByTag(hero_name);
		List heroSkillsList = heroDetailService.getHeroSkills(hero_name);
		List heroSkillsFirstList = heroDetailService.getHeroSkills1(hero_name);
		req.setAttribute("list", list);
		req.setAttribute("imageList", imageList);
		req.setAttribute("imageStatusList", imageStatusList);
		req.setAttribute("tags", tags);
		req.setAttribute("heroSkillsList", heroSkillsList);
		req.setAttribute("heroSkillsFirstList", heroSkillsFirstList);
		req.getRequestDispatcher("/jsp/hero.jsp").forward(req, resp);
	}
	public void getHeroListByName(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String skin_name = req.getParameter("skin_name");
		String hero_id = req.getParameter("hero_id");
		List list = heroDetailService.getHeroListByName(skin_name,hero_id);
		String json = heroDetailService.getJson(list);
		resp.setContentType("text/html;charset=utf-8");//回填中文数据乱码
		PrintWriter out = resp.getWriter();
		out.println(json);
	}
	public void getSkillsJson(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String heroskills_id = req.getParameter("heroskills_id");
		List list = heroDetailService.getSkillsById(heroskills_id);
		String json = heroDetailService.getSkillsJson(list);
		resp.setContentType("text/html;charset=utf-8");
		PrintWriter out = resp.getWriter();
		out.println(json);
	}
}
