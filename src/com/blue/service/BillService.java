package com.blue.service;

import java.util.List;

import com.blue.pojo.Bill;
import com.blue.util.Page;

public interface BillService {

    
  int buy(Bill bill);  
    
    
  List<Bill> get(int id);  

  List<Bill> list();
  
  List<Bill> list(Page page);
  
    
  int total();  
  
}
