package com.common.spring;

import java.io.Serializable;

import org.springframework.cache.Cache;
import org.springframework.cache.Cache.ValueWrapper;
import org.springframework.cache.CacheManager;

/**
 * spring cache 工具类
 * 
 * @author xuejx 2015-09-25
 */
public class CacheUtil {
	private static CacheManager cm;
	private static final String DEFAULT_CACHE = "defaultCache";

	static {
		cm = SpringContextHolder.getBean("cacheManager");
	}

	private static Cache getCache(String cacheName) {
		if (null == cacheName) {
			cacheName = DEFAULT_CACHE;
		}
		return cm.getCache(cacheName);
	}

	private static <K extends Serializable> Object getValue(String cacheName, K key) {
		Object value = null;
		Cache cache = getCache(cacheName);
		if (null != cache) {
			ValueWrapper valueWrapper = cache.get(key);
			if (null != valueWrapper) {
				value = valueWrapper.get();
			}
		}
		return value;
	}

	/**
	 * from defaultCache get
	 * 
	 * @param key
	 * @return
	 */
	public static <K extends Serializable, V > V get(K key) {
		return get(DEFAULT_CACHE, key);
	}

	/**
	 * to defaultCache set defaultCache
	 * 
	 * @param key
	 * @param value
	 */
	public static <K extends Serializable, V > void put(K key, V value) {
		put(DEFAULT_CACHE, key, value);
	}

	/**
	 * 移除
	 * 
	 * @param key
	 */
	public static <K extends Serializable> void remove(K key) {
		remove(DEFAULT_CACHE, key);
	}

	/**
	 * 
	 * @param namespace
	 *            cacheName
	 * @param key
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public static <K extends Serializable, V > V get(String cacheName, K key) {
		return (V) getValue(cacheName, key);
	}

	/**
	 * 
	 * @param namespace
	 *            cacheName
	 * @param key
	 * @param value
	 */
	public static <K extends Serializable, V> void put(String cacheName, K key, V value) {
		Cache cache = getCache(cacheName);
		if (null != cache) {
			cache.put(key, value);
		}
	}

	/**
	 * 移除
	 * 
	 * @param key
	 */
	public static <K extends Serializable> void remove(String cacheName, K key) {
		Cache cache = getCache(cacheName);
		if (null != cache) {
			cache.evict(key);
		}
	}
}
