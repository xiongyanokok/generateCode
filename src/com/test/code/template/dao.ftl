package ${basePackage}.mapper;

import java.util.List;
import java.util.Map;

import ${basePackage}.model.${className};

/**
 * Mapper
 * 
 * @author admin
 * @date ${dateTime}
 */
public interface ${className}Mapper {

	/**
     * 根据主键查询
     *
     * @param id
     */
    ${className} selectByPrimaryKey(Integer id);

    /**
     * 新增数据库记录
     *
     * @param ${smallClassName}
     */
    void insert(${className} ${smallClassName});

    /**
     * 更新数据库记录
     *
     * @param ${smallClassName}
     */
    void update(${className} ${smallClassName});

    /**
     * 根据map查询单条数据
     * 
     * @param map
     * @return
     */
    ${className} get${className}ByMap(Map<String, Object> map);
    
    /**
     * 根据map查询集合数据
     * 
     * @param map
     * @return
     */
    List<${className}> list${className}ByMap(Map<String, Object> map);
    
    /**
     * 批量保存
     * 
     * @param list
     */
    void batchInsert(List<${className}> list);
    
    /**
     * 批量更新
     * 
     * @param list
     */
    void batchUpdate(List<${className}> list);
    
}
