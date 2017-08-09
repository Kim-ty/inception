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
import kr.co.inception.board.vo.TagListVO;

public interface BoardService {

	public void boardInsert(BoardInsertDTO boardInsertDTO);
	public void boardUpdate(BoardUpdateDTO boardUpdateDTO);
	public void replyInsert(ReplyDTO replyDTO);
	public void descrape(ScrapeDTO scrapeDTO);
	public void Scrape(ScrapeDTO scrapeDTO);
	public void good(GoodDTO goodDTO);
	public void bad(BadDTO badDTO);
	public List<BoardListVO> showBoardList();
	public List<BoardListVO> showBoardListCa(String category);
	public List<BoardListVO> showBoardListTag(String tag);
	public List<BoardListVO> showMyBoardList(String userid);
	public BoardDetailVO showBoardDetail(String bidx);
	public BoardSimpleVO showBoardSimple(String bidx);
	public List<GooderListVO> showGooderList(String bidx);
	public List<BaderListVO> showBaderList(String bidx);
	public List<ReplyListVO> showReplyList(String bidx);
	public List<ReplyListVO> showReplyList2(String bidx);
	public List<ScraperListVO> showScraperList(String bidx);
	public List<BoardListVO> searchkeyword(String searchkeyword);
	public int hit(String bidx);
	public int scrapscheck(ScrapeDTO scrapeDTO);
	public int goodcheck(GoodDTO goodDTO);
	public List<BoardListVO> selectcategory(String category);
	public List<TagListVO> tagList();
	public String boarddetailprofilepicture(String bidx);
	public int goodbadcheck(GoodDTO goodDTO);
	public void goodbaddelete(GoodDTO goodDTO);
	public void updategoodbad(GoodDTO goodDTO);



	
}
