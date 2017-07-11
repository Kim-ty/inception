package kr.co.inception.profile.vo;

public class ProfileBoardListVO {
	
	private String title;
	private String contents;
	private String writedate;
	private String category;
	private String userid;
	private String hitcnt;
	private String scrapecnt;
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getHitcnt() {
		return hitcnt;
	}
	public void setHitcnt(String hitcnt) {
		this.hitcnt = hitcnt;
	}
	public String getScrapecnt() {
		return scrapecnt;
	}
	public void setScrapecnt(String scrapecnt) {
		this.scrapecnt = scrapecnt;
	}
	public String getRpcnt() {
		return rpcnt;
	}
	public void setRpcnt(String rpcnt) {
		this.rpcnt = rpcnt;
	}
	private String rpcnt;
	
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
	public String getWritedate() {
		return writedate;
	}
	public void setWritedate(String writedate) {
		this.writedate = writedate;
	}
	
	
}
