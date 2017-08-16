package kr.co.inception.board.controller;

import java.awt.Graphics;
import java.awt.Image;
import java.awt.Panel;
import java.awt.image.BufferedImage;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
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
import kr.co.inception.board.vo.AjaxGoodBadResult;
import kr.co.inception.board.vo.BaderListVO;
import kr.co.inception.board.vo.BoardDetailVO;
import kr.co.inception.board.vo.BoardListVO;
import kr.co.inception.board.vo.BoardSimpleVO;
import kr.co.inception.board.vo.GooderListVO;
import kr.co.inception.board.vo.ReplyListVO;
import kr.co.inception.board.vo.ScraperListVO;
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
		String profilepicture = boardService.boarddetailprofilepicture(bidx);
		boardSimple.setProfilepicture(profilepicture);
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

		return "2BoardList";
	}

	@RequestMapping(value = "/boardDetail/{param1}")
	public String boardDetail(@PathVariable("param1") String bidx, HttpSession session, Model model) {
		LoginVO loginVO = (LoginVO) session.getAttribute("loginInfo");
		boardService.hit(bidx);
		BoardDetailVO boardDetail = boardService.showBoardDetail(bidx);

		boardDetail.setGood(goodchk(boardDetail.getGooder(), loginVO.getUserid()));
		boardDetail.setBad(badchk(boardDetail.getBader(), loginVO.getUserid()));
		boardDetail.setScrape(scrapechk(boardDetail.getScraper(), loginVO.getUserid()));

		model.addAttribute("boardDetail", boardDetail);
		return "2BoardDetail";
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
		return "2BoardList";
	}

	@RequestMapping(value = "/boardInsert")
	public String boardInsert(BoardInsertDTO boardInsertDTO, HttpSession session, Model model) {
		LoginVO loginVO = (LoginVO) session.getAttribute("loginInfo");
		boardInsertDTO.setUserid(loginVO.getUserid());
		boardService.boardInsert(boardInsertDTO);

		return "redirect:/board/boardList";
	}

	@RequestMapping(value = "/boardUpdate")
	public String boardUpdate(BoardUpdateDTO boardUpdateDTO) {

		boardService.boardUpdate(boardUpdateDTO);

		return "/boardList";
	}

	@RequestMapping(value = "/commentInsert", method = RequestMethod.POST)
	public String commentInsert(@RequestParam String bidx, @RequestParam String comment, @RequestParam String target,
			HttpSession session) {
		LoginVO loginVO = (LoginVO) session.getAttribute("loginInfo");
		ReplyDTO replyDTO = new ReplyDTO();
		replyDTO.setBidx(bidx);
		replyDTO.setContents(comment);
		replyDTO.setUserid(loginVO.getUserid());
		replyDTO.setTargetreply(target);
		System.out.println(replyDTO.getBidx());
		System.out.println(replyDTO.getContents());
		System.out.println(replyDTO.getUserid());
		boardService.replyInsert(replyDTO);
		return "forward:/board/replyList";
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

	@RequestMapping(value = "/scrape", method = RequestMethod.POST)
	@ResponseBody
	public String scrape(@RequestParam String bidx, @RequestParam String scrape, HttpSession session) {
		LoginVO loginVO = (LoginVO) session.getAttribute("loginInfo");
		ScrapeDTO scrapeDTO = new ScrapeDTO();
		scrapeDTO.setBidx(bidx);
		scrapeDTO.setUserid(loginVO.getUserid());
		if (scrape.equals("스크랩취소")) {
			boardService.descrape(scrapeDTO);
		} else {
			boardService.Scrape(scrapeDTO);
		}
		List<ScraperListVO> scrapeListVO = boardService.showScraperList(bidx);

		return scrapeListVO.size() + "";
	}

	@RequestMapping(value = "/good", method = RequestMethod.POST)
	@ResponseBody
	public String good(@RequestParam String bidx, HttpSession session) {
		LoginVO loginVO = (LoginVO) session.getAttribute("loginInfo");
		GoodDTO goodDTO = new GoodDTO();
		goodDTO.setBidx(bidx);
		goodDTO.setUserid(loginVO.getUserid());
		boardService.good(goodDTO);

		return boardService.showGooderList(bidx).size() + "";
	}

	@RequestMapping(value = "/bad", method = RequestMethod.POST)
	@ResponseBody
	public String bad(@RequestParam String bidx, HttpSession session) {
		LoginVO loginVO = (LoginVO) session.getAttribute("loginInfo");
		BadDTO badDTO = new BadDTO();
		badDTO.setBidx(bidx);
		badDTO.setUserid(loginVO.getUserid());
		boardService.bad(badDTO);

		return boardService.showBaderList(bidx).size() + "";
	}

	@RequestMapping(value = "/updategood", method = RequestMethod.POST)
	@ResponseBody
	public AjaxGoodBadResult updatebad(@RequestParam String bidx, @RequestParam String g_b_count, HttpSession session) {
		LoginVO loginVO = (LoginVO) session.getAttribute("loginInfo");
		GoodDTO goodDTO = new GoodDTO();
		if (g_b_count.contains("좋아요")) {
			goodDTO.setG_b_count("0");
		} else {
			goodDTO.setG_b_count("1");
		}
		goodDTO.setBidx(bidx);
		goodDTO.setUserid(loginVO.getUserid());
		System.out.println("카운트 : " + goodDTO.getG_b_count());
		boardService.updategoodbad(goodDTO);
		AjaxGoodBadResult ajaxGoodBadResult = new AjaxGoodBadResult();
		ajaxGoodBadResult.setGoodcount(boardService.showGooderList(bidx).size() + "");
		ajaxGoodBadResult.setBadcount(boardService.showBaderList(bidx).size() + "");

		return ajaxGoodBadResult;
	}

	@RequestMapping(value = "/nogood", method = RequestMethod.POST)
	@ResponseBody
	public AjaxGoodBadResult nogood(@RequestParam String bidx, HttpSession session) {

		LoginVO loginVO = (LoginVO) session.getAttribute("loginInfo");
		GoodDTO goodDTO = new GoodDTO();
		goodDTO.setBidx(bidx);
		goodDTO.setUserid(loginVO.getUserid());
		boardService.goodbaddelete(goodDTO);
		AjaxGoodBadResult ajaxGoodBadResult = new AjaxGoodBadResult();
		ajaxGoodBadResult.setGoodcount(boardService.showGooderList(bidx).size() + "");
		ajaxGoodBadResult.setBadcount(boardService.showBaderList(bidx).size() + "");

		return ajaxGoodBadResult;
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
			@RequestParam("tag") String tag, @RequestParam("thumbnail") String thumbnail) {
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

	@RequestMapping(value = "/andgoodbadcheck")
	@ResponseBody
	public int andgoodbadcheck(@RequestParam("bidx") String bidx, @RequestParam("userid") String userid) {
		GoodDTO goodDTO = new GoodDTO();
		goodDTO.setBidx(bidx);
		goodDTO.setUserid(userid);
		int g_b_count = boardService.goodbadcheck(goodDTO);
		return g_b_count;

	}

	@RequestMapping(value = "/andgoodbaddelete")
	@ResponseBody
	public void andgoodbaddelete(@RequestParam("bidx") String bidx, @RequestParam("userid") String userid) {
		GoodDTO goodDTO = new GoodDTO();
		goodDTO.setBidx(bidx);
		goodDTO.setUserid(userid);
		boardService.goodbaddelete(goodDTO);

	}

	@RequestMapping(value = "/andupdategoodbad")
	@ResponseBody
	public void andupdategoodbad(@RequestParam("bidx") String bidx, @RequestParam("userid") String userid,
			@RequestParam("g_b_count") String g_b_count) {
		GoodDTO goodDTO = new GoodDTO();
		goodDTO.setBidx(bidx);
		goodDTO.setUserid(userid);
		goodDTO.setG_b_count(g_b_count);
		boardService.updategoodbad(goodDTO);

	}

	public String goodchk(List<GooderListVO> gooderList, String userid) {
		if (gooderList != null) {
			for (GooderListVO i : gooderList) {
				if (i.getGooder().equals(userid)) {
					return "좋아요취소";
				}
			}
		}
		return "좋아요";
	}

	public String badchk(List<BaderListVO> baderList, String userid) {
		if (baderList != null) {
			for (BaderListVO i : baderList) {
				if (i.getBader().equals(userid)) {
					return "나빠요취소";
				}
			}
		}
		return "나빠요";
	}

	public String scrapechk(List<ScraperListVO> scraperList, String userid) {
		if (scraperList != null) {
			for (ScraperListVO i : scraperList) {
				if (i.getScraper().equals(userid)) {
					return "스크랩취소";
				}
			}
		}
		return "스크랩";
	}

	@RequestMapping(value = "/anddescrap")
	@ResponseBody
	public void anddescrap(@RequestParam("bidx") String bidx, @RequestParam("userid") String userid) {
		ScrapeDTO scrapeDTO = new ScrapeDTO();
		scrapeDTO.setBidx(bidx);
		scrapeDTO.setUserid(userid);
		boardService.descrape(scrapeDTO);

	}

}
