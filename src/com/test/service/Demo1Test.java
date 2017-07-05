package com.test.service;

import java.util.List;

import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.transaction.annotation.Transactional;

import com.app.pojo.Demo;
import com.app.service.demo.DemoService;
import com.common.core.pojo.Pager;
import com.test.BaseTest;

/**
 * 测试类必须继承于BaseTest
 * 
 * @author xuejx 2015-9-24
 */
public class Demo1Test extends BaseTest {

	// 注入要测试的类
	@Autowired
	private DemoService demoService;

	@Test
	// 标识这个一个测试方法
	@Transactional
	// 标明此方法需使用事务
	@Rollback(false)
	// 标明使用完此方法后事务不回滚,true时为回滚
	public void test1() {
		Pager<Demo> page =new Pager<Demo>();
		demoService.queryByPage(page,null);
		List<Demo> list = page.getList();
		for (Demo d : list) {
			System.out.printf("id=%5d , name =%10s\n", d.getId(), d.getName());
		}
		Assert.assertEquals(10, list.size());
	}

}