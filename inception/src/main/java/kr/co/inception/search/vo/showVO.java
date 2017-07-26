package kr.co.inception.search.vo;

import org.springframework.data.annotation.Id;

public class showVO {

	@Id
	public String id;
	public int total;

	public showVO(String id, int total) {
		super();
		this.id = id;
		this.total = total;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

}
