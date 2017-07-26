package kr.co.inception.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.inception.board.dto.BoardInsertDTO;
import kr.co.inception.board.dto.BoardUpdateDTO;
import kr.co.inception.board.dto.GoodDTO;
import kr.co.inception.board.dto.ReplyDTO;
import kr.co.inception.board.dto.ScrapeDTO;
import kr.co.inception.board.service.BoardService;
import kr.co.inception.board.vo.BoardListVO;
import kr.co.inception.board.vo.BoardSimpleVO;
import kr.co.inception.board.vo.ReplyListVO;

@Controller
@RequestMapping("/board")
public class BoardController {

	// private Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Autowired
	private BoardService boardService;

	// android
	@RequestMapping(value = "/andallboardlist")
	@ResponseBody
	public List<BoardListVO> AllboardListJson(Model model) {
		List<BoardListVO> boardList = boardService.showBoardList();

		return boardList;

	}

	// android
	@RequestMapping(value = "/andboardsearch")
	@ResponseBody
	public List<BoardListVO> andboardsearch(@RequestParam("searchkeyword") String searchkeyword) {
		searchkeyword = "%"+searchkeyword+"%";
		List<BoardListVO> boardlist = boardService.searchkeyword(searchkeyword);

		return boardlist;

	}
	
	@RequestMapping(value = "/andboarddetail")
	@ResponseBody
	public BoardSimpleVO andboard(@RequestParam("bidx") String bidx) {
		boardService.hit(bidx);
		BoardSimpleVO boardSimple = boardService.showBoardSimple(bidx);
		return boardSimple;

	}
	
	@RequestMapping(value = "/andcontentsscrap")
	@ResponseBody
	public String andcontentsscrap(@RequestParam("bidx") String bidx,@RequestParam("userid") String userid) {
		ScrapeDTO scrapeDTO = new ScrapeDTO();
		scrapeDTO.setBidx(bidx);
		scrapeDTO.setUserid(userid);
		boardService.Scrape(scrapeDTO);
		return "짜쟌";
	}
	
	@RequestMapping(value = "/andscrapecheck")
	@ResponseBody
	public int andscrapcheck(@RequestParam("bidx") String bidx,@RequestParam("userid") String userid) {
		ScrapeDTO scrapeDTO = new ScrapeDTO();
		scrapeDTO.setBidx(bidx);
		scrapeDTO.setUserid(userid);
		int result = boardService.scrapscheck(scrapeDTO);
		if(result ==1){
			System.out.println("이미 스크랩 하셨습니다");
			return result;
		}
			System.out.println("스크랩 하셨씁니다");
		
		return result;

	}
	
	@RequestMapping(value = "/andcontentsgood")
	@ResponseBody
	public void andcontentsgood(@RequestParam("bidx") String bidx,@RequestParam("userid") String userid) {
		GoodDTO goodDTO = new GoodDTO();
		goodDTO.setBidx(bidx);
		goodDTO.setUserid(userid);
		boardService.good(goodDTO);

	}
	@RequestMapping(value = "/andgoodcheck")
	@ResponseBody
	public int andgoodcheck(@RequestParam("bidx") String bidx,@RequestParam("userid") String userid) {
		GoodDTO goodDTO = new GoodDTO();
		goodDTO.setBidx(bidx);
		goodDTO.setUserid(userid);
		int result = boardService.goodcheck(goodDTO);
		if(result ==1 ){
			System.out.println("이미 따봉 했당게");
			return result;
		}
		System.out.println("따봉 ㄳ");
		return result;
	}

	// @RequestMapping(value = "/boardInsert")
	// @ResponseBody
	// public Boolean androidboardInsert(BoardInsertDTO boardInsertDTO) {
	// //편집기 완성되면 시작합시다
	// return false;
	// }

	@RequestMapping(value = "/boardList")
	public String boardList(Model model) {
		List<BoardListVO> boardList = boardService.showBoardList();
		model.addAttribute("boardList", boardList);

		return "BoardList";
	}

	@RequestMapping(value ="/boardDetail/{param1}")
	public String boardDetail(@PathVariable("param1") String bidx,Model model){
		boardService.hit(bidx);
		BoardSimpleVO boardSimple = boardService.showBoardSimple(bidx);
		model.addAttribute("boardSimple",boardSimple);
		return "BoardDetail";
	}
	
	
	
	
	@RequestMapping(value = "/boardList/{param1}")
	public String boardList(@PathVariable("param1") String category, Model model) {

		List<BoardListVO> boardList = boardService.showBoardListCa(category);
		model.addAttribute("boardList", boardList);


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

		return "/boardDetail";
	}
	
	@RequestMapping(value="/replyList/{param1}")
	public String replyList(@PathVariable("param1") String bidx,Model model){
		
		List<ReplyListVO> replyList = boardService.showReplyList(bidx);
		model.addAttribute("replyList",replyList);
		
		return "/reply";
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
