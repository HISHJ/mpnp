package kr.co.mpnp.user.service;

import java.util.List;

import kr.co.mpnp.user.domain.CartDomain;
import kr.co.mpnp.user.vo.CartVO;

public class CartService {

	// 로그인시 장바구니 갯수조회
	// 그럼 얘는 로그인컨트롤러에서 부르려나
	public int searchCartTotalCnt(String id) {
		int cnt = 0;
		
		
		return cnt;
	}
	
	// 장바구니 조회
	public List<CartDomain> searchCartList(String id){
		List<CartDomain> list = null;
		
		return list;
	}
	
	// 장바구니 수량변경
	public boolean modifyCartItemCnt(CartVO cVO) {
		
		
		int cnt = 0;
		
		return cnt!=0?true:false;
	}
	
	// 장바구니 삭제
	public boolean removeCart(String id, String[] cartId) {
		boolean removeFlag = false;
		
		
		
		return removeFlag;
	}
	
}
