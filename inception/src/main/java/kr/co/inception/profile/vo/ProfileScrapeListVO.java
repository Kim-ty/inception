package kr.co.inception.profile.vo;

public class ProfileScrapeListVO {
	
	private String bidx;
	private String title;
	private String contents;
	private String userid;
	private String writedate;
	private String category;
	private int hitcnt;
	private String gcnt;
	private String bcnt;
	private String scrapecnt;
	private String rpcnt;
	private String profileid;
	private String scrapedate;
	private String thumbnail;
	
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	public String getWritedate() {
		return writedate;
	}
	public void setWritedate(String writedate) {
		this.writedate = writedate;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getHitcnt() {
		return hitcnt;
	}
	public void setHitcnt(int hitcnt) {
		this.hitcnt = hitcnt;
	}
	public String getGcnt() {
		return gcnt;
	}
	public void setGcnt(String gcnt) {
		this.gcnt = gcnt;
	}
	public String getBcnt() {
		return bcnt;
	}
	public void setBcnt(String bcnt) {
		this.bcnt = bcnt;
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
	public String getProfileid() {
		return profileid;
	}
	public void setProfileid(String profileid) {
		this.profileid = profileid;
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
