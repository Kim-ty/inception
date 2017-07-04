package kr.co.inception.main.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import kr.co.inception.main.service.MainService;
import kr.co.inception.main.vo.CategoryListVO;

@Controller
@RequestMapping("/")
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);

//	각 리턴값(뷰 이동)과 urlmapping은 수정해야함
	
	@Autowired
	private MainService mainService;
	
	
	//메인페이지 이동
		@RequestMapping("/")
		public String main(Model model) throws Exception{
			List<CategoryListVO> categoryListVO = mainService.CategoryListView();
			model.addAttribute("categoryList",categoryListVO);
			model.addAttribute("categoryListSize",categoryListVO.size());
			return "Main";
		}
		@RequestMapping(value="inception", method=RequestMethod.POST)
		public String fileUpload(MultipartHttpServletRequest mRequest) {
			mainService.searchImageUpload(mRequest);
				System.out.println(mainService.searchImageUpload(mRequest));
				
			return "redirect:/";

		}


}
