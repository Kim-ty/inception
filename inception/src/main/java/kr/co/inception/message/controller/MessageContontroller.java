package kr.co.inception.message.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.inception.message.service.MessageService;
import kr.co.inception.message.vo.MessageListVO;

@Controller
@RequestMapping("/message")
public class MessageContontroller {
	
	@Autowired
	private MessageService messageService;

	
	@RequestMapping(value = "/andmessagelist")
	@ResponseBody
	public List<MessageListVO> AllboardListJson(@RequestParam("targetuserid") String targetuserid) {
		List<MessageListVO> messageList = messageService.showMessageList(targetuserid);

		return messageList;

	}
}
