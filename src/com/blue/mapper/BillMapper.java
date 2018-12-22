package com.blue.mapper;
 
import java.util.List;

import com.blue.pojo.Bill;
import com.blue.util.Page;
 
public interface BillMapper {
 
      
    public int buy(Bill bill);  
      
      
    public List<Bill> get(int id);  

    public List<Bill> list();
    
    public List<Bill> list(Page page);
    
      
    public int total();  
    
    
    
}