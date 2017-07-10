package ${basePackage}.service;

import java.util.List;
import java.util.Map;

import ${basePackage}.model.${className};

/**
 * Service 接口
 * 
 * @author admin
 * @date ${dateTime}
 */
public interface ${className}Service {

	/**
     * 根据主键查询
     *
     * @param ${firstName}
     * @return
     */
    ${className} selectByPrimaryKey(Integer ${firstName});
    
    /**
     * 保存数据
     *
     * @param ${smallClassName}
     */
    void save(${className} ${smallClassName});

    /**
     * 修改数据
     *
     * @param ${smallClassName}
     */
    void update(${className} ${smallClassName});
    
    /**
     * 根据主键逻辑删除数据
     * 
     * @param ${firstName}
     */
    void remove(Integer ${firstName});
    
    /**
     * 根据map查询单个数据
     * 
     * @param map
     * @return
     */
    ${className} get${className}(Map<String, Object> map);
    
    /**
     * 根据map查询集合数据
     * 
     * @param map
     * @return
     */
    List<${className}> list${className}(Map<String, Object> map);
    
    /**
     * 批量保存
     * 
     * @param list
     */
    void batchSave(List<${className}> list);
    
    /**
     * 批量更新
     * 
     * @param list
     */
    void batchUpdate(List<${className}> list);
    
}
