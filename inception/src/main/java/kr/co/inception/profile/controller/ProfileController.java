package kr.co.inception.profile.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.inception.follow.service.FollowService;
import kr.co.inception.follow.vo.FollowListVO;
import kr.co.inception.follow.vo.FollowerListVO;
import kr.co.inception.profile.service.ProfileService;
import kr.co.inception.profile.vo.ProfileBoardListVO;
import kr.co.inception.profile.vo.ProfileReplyListVO;
import kr.co.inception.profile.vo.ProfileScrapeListVO;
import kr.co.inception.profile.vo.ProfileVO;
import kr.co.inception.user.vo.LoginVO;

@Controller
@RequestMapping("/profile")
public class ProfileController {

	private static final Logger logger = LoggerFactory.getLogger(ProfileController.class);

	@Autowired
	private ProfileService profileService;
	@Autowired
	private FollowService followService;

	@RequestMapping(value ="/{param1}/{param2}")
	public String boardSimple(@PathVariable("param1") String userid,@PathVariable("param2") String contents, Model model) {
		System.out.println(userid);
		System.out.println(contents);
		ProfileVO profileVO = profileService.showProfile(userid);
		model.addAttribute("profile", profileVO);
		return "forward:/profile/"+userid+"/"+contents+"2";
	}

	@RequestMapping(value ="/{param1}")
	public String boardSimple(@PathVariable("param1") String userid, Model model) {
		System.out.println(userid);
		ProfileVO profileVO = profileService.showProfile(userid);
		model.addAttribute("profile", profileVO);
		
		return "forward:/profile/"+userid+"/board2";
	}

	
	@RequestMapping(value = "/{param1}/board2")
	public String showProfileBoard(@PathVariable("param1") String userid, Model model) throws Exception {
		
		List<ProfileBoardListVO> profileBoardListVO = profileService.showProfileBoardList(userid);
		model.addAttribute("profileBoard", profileBoardListVO);
		return "ProfileBoardList";
	}

	@RequestMapping(value = "/{param1}/reply2")
	public String showProfileReply(@PathVariable("param1") String userid, Model model) throws Exception {
		List<ProfileReplyListVO> profileReplyListVO = profileService.showProfileReplyList(userid);
		model.addAttribute("profileReply", profileReplyListVO);
		return "ProfileReplyList";
	}

	@RequestMapping(value = "/{param1}/scrap2")
	public String showProfileScrape(@PathVariable("param1") String userid, Model model) throws Exception {
		List<ProfileScrapeListVO> profileScrapeListVO = profileService.showProfileScrapeList(userid);
		model.addAttribute("profileScrape", profileScrapeListVO);
		return "ProfileScrapeList";
	}

	@RequestMapping(value ="/{param1}/followlist2")
	public String showFollowList(@PathVariable("param1") String userid,HttpSession session,Model model){
		LoginVO loginVO  = (LoginVO) session.getAttribute("loginInfo");
		String loginid = loginVO.getUserid();

		List<FollowListVO> followListVO = followService.followList(userid,loginid);
		model.addAttribute("followList",followListVO);
		return "follow";
	}

	@RequestMapping(value ="/{param1}/followerlist2")
	public String showFollowerList(@PathVariable("param1") String userid,HttpSession session,Model model){
		LoginVO loginVO  = (LoginVO) session.getAttribute("loginInfo");
		String loginid = loginVO.getUserid();
		List<FollowerListVO> followerListVO = followService.followerList(userid,loginid);
		model.addAttribute("followerList",followerListVO);
		return "follower";
	}
	
	
	@RequestMapping(value = "/andmyscraplist")
	@ResponseBody
	public List<ProfileScrapeListVO> showandmyscraplist(@RequestParam("userid") String userid) throws Exception {

		List<ProfileScrapeListVO> profileScrapeListVO = profileService.showProfileScrapeList(userid);
		return profileScrapeListVO;
	}

	@RequestMapping(value = "/andshowprofile")
	@ResponseBody
	public ProfileVO androidshowprofile(@RequestParam("userid") String userid) throws Exception {
		ProfileVO profileVO = profileService.showProfile(userid);
		return profileVO;
	}

	@RequestMapping(value = "/andmyboardlist")
	@ResponseBody
	public List<ProfileBoardListVO> androidshowmyboardlist(@RequestParam("userid") String userid) throws Exception {

		List<ProfileBoardListVO> profileList = profileService.showProfileBoardList(userid);
		return profileList;
	}

	// @RequestMapping(value="/andmyboardlist")
	// @ResponseBody
	// public List<ProfileBoardListVO>
	// androidshowmyboardlist(@RequestParam("userid") String userid) throws
	// Exception{
	//
	// List<ProfileBoardListVO> profileBoardListVO =
	// profileService.showProfileBoardList(userid);
	// return profileBoardListVO;
	// }

}
