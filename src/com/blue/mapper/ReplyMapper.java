package com.blue.mapper;

import java.util.List;

import com.blue.pojo.Reply;

public interface ReplyMapper {
 
	public int add(Reply reply);
	public List<Reply> list();
	public int total();  
}