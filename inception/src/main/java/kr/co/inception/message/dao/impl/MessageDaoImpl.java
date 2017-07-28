package kr.co.inception.message.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.inception.message.dao.MessageDAO;
import kr.co.inception.message.dto.MessageListDTO;
import kr.co.inception.message.vo.MessageListVO;

@Repository
public class MessageDaoImpl implements MessageDAO{
	public static final String namespace= "kr.co.inception.mapper.messageMapper";
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<MessageListVO> showMessageList(String targetuserid) {
		return sqlSession.selectList(namespace+".messageList",targetuserid);
	}

	@Override
	public List<MessageListVO> showMessageRoom(MessageListDTO messagelistDTO) {
		return sqlSession.selectList(namespace+".messageroomList",messagelistDTO);
	}

	@Override
	public void messageInsert(MessageListDTO messagelistDTO) {
		sqlSession.insert(namespace+".messageinsert",messagelistDTO);
	}

	@Override
	public void notifyInsert(MessageListDTO messagelistDTO) {
		sqlSession.insert(namespace+".notifyinsert",messagelistDTO);
	}

	@Override
	public List<MessageListVO> notyfiCheck(String targetuserid) {
		return sqlSession.selectList(namespace+".notifycheck",targetuserid);
	}

	@Override
	public void notyfidelete(String targetuserid) {
		sqlSession.delete(namespace+".notifydelete",targetuserid);
	}

	

}
