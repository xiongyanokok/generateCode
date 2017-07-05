package com.test.code;
/**  
 * @Description TODO
 * @author  北京八维博大科技   薛建新
 * @date 2013-6-1  下午2:33:11
 */
public class Columns {
	private Integer  columnId;
	private Integer  dataPrecision;
	private String   dataType;
	private String   comments;
	
	private String columnName;
	private String beanLable;
	private String beanLableForGetSet;
	private String javaType;
	
	
	public Columns(Integer columnId, String columnName,Integer dataPrecision, String dataType,
			String comments,  String beanLable, String columnType) {
		this.columnId = columnId;
		this.dataPrecision = dataPrecision;
		this.dataType = dataType.toUpperCase();
		this.comments = comments;
		this.columnName = columnName;
		this.beanLable = beanLable;
		this.beanLableForGetSet=this.beanLable.substring(0,1).toUpperCase()+this.beanLable.substring(1, this.beanLable.length());
		if(this.dataType.equals("VARCHAR") || this.dataType.equals("TEXT")){
			this.javaType="String";
		} else if(this.dataType.indexOf("CHAR") >0 ||this.dataType.indexOf("CLOB") >0){
			this.javaType="String";
		}else if (this.dataType.equals("DATE") || this.dataType.equals("TIMESTAMP") || this.dataType.equals("DATETIME")){
			this.javaType="Date";
		}else if (this.dataType.equals("NUMBER")&& 0 ==this.dataPrecision){
			this.javaType="Double";
		}else if (this.dataType.equals("NUMBER")&& 0 !=this.dataPrecision){
			this.javaType="Integer";
		}else if (this.dataType.indexOf("BLOB")>0){
			this.javaType="byte[]";
		}else if (this.dataType.equals("INT")){
			this.javaType="Integer";
		}else if (this.dataType.equals("BIGINT")){
			this.javaType="Long";
		}else if (this.dataType.equals("TINYINT")){
			String leng = columnType.substring(columnType.indexOf("(")+1, columnType.indexOf(")"));
			if (Integer.valueOf(leng) == 1) {
				this.javaType="Boolean";
			} else {
				this.javaType="Integer";
			}
		}else if (this.dataType.equals("DECIMAL")){
			this.javaType="BigDecimal";
		}else{
			this.javaType=this.dataType;
		}
	}

	public Columns(String columnName, String beanLable) {
		this.columnName = columnName;
		this.beanLable = beanLable;
	}
	
	public String getColumnName() {
		return columnName;
	}
	public void setColumnName(String columnName) {
		this.columnName = columnName;
	}
	public String getBeanLable() {
		return beanLable;
	}
	public void setBeanLable(String beanLable) {
		this.beanLable = beanLable;
		this.beanLableForGetSet=this.beanLable.substring(0,1).toUpperCase()+this.beanLable.substring(1, this.beanLable.length());
	}
	public Integer getColumnId() {
		return columnId;
	}
	public void setColumnId(Integer columnId) {
		this.columnId = columnId;
	}
	public Integer getDataPrecision() {
		return dataPrecision;
	}
	public void setDataPrecision(Integer dataPrecision) {
		this.dataPrecision = dataPrecision;
	}
	public String getDataType() {
		return dataType;
	}
	public void setDataType(String dataType) {
		this.dataType = dataType;
	}
	public String getComments() {
		if(null==comments || "".equals(comments.trim())){
			return getBeanLable();
		}
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}

	public String getBeanLableForGetSet() {
		return beanLableForGetSet;
	}

	public String getJavaType() {
		return javaType;
	}

	public void setJavaType(String javaType) {
		this.javaType = javaType;
	}

	
	
	
	

}
