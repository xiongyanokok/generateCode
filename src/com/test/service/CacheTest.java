package com.test.service;

import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.app.pojo.Demo;
import com.app.service.demo.DemoService;
import com.common.spring.CacheUtil;
import com.test.BaseTest;

/**
 * 测试类必须继承于BaseTest
 * 
 * @author xuejx 2015-9-24
 */
public class CacheTest extends BaseTest {

	// 注入要测试的类
	@Autowired
	private DemoService demoService;

	/**
	 * 测试缓存
	 */
	@Test
	public void testCache() {
		Demo d = demoService.getDemoById(100);
		System.out.println("1----" + d.getName());
		d = null;

		d = demoService.getDemoById(100);
		System.out.println("2----" + d.getName());

		System.out.println("更新数据库使缓存失效:");
		demoService.updateDemoDB(d);
		System.out.println("失效后再次查询走数据库:");
		d = demoService.getDemoById(100);

		System.out.println("更新数据库同时更新缓存:");
		demoService.updateDemoCache(d);
		System.out.println("缓存同时被更新，这次查询走缓存:");
		d = null;
		d = demoService.getDemoById(100);
		System.out.println("cache----" + d.getName());

		/**
		 * 编程使用cache
		 */

		d = CacheUtil.get("appCache", 100);
		System.out.println(d.getName());
		CacheUtil.remove("appCache", 100);
		d = CacheUtil.get("appCache", 100);
		Assert.assertNull(d);

		CacheUtil.put("appCache", 300, new Demo(300, "demo300"));
		d = CacheUtil.get("appCache", 300);
		System.out.println(d.getName());
	}

}