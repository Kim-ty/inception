package kr.co.inception.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.inception.dao.UserDao;
import kr.co.inception.dto.JoinDTO;
import kr.co.inception.dto.LoginDTO;
import kr.co.inception.dto.UpdateUserDTO;
import kr.co.inception.vo.LoginVO;

@Repository
public class UserDaoImpl implements UserDao{
	
private static final String namespace="kr.co.shop.mapper.userMapper";

	
	@Autowired
	SqlSession sqlSession;

	@Override
	public int joinUser(JoinDTO joinDTO) {
		return sqlSession.insert(namespace+".JoinUser",joinDTO);
	}

	@Override
	public LoginVO loginUser(LoginDTO loginDTO) {
		return sqlSession.selectOne(namespace+".loginUser",loginDTO);
	}

	@Override
	public int UpdateUser(UpdateUserDTO updateuserDTO) {
		return sqlSession.update(namespace+".UpdateUser",updateuserDTO);
	}

}
