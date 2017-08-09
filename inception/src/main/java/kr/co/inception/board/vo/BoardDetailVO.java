package kr.co.inception.board.vo;

import java.util.List;

public class BoardDetailVO {

	private String bidx;
	private String title;
	private String userid;
	private String writedate;
	private String contents;
	private String hitcount;
	private String category;
	private String good;
	private String bad;
	private String scrape;
	private List<GooderListVO> gooder;
	private List<BaderListVO> bader;
	private List<ScraperListVO> scraper;
	private List<TagListVO> tag;
	private String replycount;
	
	public List<GooderListVO> getGooder() {
		return gooder;
	}
	public void setGooder(List<GooderListVO> gooder) {
		this.gooder = gooder;
	}
	public List<BaderListVO> getBader() {
		return bader;
	}
	public void setBader(List<BaderListVO> bader) {
		this.bader = bader;
	}
	public List<ScraperListVO> getScraper() {
		return scraper;
	}
	public void setScraper(List<ScraperListVO> scraper) {
		this.scraper = scraper;
	}
	public List<TagListVO> getTag() {
		return tag;
	}
	public void setTag(List<TagListVO> tag) {
		this.tag = tag;
	}
	public String getReplycount() {
		return replycount;
	}
	public void setReplycount(String replycount) {
		this.replycount = replycount;
	}
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
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getWritedate() {
		return writedate;
	}
	public void setWritedate(String writedate) {
		this.writedate = writedate;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getHitcount() {
		return hitcount;
	}
	public void setHitcount(String hitcount) {
		this.hitcount = hitcount;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getGood() {
		return good;
	}
	public void setGood(String good) {
		this.good = good;
	}
	public String getBad() {
		return bad;
	}
	public void setBad(String bad) {
		this.bad = bad;
	}
	public String getScrape() {
		return scrape;
	}
	public void setScrape(String scrape) {
		this.scrape = scrape;
	}
	
}
