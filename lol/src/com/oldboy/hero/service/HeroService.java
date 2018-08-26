package com.oldboy.hero.service;

import java.util.List;
import java.util.Map;

import com.oldboy.Dao.Dao;
/**
 * �ṩheroģ��Ļ�������
 * ���ߣ�����
 * ����ʱ�䣺2018-0619
 * �汾��1.0
 */
public class HeroService {
	private Dao dao = new Dao();
	/**
	 * Ĭ��ȫ��
	 */
	public List getHeroList(){
		String sql = "select * from hero";
		List list = dao.query(sql);
		return list;
	}
	public List getHeroListByName(String hero_chineseName){
		String sql = "select * from hero where hero_chineseName like '%"+hero_chineseName+"%' ";
		List list = dao.query(sql);
		return list;
	}
	public List getHeroListByTag(String hero_tag){
		String sql = "select * from hero where hero_tag like '%"+hero_tag+"%' ";
		List list = dao.query(sql);
		return list;
	}
	public List getHeroListByText(String hero_chineseName){
		String sql = "select * from hero where hero_name like '%"+hero_chineseName+"%' ";
		List list = dao.query(sql);
		if(list.size()==0){
			String sql2 = "select * from hero where hero_chineseName like '%"+hero_chineseName+"%'";
			list = dao.query(sql2);
		}
		//���Ĳ�ѯ��������ݸ�����,û���ݸ�null
		if(list.size()!=0){
			return list;
		}else{
			return null;
		}
	}
	public String getJson(List<Map<String,String>> list){
		String json = "[";
		if(list != null){
			for(int i=0;i<list.size();i++){
				String value = "{\"hero_name\":\""+list.get(i).get("hero_name")+"\",\"hero_nickname\":\""+list.get(i).get("hero_nickname")+"\",\"hero_chineseName\":\""+list.get(i).get("hero_chineseName")+"\"}";
				json= json + value + ",";
			}
		}
		json = json.substring(0,json.length()-1);
		json = json + "]";
		return json;
		
	}
}
