package kr.co.inception.search.dao;

import java.util.List;

import kr.co.inception.search.vo.DetailVO;
import kr.co.inception.search.vo.HashtagVO;
import kr.co.inception.search.vo.ShopVO;
import kr.co.inception.search.vo.showVO;

public interface SearchDAO {

	public List<ShopVO> shop(String searchWord, String hashtag);
	public HashtagVO test(String param);
	public List<showVO> show();
	public List<DetailVO> detail(String searchWord, String detail);

}
