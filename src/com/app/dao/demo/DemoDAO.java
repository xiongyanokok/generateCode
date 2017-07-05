package com.app.dao.demo;

import java.io.Serializable;

import com.app.pojo.Demo;
import com.common.core.annotation.AnnotationDAO;
import com.common.core.dao.ApplicationDAO;

/**
 * @author xuejx 2014-9-23
 */
@AnnotationDAO
public interface DemoDAO extends ApplicationDAO<Demo, Serializable> {

}