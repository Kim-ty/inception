package kr.co.inception.follow.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.inception.board.vo.BoardListVO;
import kr.co.inception.follow.service.FollowService;
import kr.co.inception.follow.vo.FollowListVO;
import kr.co.inception.profile.controller.ProfileController;
import kr.co.inception.profile.vo.ProfileScrapeListVO;

@Controller
@RequestMapping("/follow")
public class FollowController {

	private static final Logger logger = LoggerFactory.getLogger(FollowController.class);

	@Autowired
	private FollowService followService;

	// android
	@RequestMapping(value = "/andfollowlist")
	@ResponseBody
	public List<FollowListVO> AllboardListJson(@RequestParam("userid") String userid) {
		List<FollowListVO> followListVO = followService.followList(userid);

		return followListVO;

	}



}
