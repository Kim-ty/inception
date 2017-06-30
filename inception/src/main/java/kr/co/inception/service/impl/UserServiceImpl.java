package kr.co.inception.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.inception.dao.UserDao;
import kr.co.inception.dto.JoinDTO;
import kr.co.inception.dto.LoginDTO;
import kr.co.inception.dto.UpdateUserDTO;
import kr.co.inception.service.UserService;
import kr.co.inception.vo.LoginVO;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDao userDao;

	@Override
	public int joinUser(JoinDTO joinDTO) {
		
		return userDao.joinUser(joinDTO);
	}

	@Override
	public LoginVO loginUser(LoginDTO loginDTO) {
		return userDao.loginUser(loginDTO);
	}

	@Override
	public int updateUser(UpdateUserDTO updateuserDTO) {
		return userDao.UpdateUser(updateuserDTO);
	}

}
