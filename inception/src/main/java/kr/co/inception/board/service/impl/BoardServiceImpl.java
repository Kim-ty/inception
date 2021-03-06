package kr.co.inception.board.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.inception.board.dao.BoardDAO;
import kr.co.inception.board.dto.BadDTO;
import kr.co.inception.board.dto.BoardInsertDTO;
import kr.co.inception.board.dto.BoardUpdateDTO;
import kr.co.inception.board.dto.GoodDTO;
import kr.co.inception.board.dto.ReplyDTO;
import kr.co.inception.board.dto.ScrapeDTO;
import kr.co.inception.board.service.BoardService;
import kr.co.inception.board.vo.BaderListVO;
import kr.co.inception.board.vo.BoardDetailVO;
import kr.co.inception.board.vo.BoardListVO;
import kr.co.inception.board.vo.BoardSimpleVO;
import kr.co.inception.board.vo.GooderListVO;
import kr.co.inception.board.vo.ReplyListVO;
import kr.co.inception.board.vo.ScraperListVO;
import kr.co.inception.board.vo.TagListVO;
@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	BoardDAO boardDAO;
	
	@Override
	public void boardInsert(BoardInsertDTO boardInsertDTO) {
		boardDAO.boardInsert(boardInsertDTO);
	}

	@Override
	public void boardUpdate(BoardUpdateDTO boardUpdateDTO) {
		boardDAO.boardUpdate(boardUpdateDTO);
	}

	@Override
	public void replyInsert(ReplyDTO replyDTO) {
		boardDAO.replyInsert(replyDTO);
	}

	@Override
	public void Scrape(ScrapeDTO scrapeDTO) {
		boardDAO.Scrape(scrapeDTO);
	}
	@Override
	public void good(GoodDTO goodDTO) {
		boardDAO.good(goodDTO);
	}

	@Override
	public void bad(BadDTO badDTO) {
		boardDAO.bad(badDTO);
	}

	@Override
	public List<BoardListVO> showBoardList() {
		return boardDAO.showBoardList();
	}

	@Override
	public BoardDetailVO showBoardDetail(String bidx) {
		return boardDAO.showBoardDetail(bidx);
	}

	@Override
	public BoardSimpleVO showBoardSimple(String bidx) {
		return boardDAO.showBoardSimple(bidx);
	}

	@Override
	public List<GooderListVO> showGooderList(String bidx) {
		return boardDAO.showGooderList(bidx);
	}

	@Override
	public List<BaderListVO> showBaderList(String bidx) {
		return boardDAO.showBaderList(bidx);
	}

	@Override
	public List<ReplyListVO> showReplyList(String bidx) {
		return boardDAO.showReplyList(bidx);
	}

	@Override
	public List<ScraperListVO> showScraperList(String bidx) {
		return boardDAO.showScraperList(bidx);
	}

	@Override
	public List<BoardListVO> showMyBoardList(String userid) {
		return boardDAO.showMyBoardList(userid);
	}

	@Override
	public List<BoardListVO> showBoardListCa(String category) {
		return boardDAO.showBoardListCa(category);
	}

	@Override
	public List<BoardListVO> searchkeyword(String searchkeyword) {
		return boardDAO.searchkeyword(searchkeyword);
	}
	
	@Override
	public int hit(String bidx) {
		return boardDAO.hit(bidx);
	}

	@Override
	public int scrapscheck(ScrapeDTO scrapeDTO) {
		return boardDAO.scrapscheck(scrapeDTO);
	}

	@Override
	public int goodcheck(GoodDTO goodDTO) {
		return boardDAO.goodcheck(goodDTO);
	}

	@Override
	public List<ReplyListVO> showReplyList2(String bidx) {
		return boardDAO.showReplyList2(bidx);
	}

	@Override
	public List<BoardListVO> selectcategory(String category) {
		return boardDAO.selectcategory(category);
	}

	@Override
	public List<TagListVO> tagList() {
		return boardDAO.tagList();
	}

	@Override
	public List<BoardListVO> showBoardListTag(String tag) {
		return boardDAO.showBoardListTag(tag);
	}

	@Override
	public String boarddetailprofilepicture(String bidx) {
		return boardDAO.boarddetailprofilepicture(bidx);
	}

	@Override
	public int goodbadcheck(GoodDTO goodDTO) {
		return boardDAO.goodbadcheck(goodDTO);
	}

	@Override
	public void goodbaddelete(GoodDTO goodDTO) {
		boardDAO.goodbaddelete(goodDTO);
	}

	@Override
	public void updategoodbad(GoodDTO goodDTO) {
		boardDAO.updategoodbad(goodDTO);
	}

	@Override
	public void descrape(ScrapeDTO scrapeDTO) {
		boardDAO.descrape(scrapeDTO);
	} 


}
