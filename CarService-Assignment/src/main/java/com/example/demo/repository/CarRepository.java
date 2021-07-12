package com.example.demo.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.stereotype.Repository;

import com.example.demo.models.Car;

@Repository
public class CarRepository {
	
	@Autowired
	private JdbcTemplate template;
	
	public int addCustomer(Car entity) {
		SimpleJdbcInsert inserter =new SimpleJdbcInsert(template);
		inserter.withTableName("car").usingColumns("model","current_date","kilometer","brand","status");
		BeanPropertySqlParameterSource sql=new BeanPropertySqlParameterSource(entity);
		return inserter.execute(sql);
	}
	public List<Car> getBrand(String car_brand)
	{
		String sql = "select * from car where brand=?";
		List<Car> cus =template.query(sql, new Object[]{car_brand},new BeanPropertyRowMapper<>(Car.class));
		return cus;
	}
	public String[] getTotalBrand() {
		String sql = "select distinct(brand) from car";
		List<String> lst = template.queryForList(sql, String.class);
		String[] brandAll = lst.toArray(new String[lst.size()]);
	
		return brandAll;
	}
	
	public List<Car> getAllCar(){
		String sql="select * from car ";
		List<Car> custList=template.query(sql, BeanPropertyRowMapper.newInstance(Car.class));
		return custList;
		
	}
	public List<Car> getDetailsStatus(String car_status){
		String sql = "select * from car where status=?";
		List<Car> cus =template.query(sql, new Object[]{car_status},new BeanPropertyRowMapper<>(Car.class));
		return cus;
	}
}
