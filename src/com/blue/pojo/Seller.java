package com.blue.pojo;

public class Seller {
	@Override
	public String toString() {
		return "Seller [seller_id=" + seller_id + ", seller_name=" + seller_name + ", seller_password=" + seller_password
				+ ", seller_age=" + seller_age + ", seller_sex=" + seller_sex + ", seller_qq=" + seller_qq + ", seller_wechat="
				+ seller_wechat + ", seller_address=" + seller_address + "]";
	}
	public int getSeller_id() {
		return seller_id;
	}
	public void setSeller_id(int seller_id) {
		this.seller_id = seller_id;
	}
	public String getSeller_name() {
		return seller_name;
	}
	public void setSeller_name(String seller_name) {
		this.seller_name = seller_name;
	}
	public String getSeller_password() {
		return seller_password;
	}
	public void setSeller_password(String seller_password) {
		this.seller_password = seller_password;
	}
	public int getSeller_age() {
		return seller_age;
	}
	public void setSeller_age(int seller_age) {
		this.seller_age = seller_age;
	}
	public int getSeller_sex() {
		return seller_sex;
	}
	public void setSeller_sex(int seller_sex) {
		this.seller_sex = seller_sex;
	}
	public String getSeller_qq() {
		return seller_qq;
	}
	public void setSeller_qq(String seller_qq) {
		this.seller_qq = seller_qq;
	}
	public String getSeller_wechat() {
		return seller_wechat;
	}
	public void setSeller_wechat(String seller_wechat) {
		this.seller_wechat = seller_wechat;
	}
	public String getSeller_address() {
		return seller_address;
	}
	public void setSeller_address(String seller_address) {
		this.seller_address = seller_address;
	}
	private int	 seller_id;
	private String	 seller_name;
	private String	 seller_password;
	private int	 seller_age;
	private int	 seller_sex;
	private String	 seller_qq;
	private String	 seller_wechat;
	private String	 seller_address;
}
