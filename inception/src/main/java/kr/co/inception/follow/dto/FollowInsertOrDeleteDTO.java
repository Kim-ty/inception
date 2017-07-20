package kr.co.inception.follow.dto;

public class FollowInsertOrDeleteDTO {

	private String userid;
	private String follow;
	private String follower;
	
	public String getFollower() {
		return follower;
	}
	public void setFollower(String follower) {
		this.follower = follower;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getFollow() {
		return follow;
	}
	public void setFollow(String follow) {
		this.follow = follow;
	}

}
