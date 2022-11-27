package kr.co.mpnp.user.service;

import java.util.List;

import org.json.simple.JSONObject;

import kr.co.mpnp.user.dao.CartDAO;
import kr.co.mpnp.user.dao.ReviewDAO;
import kr.co.mpnp.user.domain.CartDomain;
import kr.co.mpnp.user.vo.CartVO;

public class CartService {

	// 로그인시 장바구니 갯수조회
	public int searchCartTotalCnt(String id) {
		int cnt = 0;
		
		
		return cnt;
	}
	
	// 장바구니 조회
	public List<CartDomain> searchCartList(String id){
		List<CartDomain> list = null;
		
		//System.out.println("CartService : id - "+id);
		CartDAO cartDAO = CartDAO.getInstance();
		list = cartDAO.selectCartList(id);
		
		return list;
	}
	
	
	// 장바구니 삭제 단일삭제
	public String removeCart(String cartId) {
		boolean removeFlag = false;
		CartDAO cartDAO = CartDAO.getInstance();
		removeFlag = cartDAO.deleteCart(cartId);
		
		JSONObject jsonData = new JSONObject();
		jsonData.put("removeFlag", removeFlag);
		
		return jsonData.toJSONString();
		
	}
	
	// 장바구니 삭제 단일삭제
	public String removeChkCart(List<CartVO> list) {
		boolean removeFlag = false;
		CartDAO cartDAO = CartDAO.getInstance();
		//System.out.println("다오 들어가기전");
		removeFlag = cartDAO.deleteChkCart(list);
		//System.out.println("다오 들어가고난후");
		
		JSONObject jsonData = new JSONObject();
		jsonData.put("removeFlag", removeFlag);
		
		return jsonData.toJSONString();
		
	}
	
	
	// 장바구니 수량변경
	public String modifyCartItemCnt(CartVO cVO) {
		boolean modifyFlag = false;
		CartDAO cartDAO = CartDAO.getInstance();
		//System.out.println("다오 들어가기전");
		modifyFlag = cartDAO.updateCartCnt(cVO);
		//System.out.println("다오 들어가고난후");
		
		JSONObject jsonData = new JSONObject();
		jsonData.put("modifyFlag", modifyFlag);
		////////////////////////////////////
		// 이제 넘길값 짜보자
		jsonData.put("test", "테스트입니다");
		
		/////////////////////////////////////
		
		
		return jsonData.toJSONString();
	}
	
	
}
