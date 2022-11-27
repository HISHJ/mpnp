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
		//System.out.println("CartDAO : ssesion - "+ss);
		
		// 2. 쿼리수행
		list = ss.selectList("kr.co.mpnp.user.mapper.cartMapper.selectCartList",id);
		
		// 3. 종료
		mbh.closeHandler(ss);

		return list;
	}

	
	
	// 장바구니 삭제 단일삭제
	public boolean deleteCart(String cartId){
		boolean deleteFlag = false;
		int cnt = 0;
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		cnt = ss.delete("kr.co.mpnp.user.mapper.cartMapper.deleteCart",cartId);
		if(cnt!=0) {
			deleteFlag = true;
			ss.commit();
		}else {
			ss.rollback();
		}
		
		mbh.closeHandler(ss);
		return deleteFlag;
	}
	
	// 장바구니 삭제 다중삭제
	public boolean deleteChkCart(List<CartVO> list){
		boolean deleteFlag = false;
		int cnt = 0;
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		
		//System.out.println("DAO까지 온 list 길이 : "+list.size());
		cnt = ss.delete("kr.co.mpnp.user.mapper.cartMapper.deleteChkCart",list);
		//System.out.println("cnt값 : "+cnt);
		
		if(cnt==list.size()) {
			deleteFlag = true;
			ss.commit();
		}else {
			ss.rollback();
		}
		
		mbh.closeHandler(ss);
		return deleteFlag;
	}
	
	
	// 2022-11-25 오후6시 최정민
	
	// 장바구니갯수변경
	public boolean updateCartCnt(CartVO cVO){
		boolean updateFlag = false;
		int cnt = 0;
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		cnt = ss.delete("kr.co.mpnp.user.mapper.cartMapper.updateCartCnt",cVO);
		//System.out.println(cnt);
		if(cnt!=0) {
			updateFlag = true;
			ss.commit();
		}else {
			ss.rollback();
		}
		return updateFlag;
	}
	
	
	
}
