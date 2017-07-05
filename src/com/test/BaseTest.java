package com.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**测试类的基类
 * @author xuejx
 * 2015-9-24
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath*:/config/applicationContext-*.xml" })
public class BaseTest extends AbstractJUnit4SpringContextTests {
	@Test
	public void test() {
		System.out.println("basetest");
	}
}
