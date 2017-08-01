package kr.co.inception.main.service;

import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.co.inception.board.vo.BoardListVO;
import kr.co.inception.board.vo.TagListVO;
import kr.co.inception.main.vo.CategoryListVO;

public interface MainService {

	public List<CategoryListVO> CategoryListView();
	public String searchImageUpload(MultipartHttpServletRequest mRequest);
	public List<BoardListVO> FashionList();
	public List<BoardListVO> CarList();
}
