package kr.co.inception.follow.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.inception.follow.dto.FollowInsertOrDeleteDTO;
import kr.co.inception.follow.service.FollowService;
import kr.co.inception.follow.vo.FollowListVO;
import kr.co.inception.follow.vo.FollowerListVO;

@Controller
@RequestMapping("/follow")
public class FollowController {

	private static final Logger logger = LoggerFactory.getLogger(FollowController.class);

	@Autowired
	private FollowService followService;

	//web
	
	
	
	// android
	@RequestMapping(value = "/andfollowlist")
	@ResponseBody
	public List<FollowListVO> andfollwlist(@RequestParam("userid") String userid) {
		List<FollowListVO> followListVO = followService.followList(userid);

		return followListVO;

	}
	@RequestMapping(value = "/andfollowerlist")
	@ResponseBody
	public List<FollowerListVO> andfollwerlist(@RequestParam("userid") String userid) {
		List<FollowerListVO> followerListVO = followService.followerList(userid);

		return followerListVO;

	}
	
	@RequestMapping(value = "/andfollowcheck")
	@ResponseBody
	public Boolean androidfollowcheck(@RequestParam("userid") String userid,@RequestParam("follow") String follow) {
		FollowInsertOrDeleteDTO followInsertOrDeleteDTO = new FollowInsertOrDeleteDTO();
		followInsertOrDeleteDTO.setUserid(userid);
		followInsertOrDeleteDTO.setFollow(follow);
		int result = followService.followcheck(followInsertOrDeleteDTO);
		System.out.println(result);
		if (result == 0) {
			return false;
		}
		return true;
	}
	@RequestMapping(value = "/andfollowercheck")
	@ResponseBody
	public Boolean androidfollowercheck(@RequestParam("userid") String userid,@RequestParam("follower") String follower) {
		FollowInsertOrDeleteDTO followInsertOrDeleteDTO = new FollowInsertOrDeleteDTO();
		followInsertOrDeleteDTO.setUserid(userid);
		followInsertOrDeleteDTO.setFollower(follower);
		int result = followService.followercheck(followInsertOrDeleteDTO);
		if (result == 0) {
			return false;
		}
		return true;
	}

	
	@RequestMapping(value = "/andunfollow")
	@ResponseBody
	public String andunfollow(@RequestParam("userid") String userid,@RequestParam("follow") String follow) {
		FollowInsertOrDeleteDTO followInsertOrDeleteDTO = new FollowInsertOrDeleteDTO();
		followInsertOrDeleteDTO.setUserid(userid);
		followInsertOrDeleteDTO.setFollow(follow);
		followService.unfollowUser(followInsertOrDeleteDTO);
		String result = "뿅";
		return result;
	}
	
	@RequestMapping(value = "/andfollow")
	@ResponseBody
	public String andfollow(@RequestParam("userid") String userid,@RequestParam("follow") String follow) {
		FollowInsertOrDeleteDTO followInsertOrDeleteDTO = new FollowInsertOrDeleteDTO();
		followInsertOrDeleteDTO.setUserid(userid);
		followInsertOrDeleteDTO.setFollow(follow);
		followService.followUser(followInsertOrDeleteDTO);
		String result = "뿅";
		return result;
	}
	

}
