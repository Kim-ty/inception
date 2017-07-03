package kr.co.inception.main.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.inception.main.dao.MainDao;
import kr.co.inception.main.service.MainService;
import kr.co.inception.main.vo.CategoryListVO;

@Service
public class MainServiceImpl implements MainService{
	
	@Autowired
	private MainDao mainDao;

	@Override
	public List<CategoryListVO> CategoryListView() {
		return mainDao.CategoryListView();
	}

}
