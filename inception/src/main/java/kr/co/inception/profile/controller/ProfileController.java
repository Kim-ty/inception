package kr.co.inception.profile.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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

	
	@RequestMapping("/profile/{param1}")
	public String boardSimple(@PathVariable("param1") String userid,Model model){

		ProfileVO profileVO = profileService.showProfile(userid);
		model.addAttribute("profile", profileVO);
		
		return "profile";
	}

	@RequestMapping(value = "showprofileBoard",method=RequestMethod.POST)
	public String showProfileBoard(String userid,Model model) throws Exception {
		List<ProfileBoardListVO> profileBoardListVO = profileService.showProfileBoardList(userid);
		model.addAttribute("profileboardList", profileBoardListVO);
		return "profileboardList";
	}

	@RequestMapping(value = "showprofileReply",method=RequestMethod.POST)
	public String showProfileReply(String userid,Model model) throws Exception {
		List<ProfileReplyListVO> profileReplyListVO = profileService.showProfileReplyList(userid);
		model.addAttribute("profileboardList", profileReplyListVO);
		return "profileReplyList";
	}

	@RequestMapping(value = "showprofileScrape",method=RequestMethod.POST)
	public String showProfileScrape(String userid,Model model) throws Exception {
		List<ProfileScrapeListVO> profileScrapeListVO = profileService.showProfileScrapeList(userid);
		model.addAttribute("profileboardList", profileScrapeListVO);
		return "profileScrapeList";
	}
	
	@RequestMapping(value="/andmyscraplist")
	@ResponseBody
	public List<ProfileScrapeListVO> showandmyscraplist(@RequestParam("userid") String userid) throws Exception{
		
		List<ProfileScrapeListVO> profileScrapeListVO = profileService.showProfileScrapeList(userid);
		return profileScrapeListVO;
	}
	
	@RequestMapping(value="/andshowprofile")
	@ResponseBody
	public ProfileVO androidshowprofile(@RequestParam("userid") String userid) throws Exception{
		ProfileVO profileVO = profileService.showProfile(userid);
		return profileVO;
	}
	
//	@RequestMapping(value="/andmyboardlist")
//	@ResponseBody
//	public List<ProfileBoardListVO> androidshowmyboardlist(@RequestParam("userid") String userid) throws Exception{
//		
//		List<ProfileBoardListVO> profileBoardListVO = profileService.showProfileBoardList(userid);
//		return profileBoardListVO;
//	}

}
