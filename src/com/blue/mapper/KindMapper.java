package com.blue.mapper;

import java.util.List;

import com.blue.pojo.Kind;

public interface KindMapper {             
    public List<Kind> list(); 
    public int add(Kind kind);
    public int update(Kind kind);
    public void delete(Kind kind);
}
