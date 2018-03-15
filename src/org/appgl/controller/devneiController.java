package org.appgl.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.appgl.dao.appinfoDao;
import org.appgl.pojo.appcategory;
import org.appgl.pojo.appinfo;
import org.appgl.pojo.devuser;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;


@Controller
@RequestMapping("/nei")
public class devneiController {
	
	@Resource
	private appinfoDao appinfoDao;
	
	@RequestMapping("/devnei")
	public String Index() throws Exception{
		return "devnei";
	}
	
	@RequestMapping("/xzapp")
	public String xzapp() throws Exception{
		return "xzapp";
	}
	
	@RequestMapping("/list")
	public String list() throws Exception{
		return "dnei";
	}
	
	@RequestMapping("/dnei")
	@ResponseBody
	public  Map<String, Object> list(@RequestParam(defaultValue="0") Integer offset, Integer limit,appinfo condition,HttpSession Session) throws Exception{
		System.out.println(condition.getSoftwarename());
		Map<String, Object> map = new HashMap<>();
		devuser use=(devuser)Session.getAttribute("login");
		condition.setDevid(use);
		
		List<appinfo> list = appinfoDao.getByCondition(offset, limit, condition, "id", "asc");
		int total=appinfoDao.getCountByCondition(condition);
		
		System.out.println(list);
		map.put("rows", list);
		map.put("total", total);
		
		return map;
	}
	@RequestMapping("/infos")
	@ResponseBody
	public List<appcategory> infos(Integer type,HttpSession session)throws Exception{
		List<appcategory> infos=new ArrayList<>();
		List<appcategory> all=(List<appcategory>)session.getServletContext().getAttribute("yyy");
		for (appcategory yi : all) {
			if(yi.getParentid()==type) {
				infos.add(yi);
			}
			
		}
		return infos;
	}
	
	@RequestMapping("/dadd")
	public String dadd(appinfo appinfo)throws Exception{
		
		appinfoDao.add(appinfo);
		
		return "redirect:/nei/devnei";
	}
	
	@RequestMapping(value="/upload",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> upload(MultipartFile image,HttpServletRequest request) throws Exception{
		Map<String, Object> map = new HashMap<>();
		if (!image.isEmpty()) {
			String path = request.getServletContext().getRealPath("/assets/img");
			File dest = new File(path + File.separator + image.getOriginalFilename());
			image.transferTo(dest);
			map.put("url", "img/"+image.getOriginalFilename());
		}
		return map;
	}
	

}
