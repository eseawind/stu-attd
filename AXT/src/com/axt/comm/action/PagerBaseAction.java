package com.axt.comm.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.axt.comm.util.SharePager;
import com.axt.po.TbUser;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class PagerBaseAction extends ActionSupport implements
		ServletRequestAware, ServletResponseAware {
	protected int totalRows; // 总行数
	protected int currentPage; // 当前页数
	protected int jumpPage; // 跳转的页
	protected int pageSize; // 每页显示的条数
	protected int totalPages; // 总共多少页
	protected String operation = "nought"; // 分页的方法

	protected HttpServletRequest request; // 访问request对象
	protected HttpServletResponse response;
	private static final long serialVersionUID = 2194750522576115376L;

	protected SharePager paging() {
		/*
		 * nought 初始化 pager = ipagerService.getPager("1", operation, totalRows);
		 * public SharePager getPager(String currentPage, String pagerMethod,int
		 * totalRows)
		 */
		if (this.operation.equals("nought")) {
			SharePager pager = new SharePager(totalRows);
			// 如果当前页号为空，表示为首次查询该页
			// 如果不为空，则刷新pager对象，输入当前页号等信息
			if (currentPage != 0) {
				int i = 0;
				try {
					i = 1;
				} catch (NumberFormatException e) {
					i = 1;
				}
				if (i == 0) {
					i = 1;
				}
				pager.refresh(i);
			} else {
				pager.refresh(1);
			}
			// 获取当前执行的方法
			if (operation != null) {
				if (operation.equals("first")) {
					pager.first();
				} else if (operation.equals("previous")) {
					pager.previous();
				} else if (operation.equals("next")) {
					pager.next();
				} else if (operation.equals("last")) {
					pager.last();
				}
			} else {
				pager.first();
			}
			this.currentPage = pager.getCurrentPage();
			this.pageSize = pager.getPageSize();
			this.jumpPage = pager.getCurrentPage();
			this.totalPages = pager.getTotalPages();
			return pager;
		}
		/*
		 * gotoPages pager = ipagerService.getPager(""+currentPage, "gotoPages",
		 * totalRows, pageSize);
		 */
		else if (this.operation.trim().equals("gotoPages")) {
			SharePager pager = new SharePager(totalRows, pageSize);
			currentPage = jumpPage; // 跳转到指定页时，将跳转到页码赋给当前页

			if (pageSize > totalRows)
				pageSize = totalRows;

			// 如果当前页号为空，表示为首次查询该页
			// 如果不为空，则刷新pager对象，输入当前页号等信息
			if (currentPage != 0) {
				int i = 0;
				try {
					i = currentPage;
				} catch (NumberFormatException e) {
					i = 1;
				}
				if (i < 1) {
					i = 1;
				}
				pager.refresh(i);
			} else {
				pager.refresh(1);
			}

			if (operation != null) {
				if (operation.equals("first")) {
					pager.first();
				} else if (operation.equals("previous")) {
					pager.previous();
				} else if (operation.equals("next")) {
					pager.next();
				} else if (operation.equals("last")) {
					pager.last();
				} else if (operation.equals("gotoPages")) {
					int i = 0;
					try {
						i = currentPage;
					} catch (NumberFormatException e) {
						i = 1;
					}
					if (i < 1) {
						i = 1;
					}
					pager.refresh(i);
				}
			} else {
				pager.first();
			}
			this.currentPage = pager.getCurrentPage();
			this.pageSize = pager.getPageSize();
			this.jumpPage = pager.getCurrentPage();
			this.totalPages = pager.getTotalPages();
			return pager;
		}
		/*
		 * pager = ipagerService.getPager(""+currentPage, operation, totalRows);
		 */
		else if (pageSize == 0) {
			SharePager pager = new SharePager(totalRows);
			if (currentPage != 0) {
				int i = 0;
				try {
					i = currentPage;
				} catch (NumberFormatException e) {
					i = 1;
				}
				if (i == 0) {
					i = 1;
				}
				pager.refresh(i);
			} else {
				pager.refresh(1);
			}
			if (operation != null) {
				if (operation.equals("first")) {
					pager.first();
				} else if (operation.equals("previous")) {
					pager.previous();
				} else if (operation.equals("next")) {
					pager.next();
				} else if (operation.equals("last")) {
					pager.last();
				}
			} else {
				pager.first();
			}
			this.currentPage = pager.getCurrentPage();
			this.pageSize = pager.getPageSize();
			this.jumpPage = pager.getCurrentPage();
			this.totalPages = pager.getTotalPages();
			return pager;
		} else {
			SharePager pager = new SharePager(totalRows, pageSize);

			if (pageSize > totalRows)
				pageSize = totalRows;

			// 如果当前页号为空，表示为首次查询该页
			// 如果不为空，则刷新pager对象，输入当前页号等信息
			if (currentPage != 0) {
				int i = 0;
				try {
					i = currentPage;
				} catch (NumberFormatException e) {
					i = 1;
				}
				if (i < 1) {
					i = 1;
				}
				pager.refresh(i);
			} else {
				pager.refresh(1);
			}

			if (operation != null) {
				if (operation.equals("first")) {
					pager.first();
				} else if (operation.equals("previous")) {
					pager.previous();
				} else if (operation.equals("next")) {
					pager.next();
				} else if (operation.equals("last")) {
					pager.last();
				} else if (operation.equals("gotoPages")) {
					int i = 0;
					try {
						i = currentPage;
					} catch (NumberFormatException e) {
						i = 1;
					}
					if (i < 1) {
						i = 1;
					}
					pager.refresh(i);
				}
			} else {
				pager.first();
			}
			this.currentPage = pager.getCurrentPage();
			this.pageSize = pager.getPageSize();
			this.jumpPage = pager.getCurrentPage();
			this.totalPages = pager.getTotalPages();
			return pager;
		}
	}

	public int getTotalRows() {
		return totalRows;
	}

	public void setTotalRows(int totalRows) {
		this.totalRows = totalRows;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getJumpPage() {
		return jumpPage;
	}

	public void setJumpPage(int jumpPage) {
		this.jumpPage = jumpPage;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalPages() {
		return totalPages;
	}

	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}

	public String getOperation() {
		return operation;
	}

	public void setOperation(String operation) {
		this.operation = operation;
	}

	/**
	 * 得到session
	 * 
	 * @return
	 */
	public Map<String, Object> getSession() {
		return ActionContext.getContext().getSession();
	}

	/**
	 * 得到存放在session中的用户信息
	 * 
	 * @return
	 */
	public TbUser getSessionTbUser() {
		return (TbUser) getSession().get("currentUser");
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	@Override
	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

}
