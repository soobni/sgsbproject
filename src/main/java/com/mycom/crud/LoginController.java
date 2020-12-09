package com.mycom.crud;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/login")
public class LoginController {
	
	@Autowired
	UserServiceImpl service; 
	
	@Autowired
	ProuserService ProuserService;
	
	@Autowired
	SqlSession sqlSession;


	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String addPost() {
		return "addpostform";
	}
	
	@RequestMapping(value="/addok",method=RequestMethod.POST)
	public String addPostOK(ProuserVO vo) throws IOException {
		if(ProuserService.insertProuser(vo)==0)
			System.out.println("데이터 추가 실패");
		else
			{System.out.println("데이터 추가 성공!!!");
			sqlSession.delete("Prouser.delete",vo);
			sqlSession.insert("Prouser.move",vo);
			}
		return "redirect:login";
	}
	
	@RequestMapping(value="/addmemberok",method=RequestMethod.POST)
	public String addMemberOk(ProuserVO vo) {
		if(ProuserService.insertProuser(vo)==0)
			System.out.println("데이터 추가 실패");
		else
			{System.out.println("데이터 추가 성공!!!");
			sqlSession.delete("Prouser.delete",vo);
			sqlSession.insert("Prouser.move",vo);
			}
		return "redirect:/prouser/list";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(String t, Model model) {
		return "login";
	}
	
	@RequestMapping(value="/addmember", method=RequestMethod.GET)
	public String addMember() {
		return "addmember";
	}
	
	@RequestMapping(value="/signup", method=RequestMethod.GET)
	public String signup() {
		return "signup";
	}
	
	@RequestMapping(value="/loginOK", method=RequestMethod.POST)
	public String loginCheck(HttpSession session, UserVO vo) {
	String returnURL = "";
	
	if(session.getAttribute("login")!=null) {
		session.removeAttribute("login");
	}
	
	UserVO loginvo = service.getUser(vo);
	
	if(loginvo != null) {
		System.out.println("로그인 성공!");
		session.setAttribute("login", loginvo);
			if(loginvo.getUserid().equals("admin")) {
				returnURL = "redirect:/prouser/list";
			}
			else
				returnURL = "redirect:/prouser/main";
	}
	else {
		System.out.println("로그인 실패!");
		returnURL = "redirect:/login/login";
	}
	return returnURL; 
	}
	
	@RequestMapping(value="/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login/login";
	}
	
}