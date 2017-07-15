package kr.co.inception.profile.dao;

import java.util.List;

import kr.co.inception.profile.dto.ProfileDTO;
import kr.co.inception.profile.vo.ProfileBoardListVO;
import kr.co.inception.profile.vo.ProfileReplyListVO;
import kr.co.inception.profile.vo.ProfileScrapeListVO;
import kr.co.inception.profile.vo.ProfileVO;

public interface ProfileDAO {

	public ProfileVO showProfile(String userid);
	public List<ProfileBoardListVO> showProfileBoardList(String userid);
	public List<ProfileReplyListVO> showProfileReplyList(String userid);
	public List<ProfileScrapeListVO> showProfileScrapeList(String userid);

}
