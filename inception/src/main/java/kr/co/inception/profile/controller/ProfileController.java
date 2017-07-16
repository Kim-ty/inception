package kr.co.inception.profile.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.inception.board.vo.BoardListVO;
import kr.co.inception.board.vo.BoardSimpleVO;
import kr.co.inception.profile.dto.ProfileDTO;
import kr.co.inception.profile.service.ProfileService;
import kr.co.inception.profile.vo.ProfileBoardListVO;
import kr.co.inception.profile.vo.ProfileReplyListVO;
import kr.co.inception.profile.vo.ProfileScrapeListVO;
import kr.co.inception.profile.vo.ProfileVO;

@Controller
@RequestMapping("/profile")
public class ProfileController {

	private static final Logger logger = LoggerFactory.getLogger(ProfileController.class);

	@Autowired
	private ProfileService profileService;

	@RequestMapping("/{param1}")
	public String boardSimple(@PathVariable("param1") String userid, Model model) {

		ProfileVO profileVO = profileService.showProfile(userid);
		model.addAttribute("profile", profileVO);

		return "Profile";
	}

	@RequestMapping(value = "/{param1}/board")
	public String showProfileBoard(@PathVariable("param1") String userid,@ModelAttribute("profile") ProfileVO profileVO, Model model) throws Exception {
		System.out.println(profileVO.getUserid());
		List<ProfileBoardListVO> profileBoardListVO = profileService.showProfileBoardList(userid);
		model.addAttribute("profileBoard", profileBoardListVO);
		model.addAttribute("profile",profileVO);
		return "ProfileBoardList";
	}

	@RequestMapping(value = "/{param1}/reply")
	public String showProfileReply(@PathVariable("param1") String userid,@ModelAttribute("profile") ProfileVO profileVO, Model model) throws Exception {
		System.out.println(profileVO.getUserid());
		List<ProfileReplyListVO> profileReplyListVO = profileService.showProfileReplyList(userid);
		model.addAttribute("profileReply", profileReplyListVO);
		model.addAttribute("profile",profileVO);
		return "ProfileReplyList";
	}

	@RequestMapping(value = "/{param1}/scrape")
	public String showProfileScrape(@PathVariable("param1") String userid,@ModelAttribute("profile") ProfileVO profileVO, Model model) throws Exception {
		System.out.println(profileVO.getUserid());
		List<ProfileScrapeListVO> profileScrapeListVO = profileService.showProfileScrapeList(userid);
		model.addAttribute("profileScrape", profileScrapeListVO);
		model.addAttribute("profile",profileVO);
		return "ProfileScrapeList";
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
