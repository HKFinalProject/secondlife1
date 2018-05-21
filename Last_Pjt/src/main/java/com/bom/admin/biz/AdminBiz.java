package com.bom.admin.biz;

import java.util.List;
import com.bom.admin.AdminDto;

public interface AdminBiz {
	
	public List<AdminDto> selectAll();
	public AdminDto selectOne(String member_id);
	public int insert(AdminDto dto);
	public int delete(String member_id);
	public int update(AdminDto dto);

}
