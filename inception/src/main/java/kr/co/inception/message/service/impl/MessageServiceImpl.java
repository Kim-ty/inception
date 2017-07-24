package kr.co.inception.message.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.inception.message.dao.MessageDAO;
import kr.co.inception.message.service.MessageService;
import kr.co.inception.message.vo.MessageListVO;

@Service
public class MessageServiceImpl implements MessageService {

	@Autowired
	MessageDAO messageDAO;

	@Override
	public List<MessageListVO> showMessageList(String targetuserid) {
		System.out.println("서비스쪽  "+targetuserid);
		return messageDAO.showMessageList(targetuserid);

	}
}
