package kr.co.mpnp.user.vo;

import java.util.List;
//¼³ºó
public class OrdersInfoVO {
	List<OrderPrdVO> orders;

	public OrdersInfoVO() {
	}

	public OrdersInfoVO(List<OrderPrdVO> orders) {
		this.orders = orders;
	}

	public List<OrderPrdVO> getOrders() {
		return orders;
	}

	public void setOrders(List<OrderPrdVO> orders) {
		this.orders = orders;
	}

	@Override
	public String toString() {
		return "OrdersInfoVO [orders=" + orders + "]";
	}
	
	
	

}
