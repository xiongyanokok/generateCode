package com.common.core.pojo;

import java.util.List;

/**
 * 分页 vo
 * 
 * @author 北京八维博大科技 薛建新
 * @date 2013-5-15 下午6:59:44
 */
public class Pager<T> {
	private long count; // 总行数
	private int pageSize = 10; // 每页显示的行数
	private int currentPage = 1; // 当前页号
	private int pageCount; // 总页数
	private List<T> list;

	public Pager() {
	}

	public Pager(int count) {
		this(count, 10);
	}

	public Pager(int currentPage, int pageSize) {
		this.currentPage = currentPage;
		this.pageSize = pageSize;
	}

	public int getPageCount() {
		pageCount = Long.valueOf(count / pageSize).intValue();
		long mod = count % pageSize;
		if (mod > 0) {
			pageCount++;
		}
		return pageCount;
	}

	public int getStart() {
		return (currentPage - 1) * pageSize;
	}

	public long getCount() {
		return count;
	}

	public Pager<T> setCount(long count) {
		getPageCount();
		this.count = count;
		return this;
	}

	public int getPageSize() {
		return pageSize;
	}

	public Pager<T> setPageSize(int pageSize) {
		this.pageSize = pageSize;
		return this;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public Pager<T> setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
		return this;
	}

	public List<T> getList() {
		return list;
	}

	public Pager<T> setList(List<T> list) {
		this.list = list;
		return this;
	}
}
