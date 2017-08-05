package kr.co.inception.board.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.inception.board.dao.BoardDAO;
import kr.co.inception.board.dto.BadDTO;
import kr.co.inception.board.dto.BoardInsertDTO;
import kr.co.inception.board.dto.BoardTagDTO;
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


@Repository
public class BoardDAOImpl implements BoardDAO{

	private static final String namespace="kr.co.inception.mapper.boardMapper";
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public void boardInsert(BoardInsertDTO boardInsertDTO) {
		for(BoardTagDTO i:boardInsertDTO.getTagList()){
			System.out.println(i.getTag());
		}
		sqlSession.insert(namespace+".boardInsert", boardInsertDTO);
	}

	@Override
	public void boardUpdate(BoardUpdateDTO boardUpdateDTO) {
		sqlSession.update(namespace+".boardUpdate", boardUpdateDTO);
	}

	@Override
	public void replyInsert(ReplyDTO replyDTO) {
		sqlSession.insert(namespace+".replyInsert", replyDTO);
	}

	@Override
	public void Scrape(ScrapeDTO scrapeDTO) {
		sqlSession.insert(namespace+".Scrape", scrapeDTO);		
	}

	@Override
	public void good(GoodDTO goodDTO) {
		sqlSession.insert(namespace+".good",goodDTO);
	}

	@Override
	public void bad(BadDTO badDTO) {
		sqlSession.insert(namespace+".bad",badDTO);
	}

	@Override
	public List<BoardListVO> showBoardList() {
		return sqlSession.selectList(namespace+".boardList");
	}

	@Override
	public BoardDetailVO showBoardDetail(String bidx) {
		return sqlSession.selectOne(namespace+".boardDetail", bidx);
	}

	@Override
	public BoardSimpleVO showBoardSimple(String bidx) {
		return sqlSession.selectOne(namespace+".boardSimple",bidx);
	}

	@Override
	public List<GooderListVO> showGooderList(String bidx) {
		return sqlSession.selectList(namespace+".GooderList",bidx);
	}

	@Override
	public List<BaderListVO> showBaderList(String bidx) {
		return sqlSession.selectList(namespace+".baderList",bidx);
	}

	@Override
	public List<ReplyListVO> showReplyList(String bidx) {
		return sqlSession.selectList(namespace+".replyList",bidx);
	}

	@Override
	public List<ScraperListVO> showScraperList(String bidx) {
		return sqlSession.selectList(namespace+".scrapeList",bidx);
	}

	@Override
	public List<BoardListVO> showMyBoardList(String userid) {
		return sqlSession.selectList(namespace+".MyboardList",userid);
	}

	@Override
	public List<BoardListVO> showBoardListCa(String category) {
		return sqlSession.selectList(namespace+".boardListCategory",category);
	}

	@Override
	public List<BoardListVO> searchkeyword(String searchkeyword) {
		return sqlSession.selectList(namespace+".searchkeyword",searchkeyword);
	}
	
	@Override
	public int hit(String bidx) {
		return sqlSession.insert(namespace+".hit",bidx);
	}

	@Override
	public int scrapscheck(ScrapeDTO scrapeDTO) {
		return sqlSession.selectOne(namespace+".scrapcheck", scrapeDTO);
	}

	@Override
	public int goodcheck(GoodDTO goodDTO) {
		return sqlSession.selectOne(namespace+".goodcheck",goodDTO);
	}

	@Override
	public List<ReplyListVO> showReplyList2(String bidx) {
		return sqlSession.selectList(namespace+".replyList2",bidx);

	}

	@Override
	public List<BoardListVO> selectcategory(String category) {
		return sqlSession.selectList(namespace+".boardListCategory",category);
	}

	@Override
	public List<TagListVO> tagList() {
		return sqlSession.selectList(namespace+".tagList");
	}

	@Override
	public List<BoardListVO> showBoardListTag(String tag) {
		return sqlSession.selectList(namespace+".boardListTag",tag);
	}
	

}
