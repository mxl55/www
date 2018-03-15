package org.appgl.test;

import java.util.List;

import javax.annotation.Resource;

import org.appgl.dao.appcategoryDao;
import org.appgl.dao.appinfoDao;
import org.appgl.dao.backenduserDao;
import org.appgl.dao.datadictionaryDao;
import org.appgl.dao.devuserDao;
import org.appgl.pojo.appcategory;
import org.appgl.pojo.appinfo;
import org.appgl.pojo.backenduser;
import org.appgl.pojo.datadictionary;
import org.appgl.pojo.devuser;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class test {
	
	@Resource
	private devuserDao devuserDao;
	
	@Resource
	private backenduserDao backenduserDao;
	
	@Resource
	private appinfoDao appinfoDao;
	
	@Resource
	private datadictionaryDao datadictionaryDao;
	
	@Resource
	private appcategoryDao appcategoryDao;
	
	
	
	public void setAppcategoryDao(appcategoryDao appcategoryDao) {
		this.appcategoryDao = appcategoryDao;
	}



	public void setAppinfoDao(appinfoDao appinfoDao) {
		this.appinfoDao = appinfoDao;
	}



	public void setDatadictionaryDao(datadictionaryDao datadictionaryDao) {
		this.datadictionaryDao = datadictionaryDao;
	}



	public void setBackenduserDao(backenduserDao backenduserDao) {
		this.backenduserDao = backenduserDao;
	}



	public void setDevuserDao(devuserDao devuserDao) {
		this.devuserDao = devuserDao;
	}



	@Test
	public void test() {
		List<devuser> list = devuserDao.getAll();
		
		for (devuser devuser : list) {
			System.out.println(devuser);
		}
	}
	
	@Test
	public void te() {
		
		String devname = "wangwu";
		
		
		
		devuser devusers = devuserDao.getBydevname(devname);
		
		
		System.out.println(devusers);
		
	}
	
	@Test
	public void a() {
		
		List<backenduser> list = backenduserDao.getAll();
		
		for (backenduser backenduser : list) {
			System.out.println(backenduser);
		}
		
	}
	
	@Test
	public void b() {
		List<appinfo> list = appinfoDao.getByCondition(0, 13, null, "id", "asc");
		for (appinfo appinfo : list) {
			System.err.println(appinfo.getCategoryleve11().getCategoryname()+"\t"+appinfo.getCategoryleve12().getCategoryname()+"\t"+appinfo.getCategoryleve13().getCategoryname());
		}
	}
	
	@Test
	public void g() {
		String yi = "yi";
		
		List<appcategory> list = appcategoryDao.getAllt(yi);
		
		for (appcategory appcategory : list) {
			System.out.println(appcategory);
		}
	}

}
