package kr.co.inception;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.inception.follow.dto.FollowInsertOrDeleteDTO;
import kr.co.inception.follow.service.FollowService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class followTest {

	@Autowired
	FollowService followservice;
	
	@Test
	public void test() {
		
		FollowInsertOrDeleteDTO followInsertOrDeleteDTO = new FollowInsertOrDeleteDTO();
		
		followInsertOrDeleteDTO.setUserid("kimty");
		followInsertOrDeleteDTO.setFollow("USER01");
		
		followservice.followList("kimty");
		followservice.followerList("kimty");
		followservice.unfollowUser(followInsertOrDeleteDTO);
	}

}
