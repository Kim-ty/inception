package kr.co.inception.follow.service;

import java.util.List;

import kr.co.inception.follow.dto.FollowInsertOrDeleteDTO;
import kr.co.inception.follow.vo.FollowListVO;
import kr.co.inception.follow.vo.FollowerListVO;

public interface FollowService {

	public void followUser(FollowInsertOrDeleteDTO followInsertOrDeleteDTO);
	public void unfollowUser(FollowInsertOrDeleteDTO followInsertOrDeleteDTO);
	public List<FollowListVO> followList(String userid,String loginid);
	public List<FollowerListVO> followerList(String userid,String loginid);
	public String followcheck(FollowInsertOrDeleteDTO followInsertOrDeleteDTO);
	public String followercheck(FollowInsertOrDeleteDTO followInsertOrDeleteDTO);

}
