package kr.co.mpnp.user.vo;



//페이징 위한 vo임..!!!!
public class SearchVO {
	

	
	private String name;
	private int pageFlag=1;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPageFlag() {
		return pageFlag;
	}
	public void setPageFlag(int pageFlag) {
		this.pageFlag = pageFlag;
	}
	@Override
	public String toString() {
		return "SearchVO [name=" + name + ", pageFlag=" + pageFlag + "]";
	}



	
	

}//class 
