package com.oldboy.goods.service;

import java.util.List;
import java.util.Map;

import com.oldboy.Dao.Dao;

public class GoodsService {
	private Dao dao = new Dao();
	public List getGoodsList(){
		String sql = "select * from goods";
		List list = dao.query(sql);
		return list;
	}
	public List getGoodsListByTag(String goods_tag){
		String sql = "select * from goods";
		if(goods_tag.equals("")){
			sql = sql;
		}else if(goods_tag.equals("defense")){
			sql = sql + " where goods_lifevalue > 0 or goods_liferegeneration > 0 or goods_armor > 0 or goods_magicresistance > 0";
		}else if(goods_tag.equals("attack")){
			sql = sql + " where goods_vampire > 0 or goods_crit > 0 or goods_attackrate > 0 or goods_damage > 0";
		}else if(goods_tag.equals("magic")){
			sql = sql + " where goods_mana > 0 or goods_spellpower > 0 or goods_cd > 0 or goods_manaregeneration > 0";
		}else if(goods_tag.equals("lifevalue")){
			sql = sql + " where goods_lifevalue > 0 ";
		}else if(goods_tag.equals("liferegeneration")){
			sql = sql + " where goods_liferegeneration > 0 ";
		}else if(goods_tag.equals("armor")){
			sql = sql + " where goods_armor > 0 ";
		}else if(goods_tag.equals("magicresistance")){
			sql = sql + " where goods_magicresistance > 0 ";
		}else if(goods_tag.equals("vampire")){
			sql = sql + " where goods_vampire > 0 ";
		}else if(goods_tag.equals("crit")){
			sql = sql + " where goods_crit > 0 ";
		}else if(goods_tag.equals("attackrate")){
			sql = sql + " where goods_attackrate > 0 ";
		}else if(goods_tag.equals("damage")){
			sql = sql + " where goods_damage > 0 ";
		}else if(goods_tag.equals("mana")){
			sql = sql + " where goods_mana > 0 ";
		}else if(goods_tag.equals("spellpower")){
			sql = sql + " where goods_spellpower > 0 ";
		}else if(goods_tag.equals("cd")){
			sql = sql + " where goods_cd > 0 ";
		}else if(goods_tag.equals("manaregeneration")){
			sql = sql + " where goods_manaregeneration > 0 ";
		}
		List list = dao.query(sql);
		if(goods_tag.equals("movement") || goods_tag.equals("consumable")){
			return null;
		}else{
			return list;
		}
	}
	public String getGoodsString(List<Map<String,String>> list){
		String json = "[";
		if(list != null && list.size()>0){
			for(int i=0;i<list.size();i++){
				String value = "{\"id\":"+list.get(i).get("goods_id")+",\"name\":\""+list.get(i).get("goods_name")+"\",\"head\":\""+list.get(i).get("goods_head")+"\",\"price\":"+list.get(i).get("goods_price")+",\"content\":\""+list.get(i).get("goods_content")+"\",\"lifevalue\":"+list.get(i).get("goods_lifevalue")+",\"liferegeneration\":"+list.get(i).get("goods_liferegeneration")+",\"armor\":"+list.get(i).get("goods_armor")+",\"magicresistance\":"+list.get(i).get("goods_magicresistance")+",\"vampire\":"+list.get(i).get("goods_vampire")+",\"crit\":"+list.get(i).get("goods_crit")+",\"attackrate\":"+list.get(i).get("goods_attackrate")+",\"damage\":"+list.get(i).get("goods_damage")+",\"mana\":"+list.get(i).get("goods_mana")+",\"spellpower\":"+list.get(i).get("goods_spellpower")+",\"cd\":"+list.get(i).get("goods_cd")+",\"manaregeneration\":"+list.get(i).get("goods_manaregeneration")+"}";
				json = json + value + ",";
			}
			json = json.substring(0,json.length()-1);
		}

		json = json + "]";
		return json;
	}
	public List getGoodsListBySearch(String goods_name){
		String sql = "select * from goods where goods_name like '%"+goods_name+"%'";
		List list = dao.query(sql);
		return list;
	}
}
