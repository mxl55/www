package org.appgl.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.appgl.dao.devuserDao;
import org.appgl.pojo.devuser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/denglu")
public class dengluController {
	
	@Resource
	private devuserDao devuserDao;
	
	public void setDevuserDao(devuserDao devuserDao) {
		this.devuserDao = devuserDao;
	}

	@RequestMapping("/index")
	public String Index() throws Exception{
		return "index";
	}
	
	@RequestMapping("/devdenglu")
	public String dev() throws Exception{
		return "devdenglu";
	}
	
	@RequestMapping("/backdenglu")
	public String back() throws Exception{
		return "backdenglu";
	}
	@RequestMapping("/login")
	public String devdeng(devuser devuser,ModelMap modelMap,HttpSession session) throws Exception{
		devuser devuser2 = devuserDao.getBydevname(devuser.getDevcode());
		if(devuser2==null) {
			modelMap.put("errors", "�˺Ų�����");
			return "devdenglu";
		}
		if (!devuser2.getDevpassword().equals(devuser.getDevpassword())) {
			modelMap.put("errors", "�������");
			return "devdenglu";
		}
		session.setAttribute("login",devuser2);
		return "devnei";
	}
	
	@RequestMapping("/add")
	public String add(devuser devuser) throws Exception{
		devuserDao.add(devuser);
		
		return "redirect:/denglu/devdenglu";
	}

}
