package com.blue.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blue.mapper.ReplyMapper;
import com.blue.pojo.Reply;
import com.blue.service.ReplyService;

@Service
public class ReplyServiceImpl  implements ReplyService{
	@Autowired
	ReplyMapper replyMapper;

	@Override
	public int add(Reply reply) {
		// TODO Auto-generated method stub
		return replyMapper.add(reply);
	}


	@Override
	public int total() {
		// TODO Auto-generated method stub
		return replyMapper.total();
	}

	@Override
	public List<Reply> list() {
		// TODO Auto-generated method stub
		return replyMapper.list();
	}
}
