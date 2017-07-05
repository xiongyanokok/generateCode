package com.app.action.demo;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.app.pojo.Demo;
import com.app.service.demo.DemoService;
import com.common.core.pojo.Pager;
import com.test.code.Columns;

@Controller
@RequestMapping("/demo/")
public class DemoController {

	@Autowired
	private DemoService demoSerice;

	@RequestMapping("/list")
	public String list(Model m, Pager<Demo> page,
			@RequestParam Map<String, Object> params, HttpServletRequest request) {
		demoSerice.queryByPage(page, params);
		m.addAttribute("page", page);
		// System.out.println(1/0);
		return "demo/list";
	}

	@RequestMapping("/listDialog")
	public String listDialog(Model m, Pager<Demo> page,
			@RequestParam Map<String, Object> params) {
		demoSerice.queryByPage(page, params);
		m.addAttribute("page", page);
		return "demo/listDialog";
	}

	@RequestMapping("/listBwiev2Demo")
	public String listBwiev2Demo(Model m, Pager<Demo> page,
			@RequestParam Map<String, Object> params) {
		page.setPageSize(2);
		demoSerice.queryByPage(page, params);
		m.addAttribute("page", page);
		return "demo/bwiev2Demo";
	}

	@RequestMapping("/aaDemo")
	public String aaDemo(Demo demo) {
		// demo 没有必要放到model 或request 或session中 就可以再页面访问
		return "demo/aaDemo";
	}

	@RequestMapping("/mytest")
	public String mytest(Demo demo) {

		return "demo/aaDemo";
	}

	/**
	 * ajax 调用
	 * 
	 * @param params
	 * @return
	 */
	@RequestMapping("/ajaxtest")
	@ResponseBody
	public Map<String, String> getAllStockCode(
			@RequestParam Map<String, Object> params) {
		Map<String, String> m = new HashMap<String, String>();
		m.put("msg", "ajaxtest 成功");
		return m;
	}

	/**
	 * 跳转到 sqlMapper<br/>
	 * Date: 2015-12-22 下午2:38:21 <br/>
	 * 
	 * @author xuejianxin
	 * @param m
	 * @param params
	 * @return
	 */
	@RequestMapping("/sqlMapper")
	public String sqlMapper(Model m, @RequestParam Map<String, Object> params) {
		return "demo/sqlMapper";
	}

	@RequestMapping("/executeSql")
	@ResponseBody
	public Map<String, String> executeSql(
			@RequestParam Map<String, Object> params) {
		Map<String, String> result = demoSerice.executeSql(
				(String) params.get("pojoName"), (String) params.get("sql"));
		return result;
	}

	@RequestMapping("/tableList")
	public String getAllTable(Model m, @RequestParam Map<String, Object> params) {
		String tableName = (String) params.get("tableName");
		List<String> list = demoSerice.getAllTable(tableName);
		m.addAttribute("list", list);
		return "demo/tableList";
	}

	/**
	 * 获取表信息<br/>
	 * Date: 2015-11-3 下午5:37:58 <br/>
	 * 
	 * @author xuejianxin
	 * @param m
	 * @param params
	 * @return
	 */
	@RequestMapping("/tableInfo")
	public String tableInfo(Model m, @RequestParam Map<String, Object> params) {
		String tableName = (String) params.get("tableName");
		List<Columns> list = demoSerice.getTableInfo(tableName);
		m.addAttribute("list", list);
		m.addAttribute("tableName", tableName);
		return "demo/tableInfo";
	}

	@RequestMapping("/code")
	@ResponseBody
	public Map<String, String> code(@RequestParam Map<String, Object> params) {
		String tableName = (String) params.get("tableName");
		demoSerice.toCode(tableName, params);
		Map<String, String> m = new HashMap<String, String>();
		m.put("msg", "代码生成成功");
		return m;
	}

	@RequestMapping("postJson")
	@ResponseBody
	public Map<String, Object> postJson(@RequestBody Demo vo,
			@RequestParam Map<String, Object> params) {
		Map<String, Object> result = new HashMap<String, Object>();
		try {
			result.put("ok", true);
			result.put("msg", vo.getName());
		} catch (Exception e) {
			result.put("ok", false);
			result.put("msg", "操作失败!" + e.getMessage());
		}
		return result;
	}

}
