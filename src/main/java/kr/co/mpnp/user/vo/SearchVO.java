package kr.co.mpnp.user.vo;



//페이징 위한 vo임..!!!!
public class SearchVO {
	
//	totalcount(전체게시물수),totalpage(전체페이지수),
//	currentpage(현재페이지),startnum(시작번호),endnum(끝번호),
//	pagescale(한 페이지에 보여줄 게시물수) 
	
	private int  startNum,endNum,totalcount,totalpage,currentpage,pagescale;

	public SearchVO() {
		
	}

	public SearchVO(int startNum, int endNum, int totalcount, int totalpage, int currentpage, int pagescale) {
	
		this.startNum = startNum;
		this.endNum = endNum;
		this.totalcount = totalcount;
		this.totalpage = totalpage;
		this.currentpage = currentpage;
		this.pagescale = pagescale;
	}

	public int getStartNum() {
		return startNum;
	}

	public void setStartNum(int startNum) {
		this.startNum = startNum;
	}

	public int getEndNum() {
		return endNum;
	}

	public void setEndNum(int endNum) {
		this.endNum = endNum;
	}

	public int getTotalcount() {
		return totalcount;
	}

	public void setTotalcount(int totalcount) {
		this.totalcount = totalcount;
	}

	public int getTotalpage() {
		return totalpage;
	}

	public void setTotalpage(int totalpage) {
		this.totalpage = totalpage;
	}

	public int getCurrentpage() {
		return currentpage;
	}

	public void setCurrentpage(int currentpage) {
		this.currentpage = currentpage;
	}

	public int getPagescale() {
		return pagescale;
	}

	public void setPagescale(int pagescale) {
		this.pagescale = pagescale;
	}

	@Override
	public String toString() {
		return "SearchVO [startNum=" + startNum + ", endNum=" + endNum + ", totalcount=" + totalcount + ", totalpage="
				+ totalpage + ", currentpage=" + currentpage + ", pagescale=" + pagescale + "]";
	}
	
	
	

}//class 
