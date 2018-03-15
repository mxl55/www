package org.appgl.dao;

import java.io.Serializable;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface CommonDao<T,PK extends Serializable> {
	public List<T> getAll();
	
	public List<T> getAllt(@Param("entity")String entity);
	
	public void add(T entity);
	
	public void update(T entity);
	
	public void deleteById(PK id);
	
	public T getById(PK id);
	
	public Integer getCount();
	
	public List<T> getAllt(@Param("entity")T entity);
	
	public List<T> getList(@Param("start")int start,@Param("pageSize")int pageSize);
	
	public List<T> getByCondition(@Param("start")int start,@Param("pageSize") int pageSize,@Param("condition") T condition,@Param("columnName") String columnName,@Param("orderBy") String orderBy);
	
	public Integer getCountByCondition(@Param("condition") T condition);
}
