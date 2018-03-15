package org.appgl.dao;

import org.apache.ibatis.annotations.Param;
import org.appgl.pojo.backenduser;

public interface backenduserDao extends CommonDao<backenduser, Integer> {
	public backenduser getByUsername(@Param("username") String username);

}
