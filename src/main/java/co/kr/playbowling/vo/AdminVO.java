package co.kr.playbowling.vo;

import java.util.Date;

public class AdminVO {
	private String admin_id;
	private String admin_pw;
	private String admin_nickName;
	private String admin_name;
	private Date join_Date;
	private int admin_num;
	
	
	public String getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}
	public String getAdmin_pw() {
		return admin_pw;
	}
	public void setAdmin_pw(String admin_pw) {
		this.admin_pw = admin_pw;
	}
	public String getAdmin_nickName() {
		return admin_nickName;
	}
	public void setAdmin_nickName(String admin_nickName) {
		this.admin_nickName = admin_nickName;
	}
	public String getAdmin_name() {
		return admin_name;
	}
	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}
	public Date getJoin_Date() {
		return join_Date;
	}
	public void setJoin_Date(Date join_Date) {
		this.join_Date = join_Date;
	}
	public int getAdmin_num() {
		return admin_num;
	}
	public void setAdmin_num(int admin_num) {
		this.admin_num = admin_num;
	}
	@Override
	public String toString() {
		return "AdminVO [admin_id=" + admin_id + ", admin_pw=" + admin_pw + ", admin_nickName=" + admin_nickName
				+ ", admin_name=" + admin_name + ", join_Date=" + join_Date + ", admin_num=" + admin_num + "]";
	}
	
	
	
}
