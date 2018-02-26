package ${basePackage}.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ${basePackage}.enums.ErrorCodeEnum;
import ${basePackage}.enums.TrueFalseStatusEnum;
import ${basePackage}.common.Assert;
import ${basePackage}.exception.XxxException;
import ${basePackage}.mapper.${className}Mapper;
import ${basePackage}.model.${className};
import ${basePackage}.service.${className}Service;
import ${basePackage}.common.utils.ListPageUtils;

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
     * 根据ID查询
     *
     * @param ${firstName}
     * @return
     * @throws XxxException
     */
    @Override
    public ${className} get${className}ById(Integer ${firstName}) {
    	Assert.notNull(${firstName}, "${firstName}为空");
    	try {
    		Map<String, Object> map = new HashMap<>(2);
    		map.put("id", ${firstName});
    		map.put("isDelete", TrueFalseStatusEnum.FALSE.getValue());
	    	return ${smallClassName}Mapper.get${className}(map);
		} catch (Exception e) {
			throw new XxxException(ErrorCodeEnum.DB_SELECT_ERROR, "【" + ${firstName} + "】查询失败", e);
		}
    }
    
	/**
     * 保存数据
     *
     * @param ${smallClassName}
     * @throws XxxException
     */
    @Override
    public void save(${className} ${smallClassName}) {
    	Assert.notNull(${smallClassName}, "保存数据为空");
    	try {
			${smallClassName}Mapper.insert(${smallClassName});
		} catch (Exception e) {
			throw new XxxException(ErrorCodeEnum.DB_INSERT_ERROR, "【" + ${smallClassName}.toString() + "】保存失败", e);
		}
    }

    /**
     * 修改数据
     *
     * @param ${smallClassName}
     * @throws XxxException
     */
    @Override
    public void update(${className} ${smallClassName}) {
    	Assert.notNull(${smallClassName}, "修改数据为空");
    	try {
    		${smallClassName}Mapper.update(${smallClassName});
		} catch (Exception e) {
			throw new XxxException(ErrorCodeEnum.DB_UPDATE_ERROR, "【" + ${smallClassName}.toString() + "】修改失败", e);
		}
    }
    
    /**
     * 删除数据
     * 
     * @param ${smallClassName}
     * @throws XxxException
     */
    @Override
    public void remove(${className} ${smallClassName}) {
    	Assert.notNull(${smallClassName}, "删除数据为空");
		try {
    		${className} delete${className} = new ${className}();
    		delete${className}.set${firstNameUp}(${smallClassName}.get${firstNameUp}());
    		delete${className}.setIsDelete(TrueFalseStatusEnum.TRUE.getValue());
    		${smallClassName}Mapper.update(delete${className});
		} catch (Exception e) {
			throw new XxxException(ErrorCodeEnum.DB_DELETE_ERROR, "【" + ${smallClassName}.toString() + "】删除失败", e);
    	}
    }
    
    /**
     * 根据map查询
     * 
     * @param map
     * @return
     * @throws XxxException
     */
    @Override
    public ${className} get${className}(Map<String, Object> map) {
    	Assert.notEmpty(map, "查询数据为空");
    	try {
	    	return ${smallClassName}Mapper.get${className}(map);
		} catch (Exception e) {
			throw new XxxException(ErrorCodeEnum.DB_SELECT_ERROR, "【" + map + "】查询对象失败", e);
		}
    }
    
    /**
     * 根据map查询
     * 
     * @param map
     * @return
     * @throws XxxException
     */
    @Override
    public List<${className}> list${className}(Map<String, Object> map) {
   	 	Assert.notEmpty(map, "查询数据为空");
    	try {
	    	return ${smallClassName}Mapper.list${className}(map);
		} catch (Exception e) {
			throw new XxxException(ErrorCodeEnum.DB_SELECT_ERROR, "【" + map + "】查询列表失败", e);
		}
    }
    
    /**
     * 批量保存
     * 
     * @param list
     * @throws XxxException
     */
    @Override
    public void batchSave(List<${className}> list) {
    	Assert.notEmpty(list, "批量保存数据为空");
    	try {
			List<List<${className}>> pageList = ListPageUtils.listPage(list, 1000);
			for (List<${className}> page : pageList) {
				${smallClassName}Mapper.batchInsert(page);
			}
		} catch (Exception e) {
			throw new XxxException(ErrorCodeEnum.DB_BATCH_ERROR, "批量保存失败", e);
		}
    }
    
    /**
     * 批量更新
     * 
     * @param list
     * @throws XxxException
     */
    @Override
    public void batchUpdate(List<${className}> list) {
    	Assert.notEmpty(list, "批量修改数据为空");
    	try {
			List<List<${className}>> pageList = ListPageUtils.listPage(list, 1000);
			for (List<${className}> page : pageList) {
				${smallClassName}Mapper.batchUpdate(page);
			}
		} catch (Exception e) {
			throw new XxxException(ErrorCodeEnum.DB_BATCH_ERROR, "批量修改失败", e);
		}
    }
    
}
