package com.common.core.dao;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.dao.DataAccessException;
/**
 * Dao的基类
 * @param <T> 对象
 * @param <PK> 主键
 */
public interface ApplicationDAO <T ,PK extends Serializable>{
	/**
	 * 根据主键查询对应的对象
	 * @param primaryKey 对象的主键
	 * @return 查询后的对象
	 * @throws DataAccessException DataAccessException
	 */
	T queryById(PK id) throws DataAccessException;
	/**
	 * 查询总记录数
	 * @param param 参数
	 * @return
	 */
	long queryRowCount(@Param("params") Map<String, Object> params);
	
	/**
	 * 根据参数查询，返回为map对象，考虑到多表联合查询
	 * @param param
	 * @return
	 * @throws DataAccessException
	 */
	Map<String, Object> queryComplexByParam(@Param("params") Map<String, Object> params) throws DataAccessException;
	/**
	 * 根据条件查询返回实体对象，单表情况
	 * @param param
	 * @return
	 * @throws DataAccessException
	 */
	T queryByParam(@Param("params") Map<String, Object> params) throws DataAccessException;
	/**
	 * 查询所有，单表
	 * @param param
	 * @return
	 * @throws DataAccessException
	 */
	List<T> queryAll(@Param("params") Map<String, Object> params) throws DataAccessException;
	/**
	 * 分页查询
	 * @param params
	 * @param offset
	 * @param limits
	 * @return`
	 */
	List<T> queryByPage(@Param("params") Map<String, Object> params,
			@Param("firstRowIndex")int offset, @Param("rows")int limits);
	
	/**
	 * 保存对象
	 * @param 实体对象
	 * @throws DataAccessException DataAccessException
	 */
	void save(T entity) throws DataAccessException;
	
	/**
	 * 修改对象
	 * @param 实体对象
	 * @throws DataAccessException DataAccessException
	 */
	void update(T entity) throws DataAccessException;
	/**
	 * 根据对象主键删除对应的对象
	 * @param primaryKey 对象的
	 */
	void delete(T entity) throws DataAccessException;
	
	
	
}
