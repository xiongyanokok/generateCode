package com.test.code;

import java.io.File;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.util.StringUtils;

/**
 * Description: 生成pojo 和 mybatis 配置文件 <br/>
 * Date: 2015-10-19 下午2:07:37 <br/>
 * 
 * @author xuejianxin
 */
public class CodeGenerate {
	private static FreemarkerUtil fu = new FreemarkerUtil();;
	private static Map<String, Object> root = new HashMap<String, Object>();;
	// 生成文件的基本路径
	private static String baseDir = CodeConfig.get("baseDir");
	// 包的基本路径
	private static String basePackage = CodeConfig.get("basePackage");

	public static void toCode(String tabelName, List<Columns> cs, Map<String, Object> options) {
		String tn = tabelName;
		root = new HashMap<String, Object>();
		root.put("list", cs);
		String mod = (String) options.get("mod");// 模块
		if (null != mod && !"".equals(mod)) {
			tabelName = mod;
			mod = null;
		} else {
			tabelName = tabelName.substring(tabelName.indexOf("_")+1);
		}
		String className = getClassName(tabelName);
		root.put("className", className);
		root.put("smallClassName", className.substring(0, 1).toLowerCase() + className.substring(1));
		root.put("basePackage", basePackage);
		root.put("pojoName", getPojoName(tabelName));
		root.put("tableName", tn);
		root.put("pageDir", getClassName(tabelName).toLowerCase());
		root.put("firstName", cs.get(0).getBeanLable());
		root.put("firstNameUp", cs.get(0).getBeanLable().substring(0, 1).toUpperCase() + cs.get(0).getBeanLable().substring(1));
		SimpleDateFormat localTime=new SimpleDateFormat("yyyy年MM月dd日 ahh:mm:ss");
		root.put("dateTime", localTime.format(new Date()));

		String modPath = "";// 模块文件路径
		// 模块
		if (StringUtils.hasText(mod)) {
			modPath = "/" + mod.trim() + "/";
			mod = "." + mod;
		} else {
			mod = "";
			modPath = "/";
		}
		root.put("mod", mod);
		root.put("modPath", modPath);
		
		if (Boolean.valueOf((String) options.get("mapper"))) {
			fprint("sqlmapper.ftl", baseDir + CodeConfig.get("mapperDir"), getClassName(tabelName) + "Mapper.xml");
		}
		if (Boolean.valueOf((String) options.get("pojo"))) {
			fprint("pojo.ftl", baseDir + CodeConfig.get("pojoDir"), getClassName(tabelName) + ".java");
		}
		if (Boolean.valueOf((String) options.get("dao"))) {
			fprint("dao.ftl", baseDir + CodeConfig.get("daoDir") + modPath, getClassName(tabelName) + "Mapper.java");
		}
		if (Boolean.valueOf((String) options.get("service"))) {
			fprint("service.ftl", baseDir + CodeConfig.get("serviceDir") + modPath, getClassName(tabelName) + "Service.java");
		}
		if (Boolean.valueOf((String) options.get("serviceImpl"))) {
			fprint("serviceImpl.ftl", baseDir + CodeConfig.get("serviceImplDir") + modPath, getClassName(tabelName) + "ServiceImpl.java");
		}
		if (Boolean.valueOf((String) options.get("controller"))) {
			fprint("controller.ftl", baseDir + CodeConfig.get("actionDir") + modPath, getClassName(tabelName) + "Controller.java");
		}
		if (Boolean.valueOf((String) options.get("jsp"))) {
			fprint("jsp/list.ftl", baseDir + CodeConfig.get("jspDir") + modPath + getClassName(tabelName).toLowerCase(), "list.jsp");
			fprint("jsp/save.ftl", baseDir + CodeConfig.get("jspDir") + modPath + getClassName(tabelName).toLowerCase(), "add.jsp");
			fprint("jsp/update.ftl", baseDir + CodeConfig.get("jspDir") + modPath + getClassName(tabelName).toLowerCase(), "edit.jsp");
		}
		if (Boolean.valueOf((String) options.get("html"))) {
			fprint("html/list.ftl", baseDir + CodeConfig.get("htmlDir") + modPath + getClassName(tabelName).toLowerCase(), "list.html");
			fprint("html/save.ftl", baseDir + CodeConfig.get("htmlDir") + modPath + getClassName(tabelName).toLowerCase(), "add.html");
			fprint("html/update.ftl", baseDir + CodeConfig.get("htmlDir") + modPath + getClassName(tabelName).toLowerCase(), "edit.html");
		}
	}

	public static List<Columns> getTableInfo(JdbcTemplate jdbc, String tableName) {
		String sql = CodeConfig.get("sql_" + CodeConfig.get("db_name"));
		List<Columns> list = jdbc.query(sql, new Object[] { CodeConfig.get("db_name"), tableName }, new RowMapper<Columns>() {
			@Override
			public Columns mapRow(ResultSet rs, int i) throws SQLException {
				String columnName = rs.getString(2);
				Columns c = new Columns(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), null == rs
						.getString(5) ? "" : rs.getString(5), toBeanLabel(columnName), rs.getString(6));
				return c;
			}
		});
		return list;
	}

	private static String getClassName(String tableName) {
		String temp = toBeanLabel(tableName);
		return temp.substring(0, 1).toUpperCase() + temp.substring(1);
	}

	private static String getPojoName(String tableName) {
		return toBeanLabel(tableName);
	}

	public static String toBeanLabel(String columnName) {
		String[] labels = columnName.split("_");
		StringBuffer beanLable = new StringBuffer();
		int i = 0;
		for (String s : labels) {
			if (i != 0) {
				beanLable.append(String.valueOf(s.charAt(0)).toUpperCase()).append(s.substring(1).toLowerCase());
			} else {
				beanLable.append(s.toLowerCase());
			}
			i++;
		}
		return beanLable.toString();
	}

	private static void sprint(String name) {
		fu.print(name, root);
	}

	private static void fprint(String templateName, String baseDir, String outFileName) {
		File f = new File(baseDir);
		if (!f.exists()) {
			f.mkdirs();
		}

		fu.fprint(templateName, root, baseDir, outFileName);
	}

	public static Map<String, String> getCode(String pojoName, List<Columns> cs, Map<String, Object> options) {

		Map<String, String> result = new HashMap<String, String>();

		root = new HashMap<String, Object>();
		root.put("list", cs);
		root.put("className", pojoName);
		root.put("smallClassName", pojoName.substring(0, 1).toLowerCase() + pojoName.substring(1));
		root.put("basePackage", basePackage);
		root.put("pojoName", pojoName);
		root.put("tableName", pojoName);

		String mod = (String) options.get("mod");// 模块
		String modPath = "";// 模块文件路径
		// 模块
		if (StringUtils.hasText(mod)) {
			modPath = "/" + mod.trim() + "/";
			mod = "." + mod;
		} else {
			mod = "";
			modPath = "/";
		}
		root.put("mod", mod);
		root.put("modPath", modPath);
		if (Boolean.valueOf((String) options.get("mapper"))) {
			result.put("mapper", fu.printString("sqlmapper.ftl", root));
		}
		if (Boolean.valueOf((String) options.get("pojo"))) {
			result.put("pojo", fu.printString("pojo.ftl", root));
		}
		return result;

	}

}