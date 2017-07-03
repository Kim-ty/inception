package kr.co.inception.user.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.inception.user.dto.JoinDTO;
import kr.co.inception.user.dto.LoginDTO;
import kr.co.inception.user.dto.UpdateUserDTO;
import kr.co.inception.user.service.UserService;
import kr.co.inception.user.vo.LoginVO;


@Controller
@RequestMapping("/user")
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
//	각 리턴값(뷰 이동)과 urlmapping은 수정해야함
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/join")
	public String move_join(){
		return "Join";
	}
	
	@RequestMapping("/login")
	public String move_login(){
		return "Login";
	}
	
	@RequestMapping(value="joinchk",method=RequestMethod.POST)
	public String joinUser(JoinDTO joinDTO) {
		userService.joinUser(joinDTO);
		
		return "redirect:/login";
		
	}
	
	@RequestMapping(value="loginchk",method=RequestMethod.POST)
	public String loginUser(LoginDTO loginDTO,Model model,HttpSession session){
		LoginVO loginVO = userService.loginUser(loginDTO);
		System.out.println(loginVO);
		model.addAttribute("loginInfo",loginVO);
		session.setAttribute("loginInfo",loginVO);
		System.out.println("로그인성공");
		return "redirect:/";
		
	}
	
	@RequestMapping(value="updatechk",method=RequestMethod.POST)
	public String updateUser(UpdateUserDTO updateuserDTO){
		userService.updateUser(updateuserDTO);
		return "redirect:/login";
	}
	

}
