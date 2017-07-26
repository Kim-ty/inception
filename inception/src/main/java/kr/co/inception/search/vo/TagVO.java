package kr.co.inception.search.vo;

import org.springframework.data.mongodb.core.mapping.Document;

@Document
public class TagVO {

	public int rank;
	public int weight;
	public String hashtag;

	public TagVO(int rank, int weight, String hashtag) {
		this.rank = rank;
		this.weight = weight;
		this.hashtag = hashtag;
	}

	public int getRank() {
		return rank;
	}

	public void setRank(int rank) {
		this.rank = rank;
	}

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

	public String getHashtag() {
		return hashtag;
	}

	public void setHashtag(String hashtag) {
		this.hashtag = hashtag;
	}

}
