package kr.co.inception.follow.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.inception.follow.dao.FollowDAO;
import kr.co.inception.follow.dto.FollowInsertOrDeleteDTO;
import kr.co.inception.follow.service.FollowService;
import kr.co.inception.follow.vo.FollowListVO;
import kr.co.inception.follow.vo.FollowerListVO;

@Service
public class FollowServiceImpl implements FollowService {

	@Autowired
	FollowDAO followDAO;

	@Override
	public void followUser(FollowInsertOrDeleteDTO followInsertOrDeleteDTO) {
		followDAO.followUser(followInsertOrDeleteDTO);
	}

	@Override
	public void unfollowUser(FollowInsertOrDeleteDTO followInsertOrDeleteDTO) {
		followDAO.unfollowUser(followInsertOrDeleteDTO);
	}

	@Override
	public List<FollowListVO> followList(String userid,String loginid) {
		return followDAO.followList(userid);
	}

	@Override
	public List<FollowerListVO> followerList(String userid,String loginid) {
		return followDAO.followerList(userid);
	}

	@Override
	public String followcheck(FollowInsertOrDeleteDTO followInsertOrDeleteDTO) {
		return followDAO.followcheck(followInsertOrDeleteDTO);
	}

	@Override
	public String followercheck(FollowInsertOrDeleteDTO followInsertOrDeleteDTO) {
		return followDAO.followercheck(followInsertOrDeleteDTO);
	}

}
