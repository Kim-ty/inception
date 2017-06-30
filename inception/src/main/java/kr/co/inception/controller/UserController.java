package kr.co.inception.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.inception.dto.JoinDTO;
import kr.co.inception.dto.LoginDTO;
import kr.co.inception.dto.UpdateUserDTO;
import kr.co.inception.service.UserService;
import kr.co.inception.vo.LoginVO;


@Controller
@RequestMapping("/user")
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

//	각 리턴값(뷰 이동)과 urlmapping은 수정해야함
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/join")
	public String join(){
		return "join_form";
	}
	
	@RequestMapping(value="joinchk",method=RequestMethod.POST)
	public String joinUser(JoinDTO joinDTO) {
		userService.joinUser(joinDTO);
		
		return "redirect:/login";
		
	}
	
	@RequestMapping(value="loginchk",method=RequestMethod.POST)
	public String loginUser(LoginDTO loginDTO){
		LoginVO loginVO = userService.loginUser(loginDTO);
		System.out.println(loginVO);
		System.out.println("로그인성공");
		return "redirect:/login";
		
	}
	
	@RequestMapping(value="updatechk",method=RequestMethod.POST)
	public String updateUser(UpdateUserDTO updateuserDTO){
		userService.updateUser(updateuserDTO);
		return "redirect:/login";
	}
	

}
