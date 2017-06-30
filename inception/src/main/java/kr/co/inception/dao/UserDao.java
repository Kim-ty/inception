package kr.co.inception.dao;

import kr.co.inception.dto.JoinDTO;
import kr.co.inception.dto.LoginDTO;
import kr.co.inception.dto.UpdateUserDTO;
import kr.co.inception.vo.LoginVO;

public interface UserDao {
	
	public int joinUser(JoinDTO joinDTO);
	public LoginVO loginUser(LoginDTO loginDTO);
	public int UpdateUser(UpdateUserDTO updateuserDTO);

}
