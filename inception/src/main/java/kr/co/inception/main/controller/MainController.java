package kr.co.inception.main.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import kr.co.inception.board.vo.BoardListVO;
import kr.co.inception.main.service.MainService;
import kr.co.inception.main.service.inception_label_image;
import kr.co.inception.main.vo.CategoryListVO;

@Controller
@RequestMapping("/")
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);

//	각 리턴값(뷰 이동)과 urlmapping은 수정해야함
	
	@Autowired
	private MainService mainService;
	private inception_label_image ILI;
	
	//메인페이지 이동
		@RequestMapping("/")
		public String main(Model model) throws Exception{
			List<CategoryListVO> categoryListVO = mainService.CategoryListView();
			model.addAttribute("categoryList",categoryListVO);
			model.addAttribute("categoryListSize",categoryListVO.size());
			return "Main";
		}
		@RequestMapping(value = "/andfashionlist")
		@ResponseBody
		public List<BoardListVO> FashionListJson(Model model){
			List<BoardListVO> boardListVO = mainService.FashionList();
			
			return boardListVO;
		}
		@RequestMapping(value = "/andcarlist")
		@ResponseBody
		public List<BoardListVO> CarListJson(Model model){
			List<BoardListVO> boardListVO = mainService.CarList();
			
			return boardListVO;
		}
		//안드용 json
		@RequestMapping(value = "/andcategorylist")
		@ResponseBody
		public List<CategoryListVO> categoryListJson(Model model){
			List<CategoryListVO> categoryListVO = mainService.CategoryListView();
			
			
			return categoryListVO;
		}
		
		
				
		@RequestMapping(value="inception", method=RequestMethod.POST)
		public ModelAndView fileUpload(MultipartHttpServletRequest mRequest,Model model) throws Exception {
			ModelAndView view = new ModelAndView();
			view.setViewName("SearchResult");
				String searchimage = mainService.searchImageUpload(mRequest);
				
				String s;
			      String[] result = new String[5];
			      int i = 0;
			      try {
			         Process oProcess = new ProcessBuilder("cmd", "/C",
			               "activate tensorflow & python C:/inception_image/label_image.py --image C:/uploadimage/"
			                     + searchimage).start();
			         BufferedReader stdOut = new BufferedReader(new InputStreamReader(oProcess.getInputStream()));
			         while ((s = stdOut.readLine()) != null) {
			            result[i] = s;
			            i += 1;
//			            int index = s.indexOf("(");
//			            System.out.println(s.substring(0, index));
			         }
			         int index0 = result[0].indexOf("(");
			         int index1 = result[1].indexOf("(");
			         int index2 = result[2].indexOf("(");
			         int index3 = result[3].indexOf("(");
			         int index4 = result[4].indexOf("(");			    
			         view.addObject("Rank1",result[0].substring(0,index0));
			         view.addObject("Rank2",result[1].substring(0,index1));
			         view.addObject("Rank3",result[2].substring(0,index2));
			         view.addObject("Rank4",result[3].substring(0,index3));
			         view.addObject("Rank5",result[4].substring(0,index4));
			         view.addObject("img_src",searchimage);
			         
			      } catch (IOException e) { 
			         System.err.println("����! �ܺ� ��� ���࿡ �����߽��ϴ�.\n" + e.getMessage());
			         System.exit(-1);
			      }
				
				
				
				
				
				
//				String[] result = new String[5];				
//				ILI.result(searchimage);
//				for (int i = 0; i < result.length; i++){
//			         String cutresult = result[i];
//			         int index = cutresult.indexOf("(");
//			         System.out.println(result[i].substring(0,index));
//				}
//				System.out.println(ILI.result(mainService.searchImageUpload(mRequest)));
				
//				model.addAttribute("searchresult");
			
			return view;

		}
		//test
		@RequestMapping("/image_upload")
		public String image_upload(Model model) throws Exception{
			
			return "image_upload";
		}


}
