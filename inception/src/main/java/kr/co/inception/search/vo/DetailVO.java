package kr.co.inception.search.vo;


import java.util.List;

import org.springframework.data.mongodb.core.mapping.Document;

@Document
public class DetailVO {

	public String url;
	public String title;
	public int totalImage;
	public List<ImageURLVO> imageURL;

	public DetailVO(String url, String title, int totalImage, List<ImageURLVO> imageURL) {
		this.url = url;
		this.title = title;
		this.totalImage = totalImage;
		this.imageURL = imageURL;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getTotalImage() {
		return totalImage;
	}

	public void setTotalImage(int totalImage) {
		this.totalImage = totalImage;
	}

	public List<ImageURLVO> getImageURL() {
		return imageURL;
	}

	public void setImageURL(List<ImageURLVO> imageURL) {
		this.imageURL = imageURL;
	}

}
