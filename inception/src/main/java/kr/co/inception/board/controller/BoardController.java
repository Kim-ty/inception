package kr.co.inception.board.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.inception.board.dto.BoardInsertDTO;
import kr.co.inception.board.service.BoardService;
import kr.co.inception.board.vo.BoardDetailVO;
import kr.co.inception.board.vo.BoardListVO;



@Controller
@RequestMapping("/board")
public class BoardController {
	
	private Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private BoardService boardService;
	
		
		//android
		@RequestMapping(value = "/andallboardlist")
		@ResponseBody
		public List<BoardListVO> AllboardListJson(Model model){
			List<BoardListVO> boardList= boardService.showBoardList();
			

			
			return boardList;

		}
		
	
		
		@RequestMapping(value = "/boardList")
		public String boardList(Model model){
			List<BoardListVO> boardList= boardService.showBoardList();
			
			model.addAttribute("boardList",boardList);
			
			return "BoardList";
		}
		
		@RequestMapping(value = "/boardInsert")
		public String boardInsert(BoardInsertDTO boardInsertDTO,Model model){
			
			
			return "showBoardDeteil";
		}
		
}
