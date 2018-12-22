package com.blue.service;

import java.util.List;

import com.blue.pojo.Reply;

public interface ReplyService {
	int add(Reply reply);
	List<Reply> list();
	int total();  
}
