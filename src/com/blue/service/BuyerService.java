package com.blue.service;

import java.util.List;

import com.blue.pojo.Buyer;
import com.blue.util.Page;

public interface BuyerService {
	int register(Buyer buyer);  
	int add(Buyer buyer);  
	void delete(int id);  
	Buyer my(int id);  
	Buyer get(int id);  
	int update(Buyer buyer);   
	List<Buyer> list();
	List<Buyer> list(Page page);
	int total();  
	int check(Buyer buyer);
	int namebuf(String name);
}
