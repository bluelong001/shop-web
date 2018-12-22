package com.blue.service;

import java.util.List;

import com.blue.pojo.Commodity;
import com.blue.util.Page;

public interface CommodityService {

	int add(Commodity commodity);  
	Commodity get(int id);

	int delete(int id);  


	List<Commodity> show(int id);  

	List<Commodity> sell(int id);  


	int update(Commodity commodity);   


	List<Commodity> list();

	List<Commodity> list(Page page);

	Commodity replymap(int id);
	int total();  


}
