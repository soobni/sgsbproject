package com.mycom.crud;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping(value="/prouser")
public class ProuserController {

	@Autowired
	ProuserService ProuserService;

	@RequestMapping(value="/main", method=RequestMethod.GET)
	public String main() {
		return "main";
	}
	
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public String Prouserlist(Model model) {
		model.addAttribute("list",ProuserService.getProuserList());
		return "list";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String addPost() {
		return "addpostform";
	}
	
	@RequestMapping(value="/addok",method=RequestMethod.POST)
	public String addPostOK(ProuserVO vo) {
		if(ProuserService.insertProuser(vo)==0)
			System.out.println("데이터 추가 실패");
		else
			System.out.println("데이터 추가 성공!!!");
		return "redirect:list";
	}
	@RequestMapping(value="/editform/{seq}", method=RequestMethod.GET)
	public String editPost(@PathVariable("seq")int seq,Model model) {
		ProuserVO ProuserVO=ProuserService.getProuser(seq);
		model.addAttribute("vo",ProuserVO);
		return "editform";
	}
	@RequestMapping(value="/editok", method=RequestMethod.POST)
	public String editPostOk(ProuserVO vo) {
		if(ProuserService.updateProuser(vo)==0)
			System.out.println("데이터 수정 실패 ");
		else 
			System.out.println("데이터 수정 성공!!!");
		return "redirect:list";
		
	}
	
	@RequestMapping(value="/deleteok/{seq}", method=RequestMethod.GET)
	public String deletePostOk(@PathVariable("seq")int seq) {
		if(ProuserService.deleteProuser(seq)==0)
			System.out.println("데이터 삭제 실패 ");
		else 
			System.out.println("데이터 삭제 성공!!!");
		return "redirect:../list";
	}
	
}
