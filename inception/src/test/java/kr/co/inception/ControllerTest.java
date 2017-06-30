package kr.co.inception;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import kr.co.inception.service.UserService;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/**/*-context.xml"})

@WebAppConfiguration
public class ControllerTest {
	
	@Autowired
	private WebApplicationContext wac;
	private MockMvc mockMvc;
	private UserService userService;
	
	

	@Before
	public void setUp(){
		this.mockMvc = MockMvcBuilders.webAppContextSetup(this.wac).build();
	}

//	@Test
//	public void userjoin() throws Exception{
//		System.out.println("회원가입 테스트");
//		mockMvc.perform(MockMvcRequestBuilders.post("/user/joinchk").param("userid","kkb1").param("userpw","312").param("useremail","asd@gmail.com").param("profilepicture","kkb.jpg").param("sex", "남자")).andDo(print());
//	}
	
//	@Test
//	public void userlogin() throws Exception{
//		System.out.println("로그인 테스트");
//		mockMvc.perform(MockMvcRequestBuilders.post("/user/loginchk").param("userid","kkb1").param("userpw","312")).andDo(print());
//	}
//	@Test
//	public void updateUser() throws Exception{
//		System.out.println("회원정보수정 테스트");
//		mockMvc.perform(MockMvcRequestBuilders.post("/user/updatechk").param("userid","kkb1").param("userpw","33333").param("profilepicture","두번째로바꿈").param("useremail","또바꿈").param("sex","여자")).andDo(print());
//	}
//	@Test
//	public void movepageJoinform() throws Exception{
//		System.out.println("회원가입화면으로로 이동");
//		mockMvc.perform(MockMvcRequestBuilders.post("/user/join")).andDo(print());
//	}

}
