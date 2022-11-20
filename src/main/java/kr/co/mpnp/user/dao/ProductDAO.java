package kr.co.mpnp.user.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.co.mpnp.handler.MyBatisHandler;
import kr.co.mpnp.user.domain.ProductDomain;
import kr.co.mpnp.user.vo.CartVO;
import kr.co.mpnp.user.vo.ProductCartVO;


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
				pd=ss.selectOne("kr.co.mpnp.use.mapper.ProductMapper.selectPrddetail", productid);
				
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
		list=ss.selectList("kr.co.mpnp.use.mapper.ProductMapper.selectprdList", subid);
		
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
		cnt=ss.selectOne("kr.co.mpnp.use.mapper.ProductMapper.selectprdCnt",subid);
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
			cnt=ss.insert("kr.co.mpnp.use.mapper.ProductMapper.insertCart",cVO);
			ss.commit();
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		
		
		
		return cnt;
	}
	
	public static void main(String[] args) {
		
		ProductDAO pDAO= new ProductDAO();
		ProductCartVO cVO = new ProductCartVO("p0003", "id001", 2);
		
		// mDAO.selectProductList("m0001"); 
		 
	
		// System.out.println(mDAO.selectPrdList("m0001")); 
System.out.println(pDAO.selectPrdDetail("p0001"));
System.out.println(pDAO.selectprdList("s0001"));
System.out.println(pDAO.selectprdCnt("s0001"));
System.out.println(pDAO.insertCart(cVO));


		
		
	}

}//class

