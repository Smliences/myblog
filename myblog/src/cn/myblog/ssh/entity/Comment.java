package cn.myblog.ssh.entity;

public class Comment {
	private int cid;
	private String name;
	private	String email;
	private String lmessage;
	private String ltime;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getLtime() {
		return ltime;
	}
	public void setLtime(String ltime) {
		this.ltime = ltime;
	}
	public String getLmessage() {
		return lmessage;
	}
	public void setLmessage(String lmessage) {
		this.lmessage = lmessage;
	}
	@Override
	public String toString() {
		return "Comment [cid=" + cid + ", name=" + name + ", email=" + email
				+ ", lmessage=" + lmessage + ", ltime=" + ltime + "]";
	}
	
}
