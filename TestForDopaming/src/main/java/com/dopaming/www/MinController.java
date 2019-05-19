package com.dopaming.www;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dopaming.www.login.*;

@Controller
public class MinController {
	
	private static final Logger logger = LoggerFactory.getLogger(MinController.class);
	
	@Autowired
	Loginservice_min service;
	
	//(관리자)로그인 폼
		@RequestMapping(value= {"/loginForm","/login"}, method=RequestMethod.GET)
		public String loginFrom() {
			return "admin/admin_min/adminlogin_min.empty";
		}
			//로그인 처리
			@RequestMapping(value="/login", method=RequestMethod.POST)
			public String login(@ModelAttribute("members") MembersVO_min vo, 
					HttpServletRequest request,HttpSession session,
					HttpServletResponse response) throws IOException{
				MembersVO_min member = service.getMembers(vo);
				if(member == null ){
						PrintWriter out = response.getWriter();
						out.println("<script>");
						out.println("alert('id error');");
						out.println("history.go(-1);"); //이전페이지로
						out.println("</script>");
					return "admin/admin_min/adminlogin_min.empty";	
				}
				else {
					session.setAttribute("member_id",member.getMember_id());
					session.setAttribute("member_password",member.getMember_password());
					session.setAttribute("member",member);
					return "admin/admin_min/adminmain_min";
				}
			}
			
			//로그아웃 처리
			@RequestMapping("/logout")
			public String logout(HttpSession session) {
				session.invalidate(); //세션무효화
				return "admin/admin_min/adminlogin_min.empty";
			}
	
		@ModelAttribute("condMap")			//model.addAttribute(, conditionMap);
		public Map<String, String> searchConditionMap(){
			HashMap<String,String> conditionMap = new HashMap<String, String>();
			conditionMap.put("아이디","ID");
			conditionMap.put("등급","GRADE");
			//conditionMap.put("작성자","WRITER");
			return conditionMap;
		}		
					
	//(유저)아콘결제페이지
	@RequestMapping(value= {"/acornForm"}, method=RequestMethod.GET)
	public String acornFrom() {
		return "min/useracorn_min";
	}
	
	//(관리자)회원관리 - 등급관리
	@RequestMapping(value= {"/classForm"}, method=RequestMethod.GET)
	public String classFrom() {
		return "admin/admin_min/adminclass_min";
	}
	
	//(관리자)회원관리 - 사용자관리
	@RequestMapping(value= {"/userForm"}, method=RequestMethod.GET)
	public String userFrom() {
		return "admin/admin_min/adminuser_min";
	}
	
	//(관리자)회원관리 - 업로드한 리스트 뷰
	@RequestMapping(value= {"/uploadlistForm"}, method=RequestMethod.GET)
	public String uploadlistFrom() {
		return "admin/admin_min/adminuploadlist_min";
	}
}
