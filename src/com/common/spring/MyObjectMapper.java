/**
 * Date:2015-11-13上午11:32:27
 * Copyright (c) 2015, www.bwbroad.com All Rights Reserved.
 *
*/

package com.common.spring;

import org.springframework.beans.factory.InitializingBean;

import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * 定制json 序列化对象 <br/>
 * Date:     2015-11-13 上午11:32:27 <br/>
 * @author   xuejianxin	 
 */
public class MyObjectMapper extends ObjectMapper implements InitializingBean{
	private static final long serialVersionUID = 1L;

	@Override
	public void afterPropertiesSet() throws Exception {
		// jackson 1.9 and before
		//this.configure(DeserializationConfig.Feature.FAIL_ON_UNKNOWN_PROPERTIES, false);
		// or jackson 2.0 设置反向序列化的时候，忽略json中存在而 pojo 中不存在的属性
		this.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
	}
    
}

