package ${basePackage}.controller;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import ${basePackage}.enums.TrueFalseStatus;
import ${basePackage}.exception.Assert;
import ${basePackage}.model.${className};
import ${basePackage}.service.${className}Service;

/**
 * Controller
 * 
 * @author admin
 * @date ${dateTime}
 */
@Controller
@RequestMapping(value = "/admin/${pageDir}", produces = { "application/json; charset=UTF-8" })
public class ${className}Controller extends BaseController {

	/**
	 * logger
	 */
	private static final Logger logger = LoggerFactory.getLogger(${className}Controller.class);

    @Autowired
	private ${className}Service ${smallClassName}Service;
	
	/**
	 * 进入列表页面
	 * 
	 * @return
	 */
	@RequestMapping(value = "/list", method = { RequestMethod.GET })
	public String list(Model model) {
		return "${pageDir}/list";
	}
	
	/**
	 * 列表分页查询
	 * 
	 * @return
	 */
	@RequestMapping(value = "/query", method = { RequestMethod.POST })
	@ResponseBody
	public Map<String, Object> query() {
		return pageInfoResult(new QueryCallback<${className}>() {
			public List<${className}> query(Map<String, Object> map) {
				// 查询条件
				return ${smallClassName}Service.list${className}(map);
			}
		});
	}
	
	/**
	 * 进入新增页面
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/add", method = { RequestMethod.GET })
	public String add(Model model) {
		return "${pageDir}/add";
	}
	
	/**
	 * 保存数据
	 * 
	 * @param ${smallClassName}
	 * @return
	 */
	@RequestMapping(value = "/save", method = { RequestMethod.POST })
	@ResponseBody
	public Map<String, Object> save(${className} ${smallClassName}) {
		Assert.notNull(${smallClassName}, "保存数据为空");
		${smallClassName}.setCreateUserId(getUserId());
		${smallClassName}.setCreateTime(new Date());
		${smallClassName}.setUpdateUserId(getUserId());
		${smallClassName}.setUpdateTime(new Date());
		${smallClassName}.setIsDelete(TrueFalseStatus.FALSE.getValue());
		${smallClassName}Service.save(${smallClassName});
		return buildSuccess("保存成功");
	}
	
	/**
	 * 进入修改页面
	 * 
	 * @param model
	 * @param ${firstName}
	 * @return
	 */
	@RequestMapping(value = "/edit", method = { RequestMethod.GET })
	public String edit(Model model, @RequestParam(value = "${firstName}", required = true) Integer ${firstName}) {
		Assert.notNull(${firstName}, "${firstName}为空");
		${className} ${smallClassName} = ${smallClassName}Service.selectByPrimaryKey(${firstName});
		Assert.notNull(${smallClassName}, "${firstName}【" + ${firstName} + "】不存在");
		model.addAttribute("${smallClassName}", ${smallClassName});
		return "${pageDir}/edit";
	}
	
	/**
	 * 修改数据
	 * 
	 * @param ${smallClassName}
	 * @return
	 */
	@RequestMapping(value = "/update", method = { RequestMethod.POST })
	@ResponseBody
	public Map<String, Object> update(${className} ${smallClassName}) {
		Assert.notNull(${smallClassName}, "修改数据为空");
		${smallClassName}.setUpdateUserId(getUserId());
		${smallClassName}.setUpdateTime(new Date());
		${smallClassName}Service.update(${smallClassName});
		return buildSuccess("修改成功");
	}
	
	/**
	 * 删除数据
	 * 
	 * @param ${firstName}
	 * @return
	 */
	@RequestMapping(value = "/delete", method = { RequestMethod.POST })
	@ResponseBody
	public Map<String, Object> delete(@RequestParam(value = "${firstName}", required = true) Integer ${firstName}) {
		Assert.notNull(${firstName}, "${firstName}为空");
		${className} ${smallClassName} = ${smallClassName}Service.selectByPrimaryKey(${firstName});
		Assert.notNull(${smallClassName}, "${firstName}【" + ${firstName} + "】不存在");
		${smallClassName}Service.remove(${firstName});
		return buildSuccess("删除成功");
	}
	
}
