package kr.co.inception.search.vo;

import org.springframework.data.mongodb.core.mapping.Document;

@Document
public class ShopVO {

	public String searchWord;
	public String hashtag;
	public int code;
	public String name;
	public String imageURL;
	public int price;

	public ShopVO(String searchWord, String hashtag, int code, String name, String imageURL, int price) {
		this.searchWord = searchWord;
		this.hashtag = hashtag;
		this.code = code;
		this.name = name;
		this.imageURL = imageURL;
		this.price = price;
	}

	public String getSearchWord() {
		return searchWord;
	}

	public void setSearchWord(String searchWord) {
		this.searchWord = searchWord;
	}

	public String getHashtag() {
		return hashtag;
	}

	public void setHashtag(String hashtag) {
		this.hashtag = hashtag;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImageURL() {
		return imageURL;
	}

	public void setImageURL(String imageURL) {
		this.imageURL = imageURL;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

}
