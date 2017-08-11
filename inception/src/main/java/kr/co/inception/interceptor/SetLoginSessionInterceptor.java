package kr.co.inception.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.co.inception.user.vo.LoginVO;

public class SetLoginSessionInterceptor extends HandlerInterceptorAdapter {

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {

		System.out.println("postHandle 에 오긴했어");
		LoginVO loginVO = (LoginVO) modelAndView.getModel().get("loginInfo");
		if (loginVO != null) {// login 성공 시
			String requestPage = (String) request.getSession().getAttribute("requestPage");
			request.getSession().invalidate();
			String userid = loginVO.getUserid();
			System.out.println("userid : "+userid);
			System.out.println("login sucess");
			request.getSession().setAttribute("loginInfo", loginVO);
			response.sendRedirect(requestPage);
		}

	}
}
