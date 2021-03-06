package kr.co.inception.user.dto;

public class UpdateUserDTO {
	private String userid;
	private String userpw;
	private String useremail;
	private String profilepicture;

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

	@Override
	public String toString() {
		return "UpdateUserDTO [userid=" + userid + ", userpw=" + userpw + ", useremail=" + useremail
				+ ", profilepicture=" + profilepicture + ", sex="  + "]";
	}
}
