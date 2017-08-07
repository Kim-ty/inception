package kr.co.inception.board.controller;

import java.awt.Graphics;
import java.awt.Image;
import java.awt.Panel;
import java.awt.image.BufferedImage;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.co.inception.board.dto.BadDTO;
import kr.co.inception.board.dto.BoardInsertDTO;
import kr.co.inception.board.dto.BoardTagDTO;
import kr.co.inception.board.dto.BoardUpdateDTO;
import kr.co.inception.board.dto.GoodDTO;
import kr.co.inception.board.dto.ReplyDTO;
import kr.co.inception.board.dto.ScrapeDTO;
import kr.co.inception.board.service.BoardService;
import kr.co.inception.board.vo.BoardListVO;
import kr.co.inception.board.vo.BoardSimpleVO;
import kr.co.inception.board.vo.ReplyListVO;
import kr.co.inception.board.vo.TagListVO;
import kr.co.inception.user.vo.LoginVO;

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
		searchkeyword = "%" + searchkeyword + "%";
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

	// android 수정용 데이터불러오기
	@RequestMapping(value = "/andboarddetail2")
	@ResponseBody
	public BoardSimpleVO andboard2(@RequestParam("bidx") String bidx) {
		BoardSimpleVO boardSimple = boardService.showBoardSimple(bidx);
		return boardSimple;
	}

	@RequestMapping(value = "/andcontentsupdate")
	@ResponseBody
	public String andcontentsupdate(@RequestParam("bidx") String bidx, @RequestParam("contents") String contents) {
		BoardUpdateDTO boardupdateDTO = new BoardUpdateDTO();
		boardupdateDTO.setBidx(bidx);
		boardupdateDTO.setContents(contents);
		boardService.boardUpdate(boardupdateDTO);
		System.out.println(contents);
		return "Success";
	}

	@RequestMapping(value = "/andcontentsscrap")
	@ResponseBody
	public String andcontentsscrap(@RequestParam("bidx") String bidx, @RequestParam("userid") String userid) {
		ScrapeDTO scrapeDTO = new ScrapeDTO();
		scrapeDTO.setBidx(bidx);
		scrapeDTO.setUserid(userid);
		boardService.Scrape(scrapeDTO);
		return "짜쟌";
	}

	@RequestMapping(value = "/andscrapecheck")
	@ResponseBody
	public int andscrapcheck(@RequestParam("bidx") String bidx, @RequestParam("userid") String userid) {
		ScrapeDTO scrapeDTO = new ScrapeDTO();
		scrapeDTO.setBidx(bidx);
		scrapeDTO.setUserid(userid);
		int result = boardService.scrapscheck(scrapeDTO);
		if (result == 1) {
			System.out.println("이미 스크랩 하셨습니다");
			return result;
		}
		System.out.println("스크랩 하셨씁니다");

		return result;

	}

	@RequestMapping(value = "/andcontentsgood")
	@ResponseBody
	public void andcontentsgood(@RequestParam("bidx") String bidx, @RequestParam("userid") String userid) {
		GoodDTO goodDTO = new GoodDTO();
		goodDTO.setBidx(bidx);
		goodDTO.setUserid(userid);
		boardService.good(goodDTO);

	}

	@RequestMapping(value = "/andcontentsbad")
	@ResponseBody
	public void andcontentsbad(@RequestParam("bidx") String bidx, @RequestParam("userid") String userid) {
		BadDTO badDTO = new BadDTO();
		badDTO.setBidx(bidx);
		badDTO.setUserid(userid);
		boardService.bad(badDTO);

	}

	@RequestMapping(value = "/andgoodcheck")
	@ResponseBody
	public int andgoodcheck(@RequestParam("bidx") String bidx, @RequestParam("userid") String userid) {
		GoodDTO goodDTO = new GoodDTO();
		goodDTO.setBidx(bidx);
		goodDTO.setUserid(userid);
		int result = boardService.goodcheck(goodDTO);
		if (result == 1) {
			System.out.println("이미 따봉 했당게");
			return result;
		}
		System.out.println("따봉 ㄳ");
		return result;
	}

	@RequestMapping(value = "/andreplylist")
	@ResponseBody
	public List<ReplyListVO> andreplylist(@RequestParam("bidx") String bidx) {
		List<ReplyListVO> replylist = boardService.showReplyList2(bidx);

		return replylist;
	}

	@RequestMapping(value = "/andreplyinsert")
	@ResponseBody
	public String andreplyinsert(@RequestParam("bidx") String bidx, @RequestParam("userid") String userid,
			@RequestParam("contents") String contents, @RequestParam("targetreply") String targetreply) {
		ReplyDTO replyDTO = new ReplyDTO();
		replyDTO.setBidx(bidx);
		replyDTO.setUserid(userid);
		replyDTO.setContents(contents);
		replyDTO.setTargetreply(targetreply);
		boardService.replyInsert(replyDTO);

		return "Success";
	}

	@RequestMapping(value = "/andselectcategory")
	@ResponseBody
	public List<BoardListVO> andselectcategory(@RequestParam("category") String category) {
		List<BoardListVO> boardList = boardService.selectcategory(category);

		return boardList;

	}

	// @RequestMapping(value = "/boardInsert")
	// @ResponseBody
	// public Boolean androidboardInsert(BoardInsertDTO boardInsertDTO) {
	// //편집기 완성되면 시작합시다
	// return false;
	// }

	// Web

	@RequestMapping(value = "/hottagList")
	public String hottag(Model model) {
		List<TagListVO> tagListVO = boardService.tagList();
		model.addAttribute("tagList", tagListVO);
		return "tagList";
	}

	@RequestMapping(value = "/boardList")
	public String boardList(Model model) {
		List<BoardListVO> boardList = boardService.showBoardList();
		model.addAttribute("boardList", boardList);

		return "BoardList";
	}

	@RequestMapping(value = "/boardDetail/{param1}")
	public String boardDetail(@PathVariable("param1") String bidx, Model model) {
		boardService.hit(bidx);
		BoardSimpleVO boardSimple = boardService.showBoardSimple(bidx);
		for (TagListVO tag : boardSimple.getTag()) {
			System.out.println(tag.getTag());
		}
		model.addAttribute("boardSimple", boardSimple);
		return "BoardDetail";
	}

	@RequestMapping(value = "/boardList/{param1}")
	public String boardList(@PathVariable("param1") String category, Model model) {
		System.out.println(category);
		List<BoardListVO> boardList = null;
		if (category.contains("tag") == true) {
			String tag = category.substring(3);
			System.out.println(tag);
			boardList = boardService.showBoardListTag(tag);
		} else {
			System.out.println("카테고리출력");
			boardList = boardService.showBoardListCa(category);
		}
		model.addAttribute("boardList", boardList);
		return "BoardList";
	}

	@RequestMapping(value = "/boardInsert")
	public String boardInsert(BoardInsertDTO boardInsertDTO, HttpSession session, Model model) {
		LoginVO loginVO = (LoginVO) session.getAttribute("loginInfo");
		boardInsertDTO.setUserid(loginVO.getUserid());
		System.out.println("title : "+boardInsertDTO.getTitle());
		System.out.println("contents : "+boardInsertDTO.getContents());
		for(BoardTagDTO i : boardInsertDTO.getTagList()){
			System.out.println("tag : "+i);
		}
		System.out.println("category : "+boardInsertDTO.getCategory());
		System.out.println("thumbnail : "+boardInsertDTO.getThumbnail());
		boardService.boardInsert(boardInsertDTO);

		return "redirect:/board/boardList";
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

	@RequestMapping(value = "/replyList")
	@ResponseBody
	public List<ReplyListVO> replyList(@RequestParam("bidx") String bidx) {

		List<ReplyListVO> replyList = boardService.showReplyList(bidx);

		return replyList;
	}

	@RequestMapping(value = "/write")
	public String boardInert() {
		return "boardInsert";
	}

	@RequestMapping(value = "/scrape")
	@ResponseBody
	public String scrape(@RequestParam("bidx") String bidx,HttpSession session) {
		LoginVO loginVO = (LoginVO) session.getAttribute("loginInfo");
		ScrapeDTO scrapeDTO = new ScrapeDTO();
		scrapeDTO.setBidx(bidx);
		scrapeDTO.setUserid(loginVO.getUserid());
		boardService.Scrape(scrapeDTO);

		return "/boardList";
	}

	@RequestMapping(value = "/good")
	@ResponseBody
	public String good(@RequestParam("bidx") String bidx,HttpSession session) {
		LoginVO loginVO = (LoginVO) session.getAttribute("loginInfo");
		GoodDTO goodDTO = new GoodDTO();
		goodDTO.setBidx(bidx);
		goodDTO.setUserid(loginVO.getUserid());
		boardService.good(goodDTO);

		return "/boardSimple";
	}

	@RequestMapping(value="/bad")
	@ResponseBody
	public String bad(@RequestParam("bidx") String bidx,HttpSession session){
		LoginVO loginVO = (LoginVO) session.getAttribute("loginInfo");
		BadDTO badDTO = new BadDTO();
		badDTO.setBidx(bidx);
		badDTO.setUserid(loginVO.getUserid());
		boardService.bad(badDTO);
		
		return "";
	}
	
	@RequestMapping(value = "/uploadImage", method = RequestMethod.POST, produces = "text/plain;charset=utf-8")
	@ResponseBody
	public String uploadAjax(MultipartFile file) throws Exception {
		System.out.println("파일업로드시작");
		String fileURL = FileUploadAjax.uploadFile("C:/uploadimage", file.getOriginalFilename(), file.getBytes());
		Image originalImage = ImageIO.read(new File("/uploadimage/" + fileURL));
		Image resizeImage = originalImage.getScaledInstance(1000, 1000, Image.SCALE_SMOOTH);
		BufferedImage newImage = new BufferedImage(1000, 1000, BufferedImage.TYPE_INT_RGB);
		Graphics g = newImage.getGraphics();
		g.drawImage(resizeImage, 0, 0, new Panel());
		g.dispose();
		ImageIO.write(newImage, "jpg", new File("/uploadimage/" + fileURL.replaceAll("!!!!", "android!!!!")));
		return "/uploadimage/" + fileURL;
	}

	@RequestMapping(value = "/andboardinsert")
	@ResponseBody
	public void andboardinsert(@RequestParam("title") String title, @RequestParam("userid") String userid,
			@RequestParam("contents") String contents, @RequestParam("category") String category,
			@RequestParam("tag") String tag,@RequestParam("thumbnail") String thumbnail) {
		BoardInsertDTO boardInsertDTO = new BoardInsertDTO();
		boardInsertDTO.setTitle(title);
		boardInsertDTO.setUserid(userid);
		boardInsertDTO.setCategory(category);
		boardInsertDTO.setContents(contents);
		boardInsertDTO.setThumbnail(thumbnail);
		System.out.println(tag);
		List<BoardTagDTO> tagList = new ArrayList<BoardTagDTO>();
		String[] aaa = tag.split("@");

		for (String i : aaa) {
			BoardTagDTO a = new BoardTagDTO();
			a.setTag(i);
			System.out.println(i);
			tagList.add(a);
		}
		boardInsertDTO.setTagList(tagList);
		boardService.boardInsert(boardInsertDTO);

	}

}
