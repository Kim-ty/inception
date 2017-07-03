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
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProfileBoardListVO> showProfileBoardList(String userid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProfileReplyListVO> showProfileReplyList(String userid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProfileScrapeListVO> showProfileScrapeList(String userid) {
		// TODO Auto-generated method stub
		return null;
	}

}
