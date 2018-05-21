package com.bom.admin.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bom.admin.AdminDto;
import com.bom.admin.biz.AdminBiz;

@Controller
public class AdminController {
	
	@Autowired
	AdminBiz biz;
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "home.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping(value = "list.do")
	public String list(Model model) {
		
		List<AdminDto> list = biz.selectAll();
		model.addAttribute("list", list);

		return "list";
	}
	
	@RequestMapping(value = "detail.do")
	public String detail(Model model,@RequestParam("member_id") String member_id) {
		//@RequestParam("seq") jsp파일에서 넘어오는 seq를 int seq에 넣어주겠다
		
		AdminDto dto = biz.selectOne(member_id);
		model.addAttribute("dto", dto);
		return "detail";
	}
	
	@RequestMapping("write.do")
	public String writeForm(Model model) {
		return "insert";
	}
	
	@RequestMapping(value="insert.do",method=RequestMethod.POST)
	public String insetRes(Model model,@ModelAttribute AdminDto dto) {
			
		int res = biz.insert(dto);
		model.addAttribute("list", biz.selectAll());
		if (res>0) {
			//return "/WEB-INF/view/boardList.jsp";
			//위처럼 하면 새로고침할때 마다 글이 추가되기 때문에 
			return "redirect:/list.do";
		}else {
			return "list";
		}
	}
	
	@RequestMapping("update.do")
	public String updateRes(Model model,@ModelAttribute AdminDto dto) {
		//@ModelAttribute는 form 태그에서 sumit으로 jsp에서 컨트롤로
		//보내준것을 알아서 dto에 담겨서 가지고 온다
		int res = biz.update(dto);
		if (res>0) {
			model.addAttribute("dto", biz.selectOne(dto.getMember_id()));
			return "forward:list.do";
		}else {
			model.addAttribute("dto", biz.selectOne(dto.getMember_id()));
		}return "forward:list.do";
	}
	
	@RequestMapping(value="delete.do")
	public String deleteRes(Model model,@RequestParam("member_id") String member_id) {
		//jsp에서 submit으로 보냈지만 id만 필요해서 id만 받기위해
		//@RequestParam("id") 사용
		int res = biz.delete(member_id);
		if (res>0) {
		model.addAttribute("list", biz.selectAll());
		}
		return "list";
	}
	
}
