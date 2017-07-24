package kr.co.inception.follow.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.inception.follow.dao.FollowDAO;
import kr.co.inception.follow.dto.FollowInsertOrDeleteDTO;
import kr.co.inception.follow.vo.FollowListVO;
import kr.co.inception.follow.vo.FollowerListVO;


@Repository
public class FollowDAOImpl implements FollowDAO{
	
	public static final String nameSpace= "kr.co.inception.mapper.followMapper";
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public void followUser(FollowInsertOrDeleteDTO followInsertOrDeleteDTO) {
		sqlSession.insert(nameSpace+".follow", followInsertOrDeleteDTO);
	}

	@Override
	public void unfollowUser(FollowInsertOrDeleteDTO followInsertOrDeleteDTO) {
		sqlSession.delete(nameSpace+".unfollow",followInsertOrDeleteDTO);
	}

	@Override
	public List<FollowListVO> followList(String userid) {
		return sqlSession.selectList(nameSpace+".followList", userid);
	}

	@Override
	public List<FollowerListVO> followerList(String userid) {
		return sqlSession.selectList(nameSpace+".followerList", userid);
	}

	@Override
	public String followcheck(FollowInsertOrDeleteDTO followInsertOrDeleteDTO){
		return sqlSession.selectOne(nameSpace+".followCheck",followInsertOrDeleteDTO);
	}

	@Override
	public String followercheck(FollowInsertOrDeleteDTO followInsertOrDeleteDTO) {
		return sqlSession.selectOne(nameSpace+".followerCheck",followInsertOrDeleteDTO);
	}

}
