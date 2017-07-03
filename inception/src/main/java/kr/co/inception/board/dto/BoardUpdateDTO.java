package kr.co.inception.board.dto;

import java.util.List;

public class BoardUpdateDTO {
	
	
	private String bidx;
	private String title;
	private String contents;
	private String userid;
	private List<String> tag;
	
	public String getBidx() {
		return bidx;
	}
	public void setBidx(String bidx) {
		this.bidx = bidx;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public List<String> getTag() {
		return tag;
	}
	public void setTag(List<String> tag) {
		this.tag = tag;
	}
	
	
	
	
}
