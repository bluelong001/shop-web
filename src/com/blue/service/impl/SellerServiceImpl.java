package com.blue.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blue.mapper.SellerMapper;
import com.blue.pojo.Seller;
import com.blue.service.SellerService;
import com.blue.util.Page;

@Service
public class SellerServiceImpl  implements SellerService{
	@Autowired
	SellerMapper sellerMapper;
	
	
	public List<Seller> list(){
		return sellerMapper.list();
	}


	@Override
	public List<Seller> list(Page page) {
		// TODO Auto-generated method stub
		return sellerMapper.list(page);
	}


	@Override
	public int total() {
		return sellerMapper.total();
	};

	@Override
    public int check(Seller seller) {
	int id=sellerMapper.check(seller);
	return id;}


	@Override
	public int register(Seller seller) {
		// TODO Auto-generated method stub
		return sellerMapper.register(seller);
	}


	@Override
	public int add(Seller seller) {
		// TODO Auto-generated method stub
		return sellerMapper.add(seller);
	}


	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public Seller get(int id) {
		// TODO Auto-generated method stub
		return sellerMapper.get(id);
	}


	@Override
	public int update(Seller seller) {
		// TODO Auto-generated method stub
		return sellerMapper.update(seller);
	}


	@Override
	public Seller my(int id) {
		// TODO Auto-generated method stub
		return sellerMapper.my(id);
	}
}
