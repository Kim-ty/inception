package kr.co.inception.user.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.inception.user.dao.UserDao;
import kr.co.inception.user.dto.JoinDTO;
import kr.co.inception.user.dto.LoginDTO;
import kr.co.inception.user.dto.UpdateUserDTO;
import kr.co.inception.user.vo.LoginVO;

@Repository
public class UserDaoImpl implements UserDao {

	private static final String namespace = "kr.co.inception.mapper.userMapper";

	@Autowired
	SqlSession sqlSession;

	@Override
	public int joinUser(JoinDTO joinDTO) {
		return sqlSession.insert(namespace + ".JoinUser", joinDTO);
	}

	@Override
	public LoginVO loginUser(LoginDTO loginDTO) {
		return sqlSession.selectOne(namespace + ".loginUser", loginDTO);
	}

	@Override
	public int UpdateUser(UpdateUserDTO updateuserDTO) {
		return sqlSession.update(namespace + ".UpdateUser", updateuserDTO);
	}

	@Override
	public int idchk(JoinDTO joinDTO) {
		return sqlSession.selectOne(namespace + ".idchk", joinDTO);
	}

	@Override
	public int emailchk(JoinDTO joinDTO) {
		return sqlSession.selectOne(namespace + ".emailchk", joinDTO);
	}

}
