package com.blue.mapper;

import java.util.List;

import com.blue.pojo.Buyer;
import com.blue.util.Page;

public interface BuyerMapper {

	public int register(Buyer buyer);  
	public int add(Buyer buyer);  
	public void delete(int id);  
	public Buyer get(int id); 
	public Buyer my(int id);
	public int update(Buyer buyer);   
	public List<Buyer> list();
	public List<Buyer> list(Page page);
	public int total();  
	public int check(Buyer buyer);
	public int namebuf(String name);
	
}