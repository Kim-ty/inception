package kr.co.inception.board.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.inception.board.service.BoardService;
import kr.co.inception.board.vo.BoardListVO;



@Controller
@RequestMapping("/board")
public class BoardController {
	
	private Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private BoardService boardService;
	
	
	//안드용 json
		@RequestMapping(value = "/andboardlist")
		@ResponseBody
		public List<BoardListVO> boardListJson(Model model){
			List<BoardListVO> boardListVO = boardService.showBoardList();
			
			
			return boardListVO;
		}

}
