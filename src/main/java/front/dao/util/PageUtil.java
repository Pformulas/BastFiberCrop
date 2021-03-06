package front.dao.util;

public class PageUtil {
		private int pageSize;
		private int totalCount;
		private int currentPage;
		private int totalPage;
		public PageUtil(int pageSize, int totalCount, int currentPage, int totalPage)
		{
			super();
			this.pageSize = pageSize;
			this.totalCount = totalCount;
			this.currentPage = currentPage;
			this.totalPage = totalPage;
		}
		public PageUtil()
		{
			super();
		}
		public int getPageSize()
		{
			return pageSize;
		}
		public void setPageSize(int pageSize)
		{
			this.pageSize = pageSize;
		}
		public int getTotalCount()
		{
			return totalCount;
		}
		public void setTotalCount(int totalCount)
		{
			this.totalCount = totalCount;
		}
		public int getCurrentPage()
		{
			return currentPage;
		}
		public void setCurrentPage(int currentPage)
		{
			this.currentPage = currentPage;
		}
		public int getTotalPage()
		{
			return totalCount % pageSize == 0 ? (totalCount / pageSize) : (totalCount / pageSize + 1);
		}
		public void setTotalPage(int totalPage)
		{
			this.totalPage = totalPage;
		}
		
}
