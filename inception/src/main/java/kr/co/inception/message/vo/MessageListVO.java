package kr.co.inception.message.vo;

public class MessageListVO {
	
	private String targetuserid;
	public String getTargetuserid() {
		return targetuserid;
	}
	public void setTargetuserid(String targetuserid) {
		this.targetuserid = targetuserid;
	}
	private String userid;
	private String writedate;
	private String message;
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
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
}
