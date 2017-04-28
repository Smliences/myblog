package cn.myblog.ssh.entity;

public class Article {
	private int aid;
	private String title;
	private String content;
	private String wtime;
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWtime() {
		return wtime;
	}
	public void setWtime(String wtime) {
		this.wtime = wtime;
	}
	@Override
	public String toString() {
		return "Article [aid=" + aid + ", title=" + title + ", content="
				+ content + ", wtime=" + wtime + "]";
	}
	
}
