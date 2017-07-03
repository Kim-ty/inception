package kr.co.inception.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.inception.user.dto.JoinDTO;
import kr.co.inception.user.dto.LoginDTO;
import kr.co.inception.user.dto.UpdateUserDTO;
import kr.co.inception.user.service.UserService;
import kr.co.inception.user.vo.JoinVO;
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
	public String joinUser(JoinDTO joinDTO) throws Exception{
		
		userService.joinUser(joinDTO);
		
		return "redirect:/";
		
	}
	
	@RequestMapping(value = "/idchk")
	public @ResponseBody int duplicationIdCheck(@ModelAttribute("joinDTO") JoinDTO joinDTO) throws Exception {
		System.out.println("아이디체크중");
		System.out.println(joinDTO.getUserid());
		
		int result = userService.idchk(joinDTO);
		System.out.println(result);

		return result;
	}
	
	@RequestMapping(value = "/emailchk")
	public @ResponseBody int duplicationEmailCheck(@ModelAttribute("joinDTO") JoinDTO joinDTO) throws Exception {
		System.out.println("이메일체크중");
		System.out.println(joinDTO.getUseremail());
		
		int result = userService.emailchk(joinDTO);
		System.out.println(result);

		return result;
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
	
	@RequestMapping(value="logout",method=RequestMethod.GET)
	public String logout(HttpServletRequest request){
		request.getSession().invalidate();
		return "redirect:/";
	}
	

}
