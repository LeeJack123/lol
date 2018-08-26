package com.oldboy.skills.service;

import java.util.List;

import com.oldboy.Dao.Dao;

public class SkillsService {
	private Dao dao = new Dao();
	public List query(){
		String sql = "select * from skill";
		List list = dao.query(sql);
		return list;
	}
}
