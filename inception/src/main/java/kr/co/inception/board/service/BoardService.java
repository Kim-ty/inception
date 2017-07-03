package kr.co.inception.board.service;

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

public interface BoardService {
	public void boardInsert(BoardInsertDTO boardInsertDTO);
	public void boardUpdate(BoardUpdateDTO boardUpdateDTO);
	public void replyInsert(ReplyDTO replyDTO);
	public void Scrape(ScrapeDTO scrapeDTO);
	public void good(GoodDTO goodDTO);
	public void bad(BadDTO badDTO);
	public BoardListVO showBoardList();
	public BoardDetailVO showBoardDetail(String bidx);
	public BoardSimpleVO showBoardSimple(String bidx);
	public GooderListVO showGooderList();
	public BaderListVO showBaderList();
	public ReplyListVO showReplyList();
	
}
