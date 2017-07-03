package kr.co.inception.user.service;

import kr.co.inception.user.dto.JoinDTO;
import kr.co.inception.user.dto.LoginDTO;
import kr.co.inception.user.dto.UpdateUserDTO;
import kr.co.inception.user.vo.JoinVO;
import kr.co.inception.user.vo.LoginVO;

public interface UserService {
	
	public int joinUser(JoinDTO joinDTO);
	public LoginVO loginUser(LoginDTO loginDTO);
	public int updateUser(UpdateUserDTO updateuserDTO);
	public int idchk(JoinDTO joinDTO);
	public int emailchk(JoinDTO joinDTO);
	
	

}
