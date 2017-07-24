package kr.co.inception.message.dao;

import java.util.List;

import kr.co.inception.message.vo.MessageListVO;

public interface MessageDAO {
	
	public List<MessageListVO> showMessageList(String targetuserid);

}
