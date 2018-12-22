package com.blue.mapper;

import java.util.List;

import com.blue.pojo.Seller;
import com.blue.util.Page;

public interface SellerMapper {

	public int register(Seller seller);  
	public int add(Seller seller);  
	public void delete(int id);  
	public Seller get(int id); 
	public Seller my(int id);
	public int update(Seller seller);   
	public List<Seller> list();
	public List<Seller> list(Page page);
	public int total();  
	public int check(Seller seller);
	
}