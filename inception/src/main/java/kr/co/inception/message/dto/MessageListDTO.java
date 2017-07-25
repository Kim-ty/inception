package kr.co.inception.message.dto;

public class MessageListDTO {
	
	private String userid;
	private String targetuserid;
	private String message;
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getTargetuserid() {
		return targetuserid;
	}
	public void setTargetuserid(String targetuserid) {
		this.targetuserid = targetuserid;
	}

}
