package com.bom.admin.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.bom.admin.AdminDto;

public interface AdminDao {
	
	String namespace = "admin.";
	
	public List<AdminDto> selectAll();
	public AdminDto selectOne(String member_id);
	public int insert(AdminDto dto);
	public int delete(String member_id);
	public int update(AdminDto dto);

}
