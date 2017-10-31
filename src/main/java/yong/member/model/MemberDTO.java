package yong.member.model;

import java.sql.Date;

public class MemberDTO {
	
	private int idx;
	private String id;
	private String name;
	private String pwd;
	private String tel;
	private String addr;
	private Date joindate;
	
	public MemberDTO() {
	}
	
	

	public MemberDTO(int idx, String id, String name, String pwd, String tel, String addr, Date joindate) {
		this.idx = idx;
		this.id = id;
		this.name = name;
		this.pwd = pwd;
		this.tel = tel;
		this.addr = addr;
		this.joindate = joindate;
	}



	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public Date getJoindate() {
		return joindate;
	}

	public void setJoindate(Date joindate) {
		this.joindate = joindate;
	}
	
	
	

}
