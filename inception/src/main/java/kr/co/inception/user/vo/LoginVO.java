package kr.co.inception.user.vo;

public class LoginVO {
	private String userid;
	private String useremail;
	private String profilepicture;
	private String sex;

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

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	@Override
	public String toString() {
		return "LoginVO [userid=" + userid + ", useremail=" + useremail + ", profilepicture=" + profilepicture
				+ ", sex=" + sex + "]";
	}
}
