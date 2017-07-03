package kr.co.inception.user.dao;

import kr.co.inception.user.dto.JoinDTO;
import kr.co.inception.user.dto.LoginDTO;
import kr.co.inception.user.dto.UpdateUserDTO;
import kr.co.inception.user.vo.JoinVO;
import kr.co.inception.user.vo.LoginVO;

public interface UserDao {
	
	public int joinUser(JoinDTO joinDTO);
	public LoginVO loginUser(LoginDTO loginDTO);
	public int UpdateUser(UpdateUserDTO updateuserDTO);
	public int idchk(JoinDTO joinDTO);
	public int emailchk(JoinDTO joinDTO);

}
