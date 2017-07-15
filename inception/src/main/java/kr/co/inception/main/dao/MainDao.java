package kr.co.inception.main.dao;

import java.util.List;

import kr.co.inception.board.vo.BoardListVO;
import kr.co.inception.main.vo.CategoryListVO;

public interface MainDao {
	
	public List<CategoryListVO> CategoryListView();
	public List<BoardListVO> FashionList();
	public List<BoardListVO> CarList();

}
