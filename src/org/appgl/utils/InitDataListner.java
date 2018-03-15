package org.appgl.utils;

import java.util.List;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import org.appgl.dao.appcategoryDao;
import org.appgl.dao.appversionDao;
import org.appgl.dao.datadictionaryDao;
import org.appgl.pojo.appcategory;
import org.appgl.pojo.appversion;
import org.appgl.pojo.datadictionary;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

@WebListener
public class InitDataListner implements ServletContextListener {

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub

	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		ApplicationContext context = WebApplicationContextUtils.getWebApplicationContext(arg0.getServletContext());
		datadictionaryDao datadictionaryDao = (datadictionaryDao) context.getBean("datadictionaryDao");
		String appState = "appState";
		String Platform = "Platform";
		List<datadictionary> list = datadictionaryDao.getAllt(appState);
		List<datadictionary> list1 = datadictionaryDao.getAllt(Platform);
		arg0.getServletContext().setAttribute("aaa", list);
		arg0.getServletContext().setAttribute("ppp", list1);
		
		appcategoryDao appcategoryDao = (appcategoryDao) context.getBean("appcategoryDao");
		
		
		
		List<appcategory> list2 = appcategoryDao.getAll();
		
		arg0.getServletContext().setAttribute("yyy", list2);
		
	}

}








