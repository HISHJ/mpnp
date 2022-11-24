package kr.co.mpnp.user.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.co.mpnp.handler.MyBatisHandler;
import kr.co.mpnp.user.domain.CartDomain;
import kr.co.mpnp.user.domain.ProductDomain;
import kr.co.mpnp.user.vo.CartVO;
import kr.co.mpnp.user.vo.ProductCartVO;
import kr.co.mpnp.user.vo.WishListVO;


public class ProductDAO {
	
private static ProductDAO pDAO;
	
	private ProductDAO() {
		
	}
	
	public static ProductDAO getInstance() {
		if(pDAO==null) {
			pDAO=new ProductDAO();
		}
	return pDAO;
	}
	//상품상세보기
	public ProductDomain selectPrdDetail(String productid) {
		
		ProductDomain pd = null;
		
		//1.MyBatisHandler얻기
				MyBatisHandler mbh = MyBatisHandler.getInstance();
				SqlSession ss= mbh.getHandler();
				try {
				//2.쿼리문 실행
				pd=ss.selectOne("kr.co.mpnp.user.mapper.ProductMapper.selectPrddetail", productid);
				
				}catch(PersistenceException pe) {
					pe.printStackTrace();
				}
				//3.연결끊기
				mbh.closeHandler(ss);
				
		return pd;
	}
	
	//상품중분류리스트
	public List<ProductDomain> selectprdList(String subid) {
		
		List<ProductDomain> list= null;
		
		//1.MyBatisHandler얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss= mbh.getHandler();
		try {
		//2.쿼리문 실행
		list=ss.selectList("kr.co.mpnp.user.mapper.ProductMapper.selectprdList", subid);
		
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		//3.연결끊기
		mbh.closeHandler(ss);
		
		return list;
	}
	
	
	//상품 총 갯수
	public int selectprdCnt(String subid) {
		int cnt=0;
		
		//1.MyBatisHandler얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss= mbh.getHandler();
		//2.쿼리문 실행
		cnt=ss.selectOne("kr.co.mpnp.user.mapper.ProductMapper.selectprdCnt",subid);
		//3.연결끊기
		mbh.closeHandler(ss);
		
		
		return cnt;
	}
	
	
	//장바구니 추가
	
	public int insertCart(ProductCartVO cVO) {
		int cnt=0;
		//1.MyBatisHandler얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss= mbh.getHandler();
		try {
			cnt=ss.insert("kr.co.mpnp.user.mapper.ProductMapper.insertCart",cVO);
			ss.commit();
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		//3.연결끊기
		mbh.closeHandler(ss);
		
		
		return cnt;
	}
	
	//장바구니목록에 들어가있는지 확인
	public int  checkCart(ProductCartVO cVO) {
		
		//1.MyBatisHandler얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss= mbh.getHandler();
		int check=0;
		try {
		check=	ss.selectOne("kr.co.mpnp.user.mapper.ProductMapper.selectConfirmCart",cVO);
		
			ss.commit();
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		//3.연결끊기
		mbh.closeHandler(ss);
		
		return check;
	
		
	}
	
	//찜추가
	public int insertWishList(ProductCartVO cVO) {
		int cnt=0;
		//1.MyBatisHandler얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss= mbh.getHandler();
		try {
			cnt=ss.insert("kr.co.mpnp.user.mapper.ProductMapper.insertWishList",cVO);
			ss.commit();
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		//3.연결끊기
		mbh.closeHandler(ss);
		
		
		return cnt;
	}
	
	//찜 여부
	public int  checkWish(ProductCartVO cVO) {
		
		//1.MyBatisHandler얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss= mbh.getHandler();
		int check=0;
		try {
		check=	ss.selectOne("kr.co.mpnp.user.mapper.ProductMapper.selectConfirmWish",cVO);
		
			ss.commit();
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		//3.연결끊기
		mbh.closeHandler(ss);
		
		return check;
	
		
	}
	
	public int deleteWishList(WishListVO wVO) {
		int cnt=0;
		
		//1.MyBatisHandler얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss= mbh.getHandler();
		//2.쿼리문 실행
		cnt=ss.delete("kr.co.mpnp.user.mapper.ProductMapper.deleteWish",wVO);
		ss.commit();
		//3.연결끊기
		mbh.closeHandler(ss);
		
		
		return cnt;
		
		
		
	}
	
	
	
	public static void main(String[] args) {
		
		ProductDAO pDAO= new ProductDAO();
		ProductCartVO cVO = new ProductCartVO();
		WishListVO wVO =new WishListVO();
		wVO.setId("id002");
		wVO.setProductid("p0001");
		cVO.setId("id005");
		cVO.setProductid("pr_0000017");
	
		//System.out.println(pDAO.checkCart(cVO));
		System.out.println(pDAO.insertWishList(cVO));
		//System.out.println(pDAO.deleteWishList(wVO));
		 
	
		// System.out.println(mDAO.selectPrdList("m0001")); 
//System.out.println(pDAO.selectPrdDetail("p0001"));
//System.out.println(pDAO.selectprdList("s0001"));
//System.out.println(pDAO.selectprdCnt("s0001"));




		
		
	}

}//class

