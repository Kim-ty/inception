package kr.co.inception.message.service;

import java.util.List;

import kr.co.inception.message.dto.MessageListDTO;
import kr.co.inception.message.vo.MessageListVO;

public interface MessageService {

	public List<MessageListVO> showMessageList(String targetuserid);
	public List<MessageListVO> showMessageRoom(MessageListDTO messagelistDTO);
	public void messageInsert(MessageListDTO messagelistDTO);
	public void notifyInsert(MessageListDTO messagelistDTO);
	public List<MessageListVO> notyfiCheck(String targetuserid);
	public void notyfidelete(String targetuserid);

}
