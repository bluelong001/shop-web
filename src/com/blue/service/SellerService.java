package com.blue.service;

import java.util.List;

import com.blue.pojo.Seller;
import com.blue.util.Page;

public interface SellerService {
	int register(Seller seller);  
	int add(Seller seller);  
	void delete(int id);  
	Seller my(int id);  
	Seller get(int id);  
	int update(Seller seller);   
	List<Seller> list();
	List<Seller> list(Page page);
	int total();  
	int check(Seller seller);
}
