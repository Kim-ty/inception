package kr.co.inception.profile.vo;

public class ProfileScrapeListVO {
	
	private String bidx;
	private String title;
	private String userid;
	private String contents;
	private String writeuserid;
	private String scrapedate;
	
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
	public String getWriteuserid() {
		return writeuserid;
	}
	public void setWriteuserid(String writeuserid) {
		this.writeuserid = writeuserid;
	}
	public String getScrapedate() {
		return scrapedate;
	}
	public void setScrapedate(String scrapedate) {
		this.scrapedate = scrapedate;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getBidx() {
		return bidx;
	}
	public void setBidx(String bidx) {
		this.bidx = bidx;
	}
	
}
