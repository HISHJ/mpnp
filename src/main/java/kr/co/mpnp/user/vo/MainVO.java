package kr.co.mpnp.user.vo;

public class MainVO {

	private String main_id;
	private int pageFlag=1;
	public MainVO() {
		
	}
	public MainVO(String main_id, int pageFlag) {

		this.main_id = main_id;
		this.pageFlag = pageFlag;
	}
	public synchronized String getMain_id() {
		return main_id;
	}
	public synchronized void setMain_id(String main_id) {
		this.main_id = main_id;
	}
	public synchronized int getPageFlag() {
		return pageFlag;
	}
	public synchronized void setPageFlag(int pageFlag) {
		this.pageFlag = pageFlag;
	}
	@Override
	public String toString() {
		return "MainVO [main_id=" + main_id + ", pageFlag=" + pageFlag + "]";
	}
	
	
	
	
	
	
}//CLASS
