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

import kr.co.inception.message.service.MessageService;
import kr.co.inception.user.service.UserService;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/**/*-context.xml"})

@WebAppConfiguration
public class ControllerTest {
	
	@Autowired
	private WebApplicationContext wac;
	private MockMvc mockMvc;
	private UserService userService;
	private MessageService messageservice;

	
	

	@Before
	public void setUp(){
		this.mockMvc = MockMvcBuilders.webAppContextSetup(this.wac).build();
	}

//	@Test
//	public void userjoin() throws Exception{
//		System.out.println("�쉶�썝媛��엯 �뀒�뒪�듃");
//		mockMvc.perform(MockMvcRequestBuilders.post("/user/joinchk").param("userid","kkb1").param("userpw","312").param("useremail","asd@gmail.com").param("profilepicture","kkb.jpg").param("sex", "�궓�옄")).andDo(print());
//	}
	
//	@Test
//	public void userlogin() throws Exception{
//		System.out.println("濡쒓렇�씤 �뀒�뒪�듃");
//		mockMvc.perform(MockMvcRequestBuilders.post("/user/loginchk").param("userid","kkb1").param("userpw","312")).andDo(print());
//	}
//	@Test
//	public void updateUser() throws Exception{
//		System.out.println("�쉶�썝�젙蹂댁닔�젙 �뀒�뒪�듃");
//		mockMvc.perform(MockMvcRequestBuilders.post("/user/updatechk").param("userid","kkb1").param("userpw","33333").param("profilepicture","�몢踰덉㎏濡쒕컮轅�").param("useremail","�삉諛붽퓞").param("sex","�뿬�옄")).andDo(print());
//	}
//	@Test
//	public void movepageJoinform() throws Exception{
//		System.out.println("�쉶�썝媛��엯�솕硫댁쑝濡쒕줈 �씠�룞");
//		mockMvc.perform(MockMvcRequestBuilders.post("/user/join")).andDo(print());
//	}
	
	@Test
	public void selectcategory() throws Exception{
		mockMvc.perform(MockMvcRequestBuilders.post("/message/andmessagelist?targetuserid=kkb1")).andDo(print());
	}

}
