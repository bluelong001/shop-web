package com.blue.pojo;

public class Reply {
	@Override
	public String toString() {
		return "Reply [reply_id=" + reply_id + ", reply_text=" + reply_text + ", commodity_id=" + commodity_id
				+ ", buyer_id=" + buyer_id + "]";
	}
	public int getReply_id() {
		return reply_id;
	}
	public void setReply_id(int reply_id) {
		this.reply_id = reply_id;
	}
	public String getReply_text() {
		return reply_text;
	}
	public void setReply_text(String reply_text) {
		this.reply_text = reply_text;
	}
	public int getCommodity_id() {
		return commodity_id;
	}
	public void setCommodity_id(int commodity_id) {
		this.commodity_id = commodity_id;
	}
	public int getBuyer_id() {
		return buyer_id;
	}
	public void setBuyer_id(int buyer_id) {
		this.buyer_id = buyer_id;
	}
	private int	 reply_id;
	private String	 reply_text;
	private int	 commodity_id;
	private int	 buyer_id;
}
