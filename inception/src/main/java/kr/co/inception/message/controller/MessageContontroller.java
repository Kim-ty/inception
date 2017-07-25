package kr.co.inception.message.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.inception.message.dto.MessageListDTO;
import kr.co.inception.message.service.MessageService;
import kr.co.inception.message.vo.MessageListVO;

@Controller
@RequestMapping("/message")
public class MessageContontroller {
	
	@Autowired
	private MessageService messageService;

	//android
	@RequestMapping(value = "/andmessagelist")
	@ResponseBody
	public List<MessageListVO> andmessagelist(@RequestParam("targetuserid") String targetuserid) {
		List<MessageListVO> messageList = messageService.showMessageList(targetuserid);

		return messageList;

	}
	
	@RequestMapping(value = "/andmessageroomlist")
	@ResponseBody
	public List<MessageListVO> andmessageroom(@RequestParam("targetuserid") String targetuserid,@RequestParam("userid") String userid) {
		MessageListDTO messageListDTO = new MessageListDTO();
		messageListDTO.setTargetuserid(targetuserid);		
		messageListDTO.setUserid(userid);		
		List<MessageListVO> messageroom = messageService.showMessageRoom(messageListDTO);

		return messageroom;

	}
	
	@RequestMapping(value = "/andmessageinsert")
	@ResponseBody
	public void andmessageInsert(@RequestParam("targetuserid") String targetuserid,@RequestParam("userid") String userid,@RequestParam("message") String message) {
		MessageListDTO messageListDTO = new MessageListDTO();
		messageListDTO.setTargetuserid(targetuserid);		
		messageListDTO.setUserid(userid);
		messageListDTO.setMessage(message);
		messageService.messageInsert(messageListDTO);

		

	}
}
