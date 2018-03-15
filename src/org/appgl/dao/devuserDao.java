package org.appgl.dao;

import org.apache.ibatis.annotations.Param;
import org.appgl.pojo.devuser;

public interface devuserDao extends CommonDao<devuser, Integer> {
	
	public devuser getBydevname(@Param("devname") String devname);

}
