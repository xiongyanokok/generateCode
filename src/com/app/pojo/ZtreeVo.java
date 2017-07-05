/**
 * Date:2015年11月2日下午3:51:04
 * Copyright (c) 2015, www.bwbroad.com All Rights Reserved.
 *
*/

package com.app.pojo;
/**
 * Description: ztree实体类<br/>
 * Date:     2015年11月2日 下午3:51:04 <br/>
 * @author   sunyan 
 */
public class ZtreeVo {
    private String id;
    private String pId;
    private String name;
    private boolean open;
    private boolean checked;
    private boolean isParent;//是否是父节点
    private boolean nocheck;//是否可选
    
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getpId() {
		return pId;
	}
	public void setpId(String pId) {
		this.pId = pId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public boolean isOpen() {
		return open;
	}
	public void setOpen(boolean open) {
		this.open = open;
	}
	public boolean isChecked() {
		return checked;
	}
	public void setChecked(boolean checked) {
		this.checked = checked;
	}
	public boolean getIsParent() {
		return isParent;
	}
	public void isIsParent(boolean isParent) {
		this.isParent = isParent;
	}
	public boolean isNocheck() {
		return nocheck;
	}
	public void setNocheck(boolean nocheck) {
		this.nocheck = nocheck;
	}
	
	
}

