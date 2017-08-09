package kr.co.inception.message.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.inception.message.dao.MessageDAO;
import kr.co.inception.message.dto.MessageListDTO;
import kr.co.inception.message.service.MessageService;
import kr.co.inception.message.vo.MessageListVO;

@Service
public class MessageServiceImpl implements MessageService {

	@Autowired
	MessageDAO messageDAO;

	@Override
	public List<MessageListVO> showMessageList(String targetuserid) {
		return messageDAO.showMessageList(targetuserid);

	}

	@Override
	public List<MessageListVO> showMessageRoom(MessageListDTO messagelistDTO) {
		return messageDAO.showMessageRoom(messagelistDTO);
	}

	@Override
	public void messageInsert(MessageListDTO messagelistDTO) {
		messageDAO.messageInsert(messagelistDTO);
	}

	@Override
	public void notifyInsert(MessageListDTO messagelistDTO) {
		messageDAO.notifyInsert(messagelistDTO);
	}

	@Override
	public List<MessageListVO> notyfiCheck(String targetuserid) {
		return messageDAO.notyfiCheck(targetuserid);
	}

	@Override
	public void notyfidelete(String targetuserid) {
		messageDAO.notyfidelete(targetuserid);
	}

}
