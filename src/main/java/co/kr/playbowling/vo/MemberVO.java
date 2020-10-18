package co.kr.playbowling.vo;

import java.util.Date;

public class MemberVO {
	private String mem_id;
	private String mem_pw;
	private String mem_nickName;
	private String mem_name;
	private int mem_age;
	private String mem_address;
	private Date join_Date;
	private String mem_email;
	private int mem_num;
	private String mem_Rights;
	
	
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_pw() {
		return mem_pw;
	}
	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}
	public String getMem_nickName() {
		return mem_nickName;
	}
	public void setMem_nickName(String mem_nickName) {
		this.mem_nickName = mem_nickName;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public int getMem_age() {
		return mem_age;
	}
	public void setMem_age(int mem_age) {
		this.mem_age = mem_age;
	}
	public String getMem_address() {
		return mem_address;
	}
	public void setMem_address(String mem_address) {
		this.mem_address = mem_address;
	}
	public Date getJoin_Date() {
		return join_Date;
	}
	public void setJoin_Date(Date join_Date) {
		this.join_Date = join_Date;
	}
	public String getMem_email() {
		return mem_email;
	}
	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}
	public int getMem_num() {
		return mem_num;
	}
	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}
	public String getMem_Rights() {
		return mem_Rights;
	}
	public void setMem_Rights(String mem_Rights) {
		this.mem_Rights = mem_Rights;
	}
	@Override
	public String toString() {
		return "MemberVO [mem_id=" + mem_id + ", mem_pw=" + mem_pw + ", mem_nickName=" + mem_nickName + ", mem_name="
				+ mem_name + ", mem_age=" + mem_age + ", mem_address=" + mem_address + ", join_Date=" + join_Date
				+ ", mem_email=" + mem_email + ", mem_num=" + mem_num + ", mem_Rights=" + mem_Rights + "]";
	}
	
	
	
}