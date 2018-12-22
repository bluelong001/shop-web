package com.blue.mapper;

import java.util.List;

import com.blue.pojo.Commodity;
import com.blue.util.Page;

public interface CommodityMapper {


	public int add(Commodity commodity);  
	public Commodity get(int id);
	public int delete(int id);  


	public List<Commodity> show(int id);  

	public List<Commodity> sell(int id);  


	public int update(Commodity commodity);   


	public List<Commodity> list();

	public List<Commodity> list(Page page);
	public Commodity replymap(int id);
	public int total();  



}