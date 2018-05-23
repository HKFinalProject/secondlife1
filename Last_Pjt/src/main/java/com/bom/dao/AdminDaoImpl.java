package com.bom.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bom.dto.AdminDto;

@Repository
public class AdminDaoImpl implements AdminDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public List<AdminDto> selectAll() {
		List<AdminDto> list = new ArrayList<AdminDto>();
		
		try {
			list = sqlSession.selectList(namespace+"selectAll");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public AdminDto selectOne(String member_id) {
		AdminDto dto = new AdminDto();
		try {
			dto = sqlSession.selectOne(namespace+"selectOne",member_id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}

	@Override
	public int insert(AdminDto dto) {
		int res = 0;
		try {
			dto = sqlSession.selectOne(namespace+"insert",dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public int delete(String member_id) {
		int res = 0;
		try {
			res = sqlSession.delete(namespace+"delete",member_id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public int update(AdminDto dto) {
		int res = 0;
		try {
			res = sqlSession.update(namespace+"update",dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}
}
