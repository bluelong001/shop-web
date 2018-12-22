package com.blue.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blue.pojo.Kind;
import com.blue.service.KindService;

@Service
public class KindServiceImpl implements KindService{
    @Autowired
    com.blue.mapper.KindMapper kindMapper;

	@Override
	public List<Kind> list() {
		// TODO Auto-generated method stub
		return kindMapper.list();
	}

	@Override
	public int add(Kind kind) {
		// TODO Auto-generated method stub
		return kindMapper.add(kind);
	}

	@Override
	public int update(Kind kind) {
		// TODO Auto-generated method stub
		return kindMapper.update(kind);
	}

	@Override
	public void delete(Kind kind) {
		kindMapper.delete(kind);
	}

}
