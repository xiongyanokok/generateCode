/**
 * Date:2015-10-21下午3:23:22
 * Copyright (c) 2015, www.bwbroad.com All Rights Reserved.
 *
 */

package com.common.core.util;

import java.util.UUID;

/**
 * Description: ID 生成器 <br/>
 * Date: 2015-10-21 下午3:23:22 <br/>
 * 
 * @author xuejianxin
 */
public final class ID {
	private ID() {
	}

	/**
	 * Description:生成系统id<br/>
	 * Date: 2015-10-21 下午3:40:31 <br/>
	
	 * @author xuejianxin
	 * @return
	 */
	public static final String get() {
		String s = UUID.randomUUID().toString();
		s = s.substring(0, 8) + s.substring(9, 13) + s.substring(14, 18) + s.substring(19, 23) + s.substring(24);
		return s;
	}

}
