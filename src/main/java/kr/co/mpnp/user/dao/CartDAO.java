package kr.co.mpnp.user.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.mpnp.handler.MyBatisHandler;
import kr.co.mpnp.user.domain.CartDomain;
import kr.co.mpnp.user.vo.CartVO;

public class CartDAO {
	private static CartDAO cartDAO;

	private CartDAO() {
	}

	public static CartDAO getInstance() {
		if (cartDAO == null) {
			cartDAO = new CartDAO();
		}

		return cartDAO;
	}
	
	// 장바구니 조회
	public List<CartDomain> selectCartList(String id){
		List<CartDomain> list = null;
		
		// 1. Mybatis Handler 받기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		System.out.println("CartDAO : ssesion - "+ss);
		
		// 2. 쿼리수행
		list = ss.selectList("kr.co.mpnp.user.mapper.cartMapper.selectCartList",id);
		
		// 3. 종료
		mbh.closeHandler(ss);

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
