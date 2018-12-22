package com.blue.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blue.mapper.BuyerMapper;
import com.blue.pojo.Buyer;
import com.blue.service.BuyerService;
import com.blue.util.Page;

@Service
public class BuyerServiceImpl  implements BuyerService{
	@Autowired
	BuyerMapper buyerMapper;
	
	
	public List<Buyer> list(){
		return buyerMapper.list();
	}


	@Override
	public List<Buyer> list(Page page) {
		// TODO Auto-generated method stub
		return buyerMapper.list(page);
	}


	@Override
	public int total() {
		return buyerMapper.total();
	};

	@Override
    public int check(Buyer buyer) {
	int id=buyerMapper.check(buyer);
	return id;}


	@Override
	public int register(Buyer buyer) {
		// TODO Auto-generated method stub
		return buyerMapper.register(buyer);
	}


	@Override
	public int add(Buyer buyer) {
		// TODO Auto-generated method stub
		return buyerMapper.add(buyer);
	}


	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public Buyer get(int id) {
		// TODO Auto-generated method stub
		return buyerMapper.get(id);
	}


	@Override
	public int update(Buyer buyer) {
		// TODO Auto-generated method stub
		return buyerMapper.update(buyer);
	}


	@Override
	public Buyer my(int id) {
		// TODO Auto-generated method stub
		return buyerMapper.my(id);
	}


	@Override
	public int namebuf(String name) {
		// TODO Auto-generated method stub
		return buyerMapper.namebuf(name);
	}
}
