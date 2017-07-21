package kr.co.inception.board.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.inception.board.dto.BoardInsertDTO;
import kr.co.inception.board.dto.BoardUpdateDTO;
import kr.co.inception.board.dto.GoodDTO;
import kr.co.inception.board.dto.ReplyDTO;
import kr.co.inception.board.dto.ScrapeDTO;
import kr.co.inception.board.service.BoardService;
import kr.co.inception.board.vo.BoardListVO;

@Controller
@RequestMapping("/board")
public class BoardController {

//	private Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Autowired
	private BoardService boardService;

	// android
	@RequestMapping(value = "/andallboardlist")
	@ResponseBody
	public List<BoardListVO> AllboardListJson(Model model) {
		List<BoardListVO> boardList = boardService.showBoardList();

		return boardList;

	}
	
//	@RequestMapping(value = "/boardInsert")
//	@ResponseBody
//	public Boolean androidboardInsert(BoardInsertDTO boardInsertDTO) {
//		//편집기 완성되면 시작합시다
//		return false;
//	}

	@RequestMapping(value = "/boardList")
	public String boardList(Model model) {
		List<BoardListVO> boardList = boardService.showBoardList();

		model.addAttribute("boardList", boardList);

		return "BoardList";
	}
	
	@RequestMapping(value = "/boardList/{param1}")
	public String boardList(@PathVariable("param1") String category,Model model){
		List<BoardListVO> boardListVO = boardService.showBoardListCa(category);
		
		model.addAttribute("boardListVO",boardListVO);
		return "BoardList";
	}
	
	@RequestMapping(value = "/boardInsert")
	public String boardInsert(BoardInsertDTO boardInsertDTO, Model model) {
		
		return "/boardList";
	}

	@RequestMapping(value = "/boardUpdate")
	public String boardUpdate(BoardUpdateDTO boardUpdateDTO) {

		boardService.boardUpdate(boardUpdateDTO);

		return "/boardList";
	}

	@RequestMapping(value = "/replyInsert")
	public String replyInsert(ReplyDTO replyDTO, Model model) {

		boardService.replyInsert(replyDTO);

		return "/boardSimple";
	}

	@RequestMapping(value = "/scrape")
	public String scrape(ScrapeDTO scrapeDTO) {

		boardService.Scrape(scrapeDTO);

		return "/boardList";
	}

	@RequestMapping(value = "/good")
	public String good(GoodDTO goodDTO) {
		boardService.good(goodDTO);

		return "/boardSimple";
	}

}
