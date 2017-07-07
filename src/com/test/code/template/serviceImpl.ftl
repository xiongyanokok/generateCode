package ${basePackage}.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ${basePackage}.enums.ErrorCode;
import ${basePackage}.enums.TrueFalseStatus;
import ${basePackage}.exception.Assert;
import ${basePackage}.exception.XxxCustomException;
import ${basePackage}.mapper.${className}Mapper;
import ${basePackage}.model.${className};
import ${basePackage}.service.${className}Service;
import ${basePackage}.util.ListPageUtil;

/**
 * Service 实现
 * 
 * @author admin
 * @date ${dateTime}
 */
@Service
public class ${className}ServiceImpl implements ${className}Service {

    @Autowired
	private ${className}Mapper ${smallClassName}Mapper;
	
	/**
     * 根据主键查询
     *
     * @param ${firstName}
     * @return
     * @throws XxxCustomException
     */
    @Override
    public ${className} selectByPrimaryKey(Integer ${firstName}) {
    	Assert.notNull(${firstName}, "${firstName}为空");
    	try {
	    	return ${smallClassName}Mapper.selectByPrimaryKey(${firstName});
		} catch (Exception e) {
			throw new XxxCustomException(ErrorCode.DB_SELECT_ERROR, "【" + ${firstName} + "】查询失败", e);
		}
    }
    
	/**
     * 保存数据
     *
     * @param ${smallClassName}
     * @throws XxxCustomException
     */
    @Override
    public void save(${className} ${smallClassName}) {
    	Assert.notNull(${smallClassName}, "保存数据为空");
    	try {
			${smallClassName}Mapper.insert(${smallClassName});
		} catch (Exception e) {
			throw new XxxCustomException(ErrorCode.DB_INSERT_ERROR, "【" + ${smallClassName}.toString() + "】保存失败", e);
		}
    }

    /**
     * 修改数据
     *
     * @param ${smallClassName}
     * @throws XxxCustomException
     */
    @Override
    public void update(${className} ${smallClassName}) {
    	Assert.notNull(${smallClassName}, "修改数据为空");
    	try {
    		${smallClassName}Mapper.update(${smallClassName});
		} catch (Exception e) {
			throw new XxxCustomException(ErrorCode.DB_UPDATE_ERROR, "【" + ${smallClassName}.toString() + "】修改失败", e);
		}
    }
    
    /**
     * 根据主键逻辑删除数据
     * 
     * @param ${firstName}
     * @throws XxxCustomException
     */
    @Override
    public void remove(Integer ${firstName}) {
    	Assert.notNull(${firstName}, "${firstName}为空");
		try {
    		${className} ${smallClassName} = new ${className}();
    		${smallClassName}.set${firstNameUp}(${firstName});
    		${smallClassName}.setIsDelete(TrueFalseStatus.TRUE.getValue());
    		${smallClassName}Mapper.update(${smallClassName});
		} catch (Exception e) {
			throw new XxxCustomException(ErrorCode.DB_DELETE_ERROR, "【" + ${firstName} + "】删除失败", e);
    	}
    }
    
    /**
     * 根据map查询单个数据
     * 
     * @param map
     * @return
     * @throws XxxCustomException
     */
    @Override
    public ${className} get${className}(Map<String, Object> map) {
    	Assert.notEmpty(map, "查询数据为空");
    	try {
	    	return ${smallClassName}Mapper.get${className}(map);
		} catch (Exception e) {
			throw new XxxCustomException(ErrorCode.DB_SELECT_ERROR, "【" + map + "】查询单个失败", e);
		}
    }
    
    /**
     * 根据map查询集合数据
     * 
     * @param map
     * @return
     * @throws XxxCustomException
     */
    @Override
    public List<${className}> list${className}(Map<String, Object> map) {
   	 	Assert.notEmpty(map, "查询数据为空");
    	try {
	    	return ${smallClassName}Mapper.list${className}(map);
		} catch (Exception e) {
			throw new XxxCustomException(ErrorCode.DB_SELECT_ERROR, "【" + map + "】查询列表失败", e);
		}
    }
    
    /**
     * 批量保存
     * 
     * @param list
     * @throws XxxCustomException
     */
    @Override
    public void batchInsert(List<${className}> list) {
    	Assert.notEmpty(list, "批量保存数据为空");
    	try {
			List<List<${className}>> pageList = ListPageUtil.listPage(list, 1000);
			for (List<${className}> page : pageList) {
				${smallClassName}Mapper.batchInsert(page);
			}
		} catch (Exception e) {
			throw new XxxCustomException(ErrorCode.DB_BATCH_ERROR, "批量保存失败", e);
		}
    }
    
    /**
     * 批量更新
     * 
     * @param list
     * @throws XxxCustomException
     */
    @Override
    public void batchUpdate(List<${className}> list) {
    	Assert.notEmpty(list, "批量修改数据为空");
    	try {
			List<List<${className}>> pageList = ListPageUtil.listPage(list, 1000);
			for (List<${className}> page : pageList) {
				${smallClassName}Mapper.batchUpdate(page);
			}
		} catch (Exception e) {
			throw new XxxCustomException(ErrorCode.DB_BATCH_ERROR, "批量修改失败", e);
		}
    }
    
}
