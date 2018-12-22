package com.blue.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blue.mapper.CommodityMapper;
import com.blue.pojo.Commodity;
import com.blue.service.CommodityService;
import com.blue.util.Page;

@Service
public class CommodityServiceImpl  implements CommodityService{
	@Autowired
	CommodityMapper commodityMapper;
	
	
	public List<Commodity> list(){
		return commodityMapper.list();
	}


	@Override
	public List<Commodity> list(Page page) {
		// TODO Auto-generated method stub
		return commodityMapper.list(page);
	}


	@Override
	public int total() {
		return commodityMapper.total();
	}


	@Override
	public int add(Commodity commodity) {
		// TODO Auto-generated method stub
		return commodityMapper.add(commodity);
	}


	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return commodityMapper.delete(id);
		
	}


	@Override
	public List<Commodity> show(int id) {
		// TODO Auto-generated method stub
		return commodityMapper.show(id);
	}


	@Override
	public List<Commodity> sell(int id) {
		// TODO Auto-generated method stub
		return commodityMapper.sell(id);
	}


	@Override
	public int update(Commodity commodity) {
		// TODO Auto-generated method stub
		return commodityMapper.update(commodity);
	}


	@Override
	public Commodity get(int id) {
		// TODO Auto-generated method stub
		return commodityMapper.get(id);
	}


	@Override
	public Commodity replymap(int id) {
		// TODO Auto-generated method stub
		return commodityMapper.replymap(id);
	};


}
