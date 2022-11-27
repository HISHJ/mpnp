package kr.co.mpnp.admin.domain;

public class DashMonthlySalesDomain {

	private String monthly;
	private int sales;
	public String getMonthly() {
		return monthly;
	}
	public void setMonthly(String monthly) {
		this.monthly = monthly;
	}
	public int getSales() {
		return sales;
	}
	public void setSales(int sales) {
		this.sales = sales;
	}
	@Override
	public String toString() {
		return "DashMonthlySalesDomain [monthly=" + monthly + ", sales=" + sales + "]";
	}
	
	
	
}
