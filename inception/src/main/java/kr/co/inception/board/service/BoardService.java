package kr.co.inception.board.service;

import java.util.List;

import kr.co.inception.board.dto.BadDTO;
import kr.co.inception.board.dto.BoardInsertDTO;
import kr.co.inception.board.dto.BoardUpdateDTO;
import kr.co.inception.board.dto.GoodDTO;
import kr.co.inception.board.dto.ReplyDTO;
import kr.co.inception.board.dto.ScrapeDTO;
import kr.co.inception.board.vo.BaderListVO;
import kr.co.inception.board.vo.BoardDetailVO;
import kr.co.inception.board.vo.BoardListVO;
import kr.co.inception.board.vo.BoardSimpleVO;
import kr.co.inception.board.vo.GooderListVO;
import kr.co.inception.board.vo.ReplyListVO;
import kr.co.inception.board.vo.ScraperListVO;

public interface BoardService {

	public void boardInsert(BoardInsertDTO boardInsertDTO);
	public void boardUpdate(BoardUpdateDTO boardUpdateDTO);
	public void replyInsert(ReplyDTO replyDTO);
	public void Scrape(ScrapeDTO scrapeDTO);
	public void good(GoodDTO goodDTO);
	public void bad(BadDTO badDTO);
	public List<BoardListVO> showBoardList();
	public BoardDetailVO showBoardDetail(String bidx);
	public BoardSimpleVO showBoardSimple(String bidx);
	public List<GooderListVO> showGooderList();
	public List<BaderListVO> showBaderList();
	public List<ReplyListVO> showReplyList();
	public List<ScraperListVO> showScraperList();
	
}
