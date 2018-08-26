package com.oldboy.herodetail.service;

import java.util.List;
import java.util.Map;

import com.oldboy.Dao.Dao;

public class HeroDetailService {
	private Dao dao = new Dao();
	public List getHeroList(String hero_name){
		String sql = "select * from hero inner join ability on hero.hero_id=ability.ability_id inner join skin on hero.hero_id= skin.hero_id where hero_name = '"+hero_name+"' and skin_status = 1 ";
		List list= dao.query(sql);
		return list;
	}
	public List getHeroListByName(String skin_name,String hero_id){
		String sql = "select * from hero inner join ability on hero.hero_id=ability.ability_id inner join skin on hero.hero_id= skin.hero_id where skin_name = '"+skin_name+"' and  skin.hero_id = '"+hero_id+"'";
		List list= dao.query(sql);
		return list;
	}
	public List getImages(String hero_name){
		String sql = "select * from hero inner join head on hero.hero_id=head.hero_id  where hero_name = '"+hero_name+"' and head_status = 1";
		List list= dao.query(sql);
		return list;
	}
	public List getImagesByTag(String hero_name){
		String sql = "select * from hero inner join head on hero.hero_id=head.hero_id  where hero_name = '"+hero_name+"'and head_status = 0";
		List list= dao.query(sql);
		return list;
	}
	public String[] getNums(List<Map<String,String>> list){
		String value = "";
		if(list != null){
			for(int i=0;i<list.size();i++){
				value =list.get(i).get("hero_tag");
			}
		}
		String[] tags = value.split(",");
		return tags;		
	}
	public String getJson(List<Map<String,String>> list){
		String json = "[";
		if(list != null){
			for(int i=0;i<list.size();i++){
				String value = "{\"hero_name\":\""+list.get(i).get("hero_name")+"\",\"hero_nickname\":\""+list.get(i).get("hero_nickname")+"\",\"hero_chineseName\":\""+list.get(i).get("hero_chineseName")+"\",\"hero_tag\":\""+list.get(i).get("hero_tag")+"\",\"ability_physicalAttacks\":"+list.get(i).get("ability_physicalAttacks")+",\"ability_magicAttacks\":"+list.get(i).get("ability_magicAttacks")+",\"ability_defense\":"+list.get(i).get("ability_defense")+",\"ability_difficulty\":"+list.get(i).get("ability_difficulty")+",\"skin_name\":\""+list.get(i).get("skin_name")+"\",\"skin_src\":\""+list.get(i).get("skin_src")+"\"}";
				json= json + value + ",";
			}
		}
		json = json.substring(0,json.length()-1);
		json = json + "]";
		return json;	
	}
	public List getHeroSkills(String hero_name){
		String sql = "select * from hero inner join heroskills on hero.hero_id=heroskills.hero_id  where hero_name = '"+hero_name+"' and heroskills_status = 0 order by heroskills_id";
		List list= dao.query(sql);
		return list;
	}
	public List getHeroSkills1(String hero_name){
		String sql = "select * from hero inner join heroskills on hero.hero_id=heroskills.hero_id  where hero_name = '"+hero_name+"' and heroskills_status = 1";
		List list= dao.query(sql);
		return list;
	}
	public List getSkillsById(String heroskills_id){
		String sql = "select * from heroskills where heroskills_id = '"+heroskills_id+"'";
		List list = dao.query(sql);
		return list;
	}
	public String getSkillsJson(List<Map<String,String>> list){
		String json = "[";
		if(list != null){
			for(int i=0;i<list.size();i++){
				String value = "{\"heroskills_name\":\""+list.get(i).get("heroskills_name")+"\",\"heroskills_content\":\""+list.get(i).get("heroskills_content")+"\",\"heroskills_property\":\""+list.get(i).get("heroskills_property")+"\"}";
				json= json + value + ",";
			}
		}
		json = json.substring(0,json.length()-1);
		json = json + "]";
		return json;	
	}
}
