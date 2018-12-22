package com.blue.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blue.mapper.BillMapper;
import com.blue.pojo.Bill;
import com.blue.service.BillService;
import com.blue.util.Page;

@Service
public class BillServiceImpl  implements BillService{
	@Autowired
	BillMapper billMapper;
	
	
	public List<Bill> list(){
		return billMapper.list();
	}


	@Override
	public List<Bill> list(Page page) {
		// TODO Auto-generated method stub
		return billMapper.list(page);
	}


	@Override
	public int total() {
		return billMapper.total();
	}


	@Override
	public int buy(Bill bill) {
		// TODO Auto-generated method stub
		return billMapper.buy(bill);
	}


	@Override
	public List<Bill> get(int id) {
		// TODO Auto-generated method stub
		return billMapper.get(id);
	};

}
