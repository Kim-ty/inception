package kr.co.inception.board.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.inception.board.dto.BoardInsertDTO;
import kr.co.inception.board.dto.BoardUpdateDTO;
import kr.co.inception.board.dto.GoodDTO;
import kr.co.inception.board.dto.ReplyDTO;
import kr.co.inception.board.dto.ScrapeDTO;
import kr.co.inception.board.service.BoardService;
import kr.co.inception.board.vo.BoardDetailVO;
import kr.co.inception.board.vo.BoardListVO;
import kr.co.inception.board.vo.BoardSimpleVO;
<<<<<<< HEAD
=======
import kr.co.inception.profile.vo.ProfileBoardListVO;
>>>>>>> 32ec5e5488ae5dfe447f840b0799f5812e3765a2



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
<<<<<<< HEAD
			boardService.boardInsert(boardInsertDTO);
=======
>>>>>>> 32ec5e5488ae5dfe447f840b0799f5812e3765a2
			
			return "/boardList";
		}
		
		@RequestMapping(value = "/boardUpdate")
		public String boardUpdate(BoardUpdateDTO boardUpdateDTO){
			
			boardService.boardUpdate(boardUpdateDTO);
			
			return "/boardList";
		}
		
		@RequestMapping(value = "/replyInsert")
		public String replyInsert(ReplyDTO replyDTO,Model model){
			
			boardService.replyInsert(replyDTO);
			
			return "/boardSimple";
		}
		
		@RequestMapping(value = "/scrape")
		public String scrape(ScrapeDTO scrapeDTO){
			
			boardService.Scrape(scrapeDTO);
			
			return "/boardList";
		}
		
		@RequestMapping(value = "/good")
		public String good(GoodDTO goodDTO){
			boardService.good(goodDTO);
			
			return "/boardSimple";
		}
		
<<<<<<< HEAD
		
		@RequestMapping(value = "/boardSimple",method = RequestMethod.GET)
		public String boardSimple(String bidx,Model model){
			BoardSimpleVO boardSimpleVO= boardService.showBoardSimple(bidx);
			model.addAttribute(boardSimpleVO);
			return "BoardSimple";
		}
		
		
=======
		@RequestMapping("/BoardList/{param1}")
		public String boardSimple(@PathVariable("param1") String bidx,Model model){
			BoardSimpleVO boardSimpleVO = boardService.showBoardSimple(bidx);
			
			model.addAttribute("boardSimpleVO",boardSimpleVO);
			return "BoardSimple";
		}
		
>>>>>>> 32ec5e5488ae5dfe447f840b0799f5812e3765a2
}
