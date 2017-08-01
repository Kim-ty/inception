package kr.co.inception.search.vo;

public class GiBeomVO {

	public String blogURL;
	public String imageURL;

	public GiBeomVO(String blogURL, String imageURL) {
		this.blogURL = blogURL;
		this.imageURL = imageURL;
	}

	public String getBlogURL() {
		return blogURL;
	}

	public void setBlogURL(String blogURL) {
		this.blogURL = blogURL;
	}

	public String getImageURL() {
		return imageURL;
	}

	public void setImageURL(String imageURL) {
		this.imageURL = imageURL;
	}

}
