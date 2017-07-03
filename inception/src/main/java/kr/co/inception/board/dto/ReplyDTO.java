package kr.co.inception.board.dto;

public class ReplyDTO {
	
	private String bidx;
	private String userid;
	private String contents;
	private String targetreply;
	
	public String getBidx() {
		return bidx;
	}
	public void setBidx(String bidx) {
		this.bidx = bidx;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getTargetreply() {
		return targetreply;
	}
	public void setTargetreply(String targetreply) {
		this.targetreply = targetreply;
	}

	
}
