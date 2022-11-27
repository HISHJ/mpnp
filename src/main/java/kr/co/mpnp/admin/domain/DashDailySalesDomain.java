package kr.co.mpnp.admin.domain;

public class DashDailySalesDomain {
	
	private String daily;
	private int sales;
	public String getDaily() {
		return daily;
	}
	public void setDaily(String daily) {
		this.daily = daily;
	}
	public int getSales() {
		return sales;
	}
	public void setSales(int sales) {
		this.sales = sales;
	}
	@Override
	public String toString() {
		return "DashDailySales [daily=" + daily + ", sales=" + sales + "]";
	}
	
	
	
}
