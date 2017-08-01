package kr.co.inception.main.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.inception.board.vo.BoardListVO;
import kr.co.inception.board.vo.TagListVO;
import kr.co.inception.main.dao.MainDao;
import kr.co.inception.main.vo.CategoryListVO;

@Repository
public class MainDaoImpl implements MainDao{
	
	private static final String namespace="kr.co.inception.mapper.mainMapper";

	@Autowired
	SqlSession sqlSession;

	@Override
	public List<CategoryListVO> CategoryListView() {
		return sqlSession.selectList(namespace+".categoryList");
	}

	@Override
	public List<BoardListVO> FashionList() {
		return sqlSession.selectList(namespace+".fashionList");
	}
	
	@Override
	public List<BoardListVO> CarList() {
		return sqlSession.selectList(namespace+".carList");
	}
	

}