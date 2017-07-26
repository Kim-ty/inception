package kr.co.inception.search.vo;

import org.springframework.data.annotation.Id;

public class TestVO {

	@Id
	public String id;

	public String test;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}


	
}
