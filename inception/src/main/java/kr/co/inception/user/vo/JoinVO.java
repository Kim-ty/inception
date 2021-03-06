package kr.co.inception.user.vo;

public class JoinVO {
	private String userid;
	private String userpw;
	private String useremail;
	private String profilepicture;
	private String joindate;
	private String sex;
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	public String getProfilepicture() {
		return profilepicture;
	}
	public void setProfilepicture(String profilepicture) {
		this.profilepicture = profilepicture;
	}
	public String getJoindate() {
		return joindate;
	}
	public void setJoindate(String joindate) {
		this.joindate = joindate;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	@Override
	public String toString() {
		return "JoinVO [userid=" + userid + ", userpw=" + userpw + ", useremail=" + useremail + ", profilepicture="
				+ profilepicture + ", joindate=" + joindate + ", sex=" + sex + "]";
	}
	
	
}
