package kr.ac.hit.beans;

public class PageBean {
	private int min;
	private int max;
	private int prevPage;
	private int nextPage;
	private int currentPage;
	private int totalPage;
	
	public PageBean(int contentCount, int currentPage, int contentPageCount, int paginationCount) {
		this.currentPage = currentPage;
		totalPage = contentCount / contentPageCount;
		if (contentCount % contentPageCount > 0) {
			totalPage++;
		}
		min = ((currentPage - 1) / contentPageCount) * contentPageCount + 1;
		max = min + paginationCount -1;
		if (max > totalPage) {
			max = totalPage;
		}
		prevPage = min - 1; nextPage = max + 1;
	}
	public int getMin() {
		return min;
	}
	public void setMin(int min) {
		this.min = min;
	}
	public int getMax() {
		return max;
	}
	public void setMax(int max) {
		this.max = max;
	}
	public int getPrevPage() {
		return prevPage;
	}
	public void setPrevPage(int prevPage) {
		this.prevPage = prevPage;
	}
	public int getNextPage() {
		return nextPage;
	}
	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
}
