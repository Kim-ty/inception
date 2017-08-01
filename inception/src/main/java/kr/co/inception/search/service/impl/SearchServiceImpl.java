package kr.co.inception.search.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.inception.search.dao.SearchDAO;
import kr.co.inception.search.service.SearchService;
import kr.co.inception.search.vo.DetailVO;
import kr.co.inception.search.vo.HashtagVO;
import kr.co.inception.search.vo.ShopVO;
import kr.co.inception.search.vo.showVO;

@Service
public class SearchServiceImpl implements SearchService {

	@Autowired
	SearchDAO searchDAO;

	@Override
	public List<ShopVO> shop(String searchWord, String hashtag) {
		return searchDAO.shop(searchWord, hashtag);
	}

	@Override
	public HashtagVO wordCloud(String param) {
		return searchDAO.wordCloud(param);
	}

	@Override
	public List<showVO> showList() {
		return searchDAO.showList();
	}

	@Override
	public List<DetailVO> detail(String searchWord, String detail) {
		return searchDAO.detail(searchWord, detail);
	}

}
