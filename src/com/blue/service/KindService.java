package com.blue.service;

import java.util.List;

import com.blue.pojo.Kind;

public interface KindService {
	List<Kind> list();
    int add(Kind kind);
    int update(Kind kind);
    void delete(Kind kind);
}
