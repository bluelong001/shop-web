package com.blue.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blue.pojo.Admin;
import com.blue.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService{
    @Autowired
    com.blue.mapper.AdminMapper adminMapper;
     
    public int check(Admin admin){
        return adminMapper.check(admin);
    };
}
