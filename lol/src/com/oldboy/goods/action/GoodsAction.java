package com.oldboy.goods.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oldboy.goods.service.GoodsService;

public class GoodsAction extends HttpServlet{

	
	private static final long serialVersionUID = 1L;
	private GoodsService goodsService = new GoodsService();

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String status = req.getParameter("status");
		if(status.equals("query")){
			this.query(req, resp);
		}else if(status.equals("getGoodsListByTag")){
			this.getGoodsListByTag(req, resp);
		}else if(status.equals("getGoodsListByTagOne")){
			this.getGoodsListByTagOne(req, resp);
		}else if(status.equals("getGoodsListBySearch")){
			this.getGoodsListBySearch(req, resp);
		}
	}
	public void query(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List list = goodsService.getGoodsList();
		req.setAttribute("list", list);
		req.getRequestDispatcher("jsp/goods_list.jsp").forward(req, resp);
	}
	public void getGoodsListByTag(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//���һ���˵����ض����˵�
		String goods_tag = req.getParameter("goods_tag");
		resp.setContentType("text/html;charset=utf-8");//����������������
		String json = "";
		if(goods_tag.equals("")){
			json = "";
		}else if(goods_tag.equals("defense")){
			json = "[{\"data\":\"lifevalue\",\"text\":\"����ֵ\"},{\"data\":\"liferegeneration\",\"text\":\"�����ظ�\"},{\"data\":\"armor\",\"text\":\"����\"},{\"data\":\"magicresistance\",\"text\":\"ħ������\"}]";
		}else if(goods_tag.equals("attack")){
			json = "[{\"data\":\"vampire\",\"text\":\"����͵ȡ\"},{\"data\":\"crit\",\"text\":\"����\"},{\"data\":\"attackrate\",\"text\":\"�����ٶ�\"},{\"data\":\"damage\",\"text\":\"������\"}]";
		}else if(goods_tag.equals("magic")){
			json = "[{\"data\":\"mana\",\"text\":\"����ֵ\"},{\"data\":\"spellpower\",\"text\":\"����ǿ��\"},{\"data\":\"cd\",\"text\":\"��ȴ����\"},{\"data\":\"manaregeneration\",\"text\":\"�����ظ�\"}]";
		}else if(goods_tag.equals("movement")){
			json = "";
		}else if(goods_tag.equals("consumable")){
			json = "";
		}
		PrintWriter out = resp.getWriter();
		out.println(json);
	}
	public void getGoodsListByTagOne(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//���һ���˵�����goods����
		String goods_tag = req.getParameter("goods_tag");
		List list = goodsService.getGoodsListByTag(goods_tag);
		String json = goodsService.getGoodsString(list);
		resp.setContentType("text/html;charset=utf-8");//����������������
		PrintWriter out = resp.getWriter();
		out.println(json);
	}
	public void getGoodsListBySearch(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String goods_name = req.getParameter("goods_name");
		List list = goodsService.getGoodsListBySearch(goods_name);
		String json = goodsService.getGoodsString(list);
		resp.setContentType("text/html;charset=utf-8");//����������������
		PrintWriter out = resp.getWriter();
		out.println(json);
	}
}
