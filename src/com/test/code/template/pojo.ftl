package ${basePackage}.model;

import java.io.Serializable;
import java.util.Date;

/**
 * model 实体类
 * 
 * @author admin
 * @date ${dateTime}
 */
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
	<#list list as item>
	
	public ${item.javaType} get${item.beanLableForGetSet}() {
		return ${item.beanLable};
	}
	
	public void set${item.beanLableForGetSet}(${item.javaType} ${item.beanLable}) {
		this.${item.beanLable} = ${item.beanLable};
	}
    </#list>
    
    
    /**
     * equals
     *
     * @param that
     */
    @Override
    public boolean equals(Object that) {
        if (this == that) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (getClass() != that.getClass()) {
            return false;
        }
        ${className} other = (${className}) that;
        <#list list as item>
    	<#if item_index == 0>return (this.get${item.beanLableForGetSet}() == null ? other.get${item.beanLableForGetSet}() == null : this.get${item.beanLableForGetSet}().equals(other.get${item.beanLableForGetSet}()))</#if>	<#if item_index != 0>&& (this.get${item.beanLableForGetSet}() == null ? other.get${item.beanLableForGetSet}() == null : this.get${item.beanLableForGetSet}().equals(other.get${item.beanLableForGetSet}()))</#if><#if item_index == (list?size-1)>;</#if>
        </#list>
    }

    /**
     * hashCode
     */
    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        <#list list as item>
        result = prime * result + ((get${item.beanLableForGetSet}() == null) ? 0 : get${item.beanLableForGetSet}().hashCode());
        </#list>
        return result;
    }
    
    /**
     * toString
     */
    @Override
    public String toString() {
    	return "${className} [<#list list as item>${item.beanLable}=" + ${item.beanLable} + "<#if item_index != (list?size-1)>, </#if></#list>]";
    }
        
}
