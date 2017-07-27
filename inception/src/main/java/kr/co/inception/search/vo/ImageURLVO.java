package kr.co.inception.search.vo;

import org.springframework.data.mongodb.core.mapping.Document;

@Document
public class ImageURLVO {

	public String index;
	public String url;

	public ImageURLVO(String index, String url) {
		super();
		this.index = index;
		this.url = url;
	}

	public String getIndex() {
		return index;
	}

	public void setIndex(String index) {
		this.index = index;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

}
