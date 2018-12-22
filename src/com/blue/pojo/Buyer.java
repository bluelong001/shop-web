package com.blue.pojo;

public class Buyer {
	@Override
	public String toString() {
		return "Buyer [buyer_id=" + buyer_id + ", buyer_name=" + buyer_name + ", buyer_password=" + buyer_password
				+ ", buyer_age=" + buyer_age + ", buyer_sex=" + buyer_sex + ", buyer_qq=" + buyer_qq + ", buyer_wechat="
				+ buyer_wechat + ", buyer_address=" + buyer_address + "]";
	}
	public int getBuyer_id() {
		return buyer_id;
	}
	public void setBuyer_id(int buyer_id) {
		this.buyer_id = buyer_id;
	}
	public String getBuyer_name() {
		return buyer_name;
	}
	public void setBuyer_name(String buyer_name) {
		this.buyer_name = buyer_name;
	}
	public String getBuyer_password() {
		return buyer_password;
	}
	public void setBuyer_password(String buyer_password) {
		this.buyer_password = buyer_password;
	}
	public int getBuyer_age() {
		return buyer_age;
	}
	public void setBuyer_age(int buyer_age) {
		this.buyer_age = buyer_age;
	}
	public int getBuyer_sex() {
		return buyer_sex;
	}
	public void setBuyer_sex(int buyer_sex) {
		this.buyer_sex = buyer_sex;
	}
	public String getBuyer_qq() {
		return buyer_qq;
	}
	public void setBuyer_qq(String buyer_qq) {
		this.buyer_qq = buyer_qq;
	}
	public String getBuyer_wechat() {
		return buyer_wechat;
	}
	public void setBuyer_wechat(String buyer_wechat) {
		this.buyer_wechat = buyer_wechat;
	}
	public String getBuyer_address() {
		return buyer_address;
	}
	public void setBuyer_address(String buyer_address) {
		this.buyer_address = buyer_address;
	}
	private int	 buyer_id;
	private String	 buyer_name;
	private String	 buyer_password;
	private int	 buyer_age;
	private int	 buyer_sex;
	private String	 buyer_qq;
	private String	 buyer_wechat;
	private String	 buyer_address;
}
