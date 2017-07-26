package kr.co.inception.search.vo;

import java.util.List;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document
public class HashtagVO {

	@Id
	public String id;
	public List<TagVO> tags;

	public HashtagVO(String id, List<TagVO> tags) {
		this.id = id;
		this.tags = tags;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public List<TagVO> getTags() {
		return tags;
	}

	public void setTags(List<TagVO> tags) {
		this.tags = tags;
	}

}
