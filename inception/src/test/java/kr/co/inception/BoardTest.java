package kr.co.inception;

import java.awt.List;
import java.util.ArrayList;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.inception.board.dto.BoardInsertDTO;
import kr.co.inception.board.dto.BoardTagDTO;
import kr.co.inception.board.service.BoardService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class BoardTest {
	
	@Autowired
	BoardService boardService;
	
	@Test
	public void BoardTest(){
		BoardInsertDTO board = new BoardInsertDTO();
		ArrayList<BoardTagDTO> tagList = new ArrayList<BoardTagDTO>();
		BoardTagDTO tag = new BoardTagDTO();
		BoardTagDTO tag2 = new BoardTagDTO();
		BoardTagDTO tag3 = new BoardTagDTO();
		
		tag.setTag("우왕");
		tag2.setTag("멋져");
		tag3.setTag("가버렷");
		
		tagList.add(tag);
		tagList.add(tag2);
		tagList.add(tag3);
		
		
		board.setTitle("타이틀");
		board.setUserid("kkb");
		board.setCategory("의류");
		board.setContents("내내내내내내내내내내내내내내내내내내내내내내내용용용용용용용용용용용용용용용용용용용용용용용용용용용용용용용");
		board.setTagList(tagList);
		
		boardService.boardInsert(board);
	}
}
