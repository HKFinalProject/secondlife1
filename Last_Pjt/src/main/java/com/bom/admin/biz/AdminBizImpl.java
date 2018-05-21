package com.bom.admin.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bom.admin.AdminDto;
import com.bom.admin.dao.AdminDao;

@Service
public class AdminBizImpl implements AdminBiz {
	
	@Autowired
	private AdminDao dao;

	@Override
	public List<AdminDto> selectAll() {
		return dao.selectAll();
	}

	@Override
	public AdminDto selectOne(String member_id) {
		return dao.selectOne(member_id);
	}

	@Override
	public int insert(AdminDto dto) {
		return dao.insert(dto);
	}

	@Override
	public int delete(String member_id) {
		return dao.delete(member_id);
	}

	@Override
	public int update(AdminDto dto) {
		return dao.update(dto);
	}

}
