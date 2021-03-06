package kr.co.inception.profile.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.inception.profile.dao.ProfileDAO;
import kr.co.inception.profile.dto.ProfileDTO;
import kr.co.inception.profile.vo.ProfileBoardListVO;
import kr.co.inception.profile.vo.ProfileReplyListVO;
import kr.co.inception.profile.vo.ProfileScrapeListVO;
import kr.co.inception.profile.vo.ProfileVO;

@Repository
public class ProfileDAOImpl implements ProfileDAO {

	private static final String namespace = "kr.co.inception.mapper.profileMapper";

	@Autowired
	SqlSession sqlSession;

	@Override
	public ProfileVO showProfile(String userid) {
		return sqlSession.selectOne(namespace + ".showProfile",userid);
	}

	@Override
	public List<ProfileBoardListVO> showProfileBoardList(String userid) {
		return sqlSession.selectList(namespace + ".showProfileBoardList",userid);
	}

	@Override
	public List<ProfileReplyListVO> showProfileReplyList(String userid) {
		return sqlSession.selectList(namespace + ".showProfileReplyList",userid);
	}

	@Override
	public List<ProfileScrapeListVO> showProfileScrapeList(String userid) {
		return sqlSession.selectList(namespace + ".showProfileScrapeList",userid);
	}

}
