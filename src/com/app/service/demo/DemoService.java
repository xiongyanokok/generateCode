package com.app.service.demo;

import java.sql.Types;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.dbcp.BasicDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCountCallbackHandler;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.app.dao.demo.DemoDAO;
import com.app.pojo.Demo;
import com.common.core.pojo.Pager;
import com.test.code.CodeGenerate;
import com.test.code.Columns;

@Service
public class DemoService {
	@Autowired
	private DemoDAO demoDAO;

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	private BasicDataSource dataSource;

	public void queryByPage(Pager<Demo> page, Map<String, Object> params) {
		List<Demo> list = demoDAO.queryByPage(params, page.getStart(), page.getPageSize());
		page.setList(list).setCount(30);
	}

	/**
	 * 缓存测试<br/>
	 * 使用了一个缓存名叫 appCache<br/>
	 * 使用@Cacheable注释，<br/>
	 * 则当重复使用相同参数调用方法的时候，方法本身不会被调用执行，<br/>
	 * 即方法本身被略过了，取而代之的是方法的结果直接从缓存中找到并返回了<br/>
	 * 参考文档:http://wenku.baidu.com/link?url=A-4xZxYcMPuks-
	 * sI_lAHIvOMnXGQ_1ulL0dARKxIJClxy5V
	 * -3gMI2Y_vnLIB5jEWWg8FwzwdM_3nrK-bd69kAHGO5VuWDldZ26RXkz9DZBW
	 * &qq-pf-to=pcqq.c2c
	 * 
	 * @param id
	 * @return
	 */
	@Cacheable(value = "appCache")
	public Demo getDemoById(int id) {
		return getFromDB(id);
	}

	/**
	 * 按 key 清除 appCache 缓存中的内容<br/>
	 * 在更新数据的时候需要使缓存的条目失效<br/>
	 * 下次查询需要到数据库中查询
	 * 
	 * @param demo
	 */
	@CacheEvict(value = "appCache", key = "#demo.getId()")
	public void updateDemoDB(Demo demo) {
		updateDB(demo);
	}

	/**
	 * 更新 appCache 缓存<br/>
	 * 在更新数据到db的同时，也更新缓存<br/>
	 * 
	 * @param account
	 * @return
	 */
	@CachePut(value = "appCache", key = "#demo.getId()")
	public Demo updateDemoCache(Demo demo) {
		updateDB(demo);
		return demo;
	}

	/**
	 * 清空 appCache 缓存 的所有缓存<br/>
	 * 注解CacheEvict 注释有一个属性 beforeInvocation，缺省为
	 * false，即缺省情况下，都是在实际的方法执行完成后，才对缓存进行清空操作 。期间如果执行方法出现异常，则会导致缓存清空不被执行。
	 * CacheEvict 注释提供的 beforeInvocation 属性，将其设置为 true，这样，在方法执行前我们的缓存就被清空了
	 */
	@CacheEvict(value = "appCache", allEntries = true)
	public void reload() {
	}

	/**
	 * 缓存key的组合
	 * 
	 * @param id
	 * @param name
	 * @return
	 */
	@Cacheable(value = "appCache", key = "#id.concat(#name)")
	public Demo getAccount(int id, String name) {
		return getFromDB(id, name);
	}

	/**
	 * 模拟更新数据库
	 * 
	 * @param demo
	 */
	private void updateDB(Demo demo) {
	}

	/**
	 * 模拟查询数据库
	 * 
	 * @param id
	 * @return
	 */
	private Demo getFromDB(int id) {
		return getFromDB(id, "demo" + id);
	}

	private Demo getFromDB(int id, String name) {
		return new Demo(id, name);
	}

	/**
	 * 获取当前数据库用户得所有表<br/>
	 * Date: 2015-11-3 下午4:24:57 <br/>
	 * 
	 * @author xuejianxin
	 * @param params
	 * @return
	 */
	public List<String> getAllTable(String tableName) {
		List<Object> p = new ArrayList<>();
		StringBuilder sql = new StringBuilder("SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = ?");
		String url = dataSource.getUrl();
		if (url.contains("?")) {
			url = url.substring(0, dataSource.getUrl().indexOf('?'));
		}
		// 数据库名称
		String dbName = url.substring(url.lastIndexOf('/') + 1);
		p.add(dbName);
		
		if (StringUtils.hasText(tableName)) {
			tableName = tableName.toUpperCase();
			sql.append(" and table_name like ? ");
			p.add("%" + tableName + "%");
		}
		sql.append(" ORDER BY TABLE_NAME asc ");
		return jdbcTemplate.queryForList(sql.toString(), String.class, p.toArray());
	}

	public List<Columns> getTableInfo(String tableName) {
		return CodeGenerate.getTableInfo(jdbcTemplate, tableName);
	}

	public void toCode(String tableName, Map<String, Object> options) {
		CodeGenerate.toCode(tableName, CodeGenerate.getTableInfo(jdbcTemplate, tableName), options);

	}

	public Map<String, String> executeSql(String pojoName, String sql) {
		Map<String, String> result = null;
		List<Columns> cs = new ArrayList<Columns>();
		sql = " select a.* from ( " + sql + " ) a where rownum=1 ";
		RowCountCallbackHandler rcch = new RowCountCallbackHandler();
		String msg = null;
		try {
			jdbcTemplate.query(sql, rcch);
		} catch (Exception e) {
			msg = "SQL语法不正确 , sql 不能以 ; 结尾 , 且必须是查询语句 !!!";
			result = new HashMap<String, String>();
			result.put("msg", msg);
			return result;
		}
		String[] coloumnName = rcch.getColumnNames();
		int[] coloumnType = rcch.getColumnTypes();
        if(null==coloumnName){
        	msg = "请确保查询结果必须有数据!!!";
			result = new HashMap<String, String>();
			result.put("msg", msg);
			return result;
        }
		
		for (int i = 0; i < coloumnName.length; i++) {
			Columns c = new Columns(coloumnName[i], CodeGenerate.toBeanLabel(coloumnName[i]));
			c.setBeanLable(c.getBeanLable());
			int type = coloumnType[i];

			switch (type) {
			case Types.TIME:
			case Types.TIMESTAMP:
			case Types.DATE:
				c.setJavaType("Date");
				break;

			case Types.INTEGER:
			case Types.TINYINT:
			case Types.SMALLINT:
				c.setJavaType("Integer");
				break;

			case Types.BIGINT:
				c.setJavaType("Long");
				break;

			case Types.DECIMAL:
			case Types.FLOAT:
			case Types.NUMERIC:
				c.setJavaType("Double");
				break;
			default:
				c.setJavaType("String");
			}
			cs.add(c);
		}

		Map<String, Object> options = new HashMap<String, Object>();
		options.put("mapper", "true");
		options.put("pojo", "true");
		result = CodeGenerate.getCode(pojoName, cs, options);

		return result;
	}

}
