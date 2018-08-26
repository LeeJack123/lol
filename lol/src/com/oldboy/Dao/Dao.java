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

	private String driver = "com.mysql.jdbc.Driver";//���ݿ�����
	private String url = "jdbc:mysql://localhost:3306/lol?characterEncoding=utf-8";//���ݿ����ӵ�ַ,localhost:���ӵ����ݿ��ַ,3306�˿ں�,liu��ʾ���ݿ�����
	private String user = "root";//�û���
	private String password = "123456";//����
	
	private Connection connection;//���ݿ����Ӷ���
	private Statement statement;//sql���ִ�ж���
	private ResultSet resultSet;//�����
	
	public Dao(){
		try{
			//1.��������
			Class.forName(driver);
			//2.��������
			connection = DriverManager.getConnection(url, user, password);
			//3.����ִ��
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

