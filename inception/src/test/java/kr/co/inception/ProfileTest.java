package kr.co.inception;

import static org.junit.Assert.fail;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.inception.profile.dao.ProfileDAO;
import kr.co.inception.profile.dto.ProfileDTO;
import kr.co.inception.profile.service.ProfileService;
import kr.co.inception.user.dao.UserDao;
import kr.co.inception.user.dto.LoginDTO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class ProfileTest {

	@Autowired
	ProfileService profileservice;
	
	@Autowired
	ProfileDAO profileDAO;

	@Autowired
	UserDao userDao;
	
//	@Test
//	public void login(){
//		LoginDTO logindto = new LoginDTO();
//		logindto.setUserid("kimty");
//		logindto.setUserpw("1234");
//		System.out.println("로그인로그인로그인"+userDao.loginUser(logindto));
//	}
//	
//	@Test
//	public void showprofileTest() {
//		ProfileDTO profileDTO = new ProfileDTO();
//		profileDTO.setUserid("kimty");
//		System.out.println(profileDTO.getUserid());
//		System.out.println(profileDAO.showProfile(profileDTO));
//		//System.out.println(profileservice.showProfile(profileDTO));
//	}

	@Test
	public void showprofileBoard(){
		System.out.println(profileservice.showProfileBoardList("kimty"));
	}
	

	

}
