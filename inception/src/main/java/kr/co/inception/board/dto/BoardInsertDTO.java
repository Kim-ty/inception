package kr.co.inception.board.dto;

import java.util.List;

public class BoardInsertDTO {
	
	private String title;
	private String userid;
	private String contents;
	private String category;
	private List<BoardTagDTO> tagList;
	
	public String getTitle() {
		return title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getUserid() {
		return userid;
	}
	
	public void setUserid(String userid) {
		this.userid = userid;
	}
	
	public String getContents() {
		return contents;
	}
	
	public void setContents(String contents) {
		this.contents = contents;
	}
	
	public String getCategory() {
		return category;
	}
	
	public void setCategory(String category) {
		this.category = category;
	}

	public List<BoardTagDTO> getTagList() {
		return tagList;
	}

	public void setTagList(List<BoardTagDTO> tagList) {
		this.tagList = tagList;
	}
	
	

}
