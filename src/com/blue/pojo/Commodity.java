package com.blue.pojo;

import java.util.List;

public class Commodity {
	public List<Reply> getReply() {
		return reply;
	}
	public void setReply(List<Reply> reply) {
		this.reply = reply;
	}
	@Override
	public String toString() {
		return "Commodity [commodity_id=" + commodity_id + ", commodity_name=" + commodity_name + ", kind_id=" + kind_id
				+ ", seller_id=" + seller_id + ", commodity_price=" + commodity_price + ", commodity_inprice="
				+ commodity_inprice + ", commodity_num=" + commodity_num + "]";
	}
	public int getCommodity_id() {
		return commodity_id;
	}
	public void setCommodity_id(int commodity_id) {
		this.commodity_id = commodity_id;
	}
	public String getCommodity_name() {
		return commodity_name;
	}
	public void setCommodity_name(String commodity_name) {
		this.commodity_name = commodity_name;
	}
	public int getKind_id() {
		return kind_id;
	}
	public void setKind_id(int kind_id) {
		this.kind_id = kind_id;
	}
	public int getSeller_id() {
		return seller_id;
	}
	public void setSeller_id(int seller_id) {
		this.seller_id = seller_id;
	}
	public double getCommodity_price() {
		return commodity_price;
	}
	public void setCommodity_price(double commodity_price) {
		this.commodity_price = commodity_price;
	}
	public double getCommodity_inprice() {
		return commodity_inprice;
	}
	public void setCommodity_inprice(double commodity_inprice) {
		this.commodity_inprice = commodity_inprice;
	}
	public int getCommodity_num() {
		return commodity_num;
	}
	public void setCommodity_num(int commodity_num) {
		this.commodity_num = commodity_num;
	}
	private int	 commodity_id;
	private String	 commodity_name;
	private int	 kind_id;
	private int	 seller_id;
	private double	 commodity_price;
	private double	 commodity_inprice;
	private int	 commodity_num;
	private List<Reply> reply;
	
}
