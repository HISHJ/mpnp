package kr.co.mpnp.user.dao;

import java.util.List;

import kr.co.mpnp.user.domain.CartDomain;
import kr.co.mpnp.user.vo.CartVO;

public class CartDAO {
	
	// 장바구니 조회
	public List<CartDomain> selectCartList(String id){
		List<CartDomain> list = null;
		
		
		return list;
	}
	
	// 장바구니갯수변경
	public boolean updateCartCnt(CartVO cVO){
		boolean updateFlag = false;
		
		return updateFlag;
	}
	
	
	// 장바구니 삭제
	public boolean deleteCart(String id, String[] cartIds){
		boolean deleteFlag = false;
		
		
		return deleteFlag;
	}
	
	
}
