package kr.co.inception.message.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.inception.message.dao.MessageDAO;
import kr.co.inception.message.vo.MessageListVO;

@Repository
public class MessageDaoImpl implements MessageDAO{
	public static final String namespace= "kr.co.inception.mapper.messageMapper";
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<MessageListVO> showMessageList(String targetuserid) {
		System.out.println("DAO쪽"+targetuserid);
		return sqlSession.selectList(namespace+".messageList",targetuserid);
	}

}
