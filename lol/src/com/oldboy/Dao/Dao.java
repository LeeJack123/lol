package com.oldboy.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class Dao {

	private String driver = "com.mysql.jdbc.Driver";//数据库驱动
	private String url = "jdbc:mysql://localhost:3306/lol?characterEncoding=utf-8";//数据库连接地址,localhost:连接的数据库地址,3306端口号,liu表示数据库名称
	private String user = "root";//用户名
	private String password = "123456";//密码
	
	private Connection connection;//数据库连接对象
	private Statement statement;//sql语句执行对象
	private ResultSet resultSet;//结果集
	
	public Dao(){
		try{
			//1.加载驱动
			Class.forName(driver);
			//2.创建连接
			connection = DriverManager.getConnection(url, user, password);
			//3.创建执行
			statement = connection.createStatement();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	public List query(String sql){
		try{
			resultSet = statement.executeQuery(sql);
			List list = new ArrayList();
			while(resultSet.next()){
				Map map = new HashMap();
				for(int i=1;i<=resultSet.getMetaData().getColumnCount();i++){
					map.put(resultSet.getMetaData().getColumnName(i), resultSet.getString(i));
				}
				list.add(map);
			}
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
		
	}
	public void insert(String sql){
		try {
			statement.executeUpdate(sql);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void delete(String sql){
		try {
			statement.executeUpdate(sql);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void update(String sql){
		try {
			statement.executeUpdate(sql);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

