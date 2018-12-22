package com.blue.pojo;

public class Kind {
	@Override
	public String toString() {
		return "Kind [kind_id=" + kind_id + ", kind_name=" + kind_name + "]";
	}
	public int getKind_id() {
		return kind_id;
	}
	public void setKind_id(int kind_id) {
		this.kind_id = kind_id;
	}
	public String getKind_name() {
		return kind_name;
	}
	public void setKind_name(String kind_name) {
		this.kind_name = kind_name;
	}
	private int	 kind_id;
	private String	 kind_name;
}
