package com.common.spring;

import java.util.Locale;
import java.util.Map;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;
import org.springframework.util.Assert;
@Component
public class SpringContextHolder implements ApplicationContextAware  {
	private static ApplicationContext applicationContext;
	/**
	 * 取得存储在静态变量中的ApplicationContext.
	 */
	public static ApplicationContext getApplicationContext() {
		mustbeNotNull();
		return applicationContext;
	}

	/**
	 * 从静态变量ApplicationContext中取得Bean, 自动转型为所赋值对象的类型.
	 */
	@SuppressWarnings("unchecked")
	public static <T> T getBean(String name) {
		mustbeNotNull();
		return (T) applicationContext.getBean(name);
	}

	/**
	 * 从静态变量ApplicationContext中取得Bean, 自动转型为所赋值对象的类型.
	 * 如果有多个Bean符合Class, 取出第一个.
	 */
	public static <T> T getBean(Class<T> requiredType) {
		mustbeNotNull();
		return applicationContext.getBean(requiredType);
	}
	
	/**
	 * 清除applicationContext静态变量.
	 */
	public static void cleanApplicationContext(){
		applicationContext = null;
	}

	private static void mustbeNotNull() {
		Assert.notNull(applicationContext, "applicaitonContext未注入,请在applicationContext.xml中定义SpringContextHolder");
	}
	/**
	 * 如果spring中配置多个类型的bean，则返回最后一个，如果只有一个则读取第一个。
	 * @param key
	 * @param clazz
	 * @return
	 */
	public static <T> T getBeanFilterById(String key, Class<T> clazz){
	  
		T _t = null;
		Map<String, T> map = (Map<String, T>)SpringContextHolder.getApplicationContext().getBeansOfType(clazz);
		if (map != null) { 			
				for (Map.Entry<String, T> ent : map.entrySet()) {
					if(_t == null)
						_t = ent.getValue();
					if (!ent.getKey().startsWith(key)) {
						_t = ent.getValue();
					}
				}
			 
		}
		return _t;
	}

	@Override
	public void setApplicationContext(ApplicationContext applicationContext)
			throws BeansException {
		SpringContextHolder.applicationContext = applicationContext;
	}
	
	
    public static String getMessage(String key){
		    return getMessage(key,null,Locale.SIMPLIFIED_CHINESE);
	}
	 
	public static String getMessage(String key,Object[]args){
			return getMessage(key,args,Locale.SIMPLIFIED_CHINESE);
	}
	 
    public static String getMessage(String key,Object[]args,Locale locale){
    	 mustbeNotNull();
    	 return applicationContext.getMessage(key, args, locale);
	}
	
}
