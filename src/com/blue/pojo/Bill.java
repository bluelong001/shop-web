package com.blue.pojo;

public class Bill {
	public double getBill_money() {
		return bill_money;
	}
	public void setBill_money(double bill_money) {
		this.bill_money = bill_money;
	}
	@Override
	public String toString() {
		return "Bill [bill_id=" + bill_id + ", buyer_id=" + buyer_id + ", commodity_id=" + commodity_id + ", kind_id="
				+ kind_id + ", bill_time=" + bill_time + ", bill_flag=" + bill_flag + ", logistics_id=" + logistics_id
				+ ", bill_num=" + bill_num + ", bill_money=" + bill_money + "]";
	}
	public int getBill_id() {
		return bill_id;
	}
	public void setBill_id(int bill_id) {
		this.bill_id = bill_id;
	}
	public int getBuyer_id() {
		return buyer_id;
	}
	public void setBuyer_id(int buyer_id) {
		this.buyer_id = buyer_id;
	}
	public int getCommodity_id() {
		return commodity_id;
	}
	public void setCommodity_id(int commodity_id) {
		this.commodity_id = commodity_id;
	}
	public int getKind_id() {
		return kind_id;
	}
	public void setKind_id(int kind_id) {
		this.kind_id = kind_id;
	}
	public String getBill_time() {
		return bill_time;
	}
	public void setBill_time(String bill_time) {
		this.bill_time = bill_time;
	}
	public int getBill_flag() {
		return bill_flag;
	}
	public void setBill_flag(int bill_flag) {
		this.bill_flag = bill_flag;
	}
	public int getLogistics_id() {
		return logistics_id;
	}
	public void setLogistics_id(int logistics_id) {
		this.logistics_id = logistics_id;
	}
	public int getBill_num() {
		return bill_num;
	}
	public void setBill_num(int bill_num) {
		this.bill_num = bill_num;
	}

	private int	 bill_id;
	private int	 buyer_id;
	private int	 commodity_id;
	private int	 kind_id;
	private String	 bill_time;
	private int	 bill_flag;
	private int	 logistics_id;
	private int	 bill_num;
	private double	 bill_money;
}
