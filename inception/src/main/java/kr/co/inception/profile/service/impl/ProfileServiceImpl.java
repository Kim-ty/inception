package kr.co.inception.profile.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.inception.profile.dao.ProfileDAO;
import kr.co.inception.profile.dto.ProfileDTO;
import kr.co.inception.profile.service.ProfileService;
import kr.co.inception.profile.vo.ProfileBoardListVO;
import kr.co.inception.profile.vo.ProfileReplyListVO;
import kr.co.inception.profile.vo.ProfileScrapeListVO;
import kr.co.inception.profile.vo.ProfileVO;

@Service
public class ProfileServiceImpl implements ProfileService{

	@Autowired
	private ProfileDAO profileDAO;
	
	@Override
	public ProfileVO showProfile(ProfileDTO profileDTO) {
		return profileDAO.showProfile(profileDTO);
	}

	@Override
	public List<ProfileBoardListVO> showProfileBoardList(String userid) {
		return profileDAO.showProfileBoardList(userid);
	}

	@Override
	public List<ProfileReplyListVO> showProfileReplyList(String userid) {
		return profileDAO.showProfileReplyList(userid);
	}

	@Override
	public List<ProfileScrapeListVO> showProfileScrapeList(String userid) {
		return profileDAO.showProfileScrapeList(userid);
	}

}
