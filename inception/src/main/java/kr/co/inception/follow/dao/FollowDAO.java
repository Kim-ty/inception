package kr.co.inception.follow.dao;

import java.util.List;

import kr.co.inception.follow.dto.FollowInsertOrDeleteDTO;
import kr.co.inception.follow.vo.FollowListVO;
import kr.co.inception.follow.vo.FollowerListVO;

public interface FollowDAO {
	
	public void followUser(FollowInsertOrDeleteDTO followInsertOrDeleteDTO);
	public void unfollowUser(FollowInsertOrDeleteDTO followInsertOrDeleteDTO);
	public List<FollowListVO> followList(String userid);
	public List<FollowerListVO> followerList(String userid);
	
}
