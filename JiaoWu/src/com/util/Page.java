package com.util;

public class Page {
	/*页数*/
	private int pageCount;
	/*一页的条数*/
	private int columnPage=9;
	/*总共的条数*/
	private int columnCount;
	/*当前的页数*/
	private int currentPage;
	/*余数*/
	private int yuShu;
	
	public Page() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public Page(int pageCount, int columnCount, int currentPage) {
		super();
		this.pageCount = pageCount;
		this.columnCount = columnCount;
		this.currentPage = currentPage;
	}

	public int getYuShu() {
		return this.yuShu;
	}


	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public int getColumnPage() {
		return columnPage;
	}
	public void setColumnPage(int columnPage) {
		this.columnPage = columnPage;
	}
	public int getColumnCount() {
		return columnCount;
	}
	public void setColumnCount(int columnCount) {
		this.columnCount = columnCount;
		yuShu=columnCount%columnPage;
		this.pageCount=yuShu==0?columnCount/columnPage:columnCount/columnPage+1;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	

}
