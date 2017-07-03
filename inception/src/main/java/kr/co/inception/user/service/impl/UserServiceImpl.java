package kr.co.inception.user.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.inception.user.dao.UserDao;
import kr.co.inception.user.dto.JoinDTO;
import kr.co.inception.user.dto.LoginDTO;
import kr.co.inception.user.dto.UpdateUserDTO;
import kr.co.inception.user.service.UserService;
import kr.co.inception.user.vo.JoinVO;
import kr.co.inception.user.vo.LoginVO;

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

	@Override
	public int idchk(JoinDTO joinDTO) {
		return userDao.idchk(joinDTO);
	}

}
