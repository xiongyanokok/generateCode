/**
 * Date:2015-10-27上午11:15:35
 * Copyright (c) 2015, www.bwbroad.com All Rights Reserved.
 *
 */

package com.test;

import java.util.Arrays;

/**
 * Description: TODO <br/>
 * Date: 2015-10-27 上午11:15:35 <br/>
 * 
 * @author xuejianxin
 */
public class Test1 {

	/**
	 * Description:TODO<br/>
	 * Date: 2015-10-27 上午11:15:35 <br/>
	 * 
	 * @author xuejianxin
	 * @param args
	 */
	public static void main(String[] args) {
		// int a=6;
		// System.out.println(Integer.toBinaryString(a));
		int[] ints = toInts(13);
		System.out.println(Arrays.toString(ints));
		System.out.println(Math.floor(202/50.0));
	}

	public static int[] toInts(int a) {
		if (a >= 65535) {
			return new int[] { 65535 };
		}
		String s = Integer.toBinaryString(a);
		char[] ca = s.toCharArray();
		int[] ints = new int[ca.length];
		for (int i = ca.length - 1; i >= 0; i--) {
			ints[i] = Integer.parseInt(String.valueOf(ca[i])) << (ca.length - i - 1);
		}
		return ints;
	}

}
