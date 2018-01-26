package ${basePackage}.model;

import java.io.Serializable;
import java.util.Date;

import lombok.Data;

/**
 * model 实体类
 * 
 * @author admin
 * @date ${dateTime}
 */
@Data
public class ${className} implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	<#list list as item>
	/**
     * ${item.comments}
     */
	private ${item.javaType} ${item.beanLable};
	
	</#list>
}
