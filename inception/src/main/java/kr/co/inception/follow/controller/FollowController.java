package kr.co.inception.follow.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.inception.follow.dto.FollowInsertOrDeleteDTO;
import kr.co.inception.follow.dto.FollowListDTO;
import kr.co.inception.follow.service.FollowService;
import kr.co.inception.follow.vo.FollowListVO;
import kr.co.inception.follow.vo.FollowerListVO;
import kr.co.inception.user.vo.LoginVO;

@Controller
@RequestMapping("/follow")
public class FollowController {

	private static final Logger logger = LoggerFactory.getLogger(FollowController.class);

	@Autowired
	private FollowService followService;

	
	@RequestMapping(value = "/followcheck")
	public String followcheck(@RequestParam("follow") String follow,HttpSession session, HttpServletRequest request) {
		LoginVO loginVO = (LoginVO) session.getAttribute("loginInfo");
		String loginid = loginVO.getUserid();
		System.out.println(follow);
		FollowInsertOrDeleteDTO followInsertOrDeleteDTO = new FollowInsertOrDeleteDTO();
		followInsertOrDeleteDTO.setUserid(loginid);
		followInsertOrDeleteDTO.setFollow(follow);
		followInsertOrDeleteDTO.getUserid();
		followInsertOrDeleteDTO.getFollow();
		request.setAttribute("followid", follow);
		if (followService.followcheck(followInsertOrDeleteDTO) == 1) {
			return "forward:/unfollow";
		} else {
			return "forward:/follow";
		}
	}


	// web
	@RequestMapping(value = "/follow")
	public @ResponseBody String follow(HttpSession session, HttpServletRequest request) {
		LoginVO loginVO = (LoginVO) session.getAttribute("loginInfo");
		String loginid = loginVO.getUserid();
		String followid = (String) request.getAttribute("followid");
		System.out.println("로그인ID : " + loginid + "팔로우ID : " + followid);
		FollowInsertOrDeleteDTO followInsertOrDeleteDTO = new FollowInsertOrDeleteDTO();
		followInsertOrDeleteDTO.setUserid(loginid);
		followInsertOrDeleteDTO.setFollow(followid);
		System.out.println(followInsertOrDeleteDTO.getUserid());
		System.out.println(followInsertOrDeleteDTO.getFollow());
		followService.followUser(followInsertOrDeleteDTO);
		return "unfollow";
	}

	@RequestMapping(value = "/unfollow")
	public @ResponseBody String unfollow(HttpSession session, HttpServletRequest request) {
		LoginVO loginVO = (LoginVO) session.getAttribute("loginInfo");
		String loginid = loginVO.getUserid();
		String unfollowid = (String) request.getAttribute("followid");
		System.out.println("로그인ID : " + loginid + "언팔로우ID : " + unfollowid);
		FollowInsertOrDeleteDTO followInsertOrDeleteDTO = new FollowInsertOrDeleteDTO();
		followInsertOrDeleteDTO.setUserid(loginid);
		followInsertOrDeleteDTO.setFollow(unfollowid);
		System.out.println(followInsertOrDeleteDTO.getUserid());
		System.out.println(followInsertOrDeleteDTO.getFollow());
		followService.unfollowUser(followInsertOrDeleteDTO);
		return "follow";
	}

	// android
	@RequestMapping(value = "/andfollowlist")
	@ResponseBody
	public List<FollowListVO> andfollwlist(@RequestParam("userid") String userid) {
		FollowListDTO followListDTO = new FollowListDTO();
		followListDTO.setUserid(userid);
		followListDTO.setLoginid(userid);
		List<FollowListVO> followListVO = followService.followList(followListDTO);

		return followListVO;

	}

	@RequestMapping(value = "/andfollowerlist")
	@ResponseBody
	public List<FollowerListVO> andfollwerlist(@RequestParam("userid") String userid) {
		FollowListDTO followListDTO = new FollowListDTO();
		followListDTO.setUserid(userid);
		followListDTO.setLoginid(userid);
		List<FollowerListVO> followerListVO = followService.followerList(followListDTO);

		return followerListVO;

	}

	@RequestMapping(value = "/andfollowcheck")
	@ResponseBody
	public Boolean androidfollowcheck(@RequestParam("userid") String userid, @RequestParam("follow") String follow) {
		FollowInsertOrDeleteDTO followInsertOrDeleteDTO = new FollowInsertOrDeleteDTO();
		followInsertOrDeleteDTO.setUserid(userid);
		followInsertOrDeleteDTO.setFollow(follow);
		if (followService.followcheck(followInsertOrDeleteDTO) == 1) {
			return true;
		} else {
			return false;
		}
	}

	@RequestMapping(value = "/andfollowercheck")
	@ResponseBody
	public Boolean androidfollowercheck(@RequestParam("userid") String userid,
			@RequestParam("follower") String follower) {
		FollowInsertOrDeleteDTO followInsertOrDeleteDTO = new FollowInsertOrDeleteDTO();
		followInsertOrDeleteDTO.setUserid(userid);
		followInsertOrDeleteDTO.setFollower(follower);
		if (followService.followercheck(followInsertOrDeleteDTO) == 1) {
			return true;
		} else {
			return false;
		}
	}

	@RequestMapping(value = "/andunfollow")
	@ResponseBody
	public String andunfollow(@RequestParam("userid") String userid, @RequestParam("follow") String follow) {
		FollowInsertOrDeleteDTO followInsertOrDeleteDTO = new FollowInsertOrDeleteDTO();
		followInsertOrDeleteDTO.setUserid(userid);
		followInsertOrDeleteDTO.setFollow(follow);
		followService.unfollowUser(followInsertOrDeleteDTO);
		String result = "뿅";
		return result;
	}

	@RequestMapping(value = "/andfollow")
	@ResponseBody
	public String andfollow(@RequestParam("userid") String userid, @RequestParam("follow") String follow) {
		FollowInsertOrDeleteDTO followInsertOrDeleteDTO = new FollowInsertOrDeleteDTO();
		followInsertOrDeleteDTO.setUserid(userid);
		followInsertOrDeleteDTO.setFollow(follow);
		followService.followUser(followInsertOrDeleteDTO);
		String result = "뿅";
		return result;
	}

}
