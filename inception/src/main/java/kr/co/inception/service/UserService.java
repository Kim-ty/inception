package kr.co.inception.service;

import kr.co.inception.dto.JoinDTO;
import kr.co.inception.dto.LoginDTO;
import kr.co.inception.dto.UpdateUserDTO;
import kr.co.inception.vo.LoginVO;

public interface UserService {
	
	public int joinUser(JoinDTO joinDTO);
	public LoginVO loginUser(LoginDTO loginDTO);
	public int updateUser(UpdateUserDTO updateuserDTO);
	

}
