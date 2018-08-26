package com.oldboy.hero.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oldboy.hero.service.HeroService;
/**
 * 提供hero模块的基本操作
 * 作者：陶利
 * 发布时间：2018-0619
 * 版本：1.0
 */
public class HeroAction extends HttpServlet{


	private static final long serialVersionUID = 1L;
	private HeroService heroService = new HeroService();
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String status = req.getParameter("status");
		if(status.equals("getHeroList")){
			this.getHeroList(req, resp);
		}else if(status.equals("getHeroListByTag")){
			this.getHeroListByTag(req, resp);
		}else if(status.equals("getHeroListByText")){
			this.getHeroListByText(req, resp);
		}
	}
	/**
	 * 默认全查
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	public void getHeroList(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//1.取值
		//2.调用方法
		List list  = heroService.getHeroList();
		req.setAttribute("list", list);
		//3.跳转页面
		req.getRequestDispatcher("/jsp/hero_list.jsp").forward(req, resp);
	}
	public void getHeroListByName(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//1.取值
		String hero_chineseName = req.getParameter("hero_chineseName");
		hero_chineseName = new String(hero_chineseName.getBytes("iso8859-1"),"utf-8");
		//2.调用方法
		List list  = heroService.getHeroListByName(hero_chineseName);
		req.setAttribute("list", list);
		//3.跳转页面
		req.getRequestDispatcher("/jsp/hero_list.jsp").forward(req, resp);
	}
	public void getHeroListByTag(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//1.取值
		String hero_tag = req.getParameter("hero_tag");
		if(hero_tag.equals("")){
			hero_tag = "";
		}else if(hero_tag.equals("Fighter")){
			hero_tag = "战士";
		}else if(hero_tag.equals("Mage")){
			hero_tag = "法师";
		}else if(hero_tag.equals("Assassin")){
			hero_tag = "刺客";
		}else if(hero_tag.equals("Tank")){
			hero_tag = "坦克";
		}else if(hero_tag.equals("Marksman")){
			hero_tag = "射手";
		}else if(hero_tag.equals("Support")){
			hero_tag = "辅助";
		}
		//2.调用方法
		List list  = heroService.getHeroListByTag(hero_tag);
		req.setAttribute("list", list);
		req.setAttribute("hero_tag", hero_tag);
		//3.跳转页面
		req.getRequestDispatcher("/jsp/hero_list.jsp").forward(req, resp);
	}
	public void getHeroListByText(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//1.取值
		String hero_chineseName = req.getParameter("hero_chineseName");
		resp.setContentType("text/html;charset=utf-8");//回填中文数据乱码
		//2.调用方法
		List list  = heroService.getHeroListByText(hero_chineseName);
		String json = heroService.getJson(list);
		PrintWriter out = resp.getWriter();
		out.println(json);
	}
}
