package com.common.spring;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.SimpleMappingExceptionResolver;

/**
 * spring 统一异常处理类
 * @author    北京八维博大科技   薛建新
 * @date      2013-9-25  上午10:50:25
 */
public class MySimpleMappingExceptionResolver extends  SimpleMappingExceptionResolver  {
	private static Log log = LogFactory.getLog(MySimpleMappingExceptionResolver.class);
	
	@Override
	protected ModelAndView doResolveException(HttpServletRequest request, HttpServletResponse response,
			Object handler, Exception ex) {
		log.error(ex);
		ex.printStackTrace();
		System.out.println("*****************MySimpleMappingExceptionResolver***************");
		String viewName = determineViewName(ex, request);
		if (viewName != null) {
			if (!isAjaxRequest(request)) {
				// 如果不是异步请求
				Integer statusCode = determineStatusCode(request, viewName);
				if (statusCode != null) {
					applyStatusCodeIfPossible(request, response, statusCode);
				}
				return getModelAndView(viewName, ex, request);
				//return doRequest(request,response,handler,ex);
			} else {//ajax 请求
				return doAjaxRequest(request,response,handler,ex);
			}
		}
		else if(isAjaxRequest(request)) {
			return doAjaxRequest(request,response,handler,ex);
		}
		return null;
	}
	
	
	private ModelAndView doRequest(HttpServletRequest request, HttpServletResponse response,
			Object handler, Exception ex){
		try {
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html");
			PrintWriter writer = response.getWriter();
			writer.append(" <script type='text/javascript'> ");
			writer.append(" alert(\"错误信息:  "+ex.getMessage()+"\");");
			writer.append(" </script> ");
			writer.flush();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	private ModelAndView doAjaxRequest(HttpServletRequest request, HttpServletResponse response,
			Object handler, Exception ex){
		try {
			response.setCharacterEncoding("UTF-8");
			response.setContentType("application/json; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.append("{\"msg\":\"错误信息:  "+ex.getMessage()+"\"}");
			writer.flush();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	/**判断是否ajax请求
	 * @author  http://www.bwbroad.com   xuejx
	 * @param request
	 * @return
	 */
	private boolean isAjaxRequest(HttpServletRequest request){
		return   request.getHeader("accept").indexOf("application/json") > -1 ||
				(request.getHeader("X-Requested-With")!= null 
				  && request.getHeader("X-Requested-With").indexOf("XMLHttpRequest") > -1);
	}
	
	
	
}
