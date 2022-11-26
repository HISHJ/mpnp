package kr.co.mpnp.user.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.co.mpnp.handler.MyBatisHandler;
import kr.co.mpnp.user.domain.MainDomain;
import kr.co.mpnp.user.domain.ProductReviewDomain;

public class ProductReviewDAO {

	//후기리스트
	public List<ProductReviewDomain> selectProductReview(String productid){
		
		List<ProductReviewDomain> list=null;
		MyBatisHandler mbh= MyBatisHandler.getInstance();
		SqlSession ss= mbh.getHandler();
		
		
		//2.		
			list=ss.selectList("kr.co.mpnp.user.mapper.ProductReviewMapper.selectProductReview",productid);
			
			ss.commit();
			
	
		//3.
		mbh.closeHandler(ss);
		return list;
	}

	//별점별 인원수 
	public List<ProductReviewDomain> selectStarCnt(String productid) {
		
		List<ProductReviewDomain> list=null;
		MyBatisHandler mbh= MyBatisHandler.getInstance();
		SqlSession ss= mbh.getHandler();
		//2.
		
		try {
			
			list=ss.selectList("kr.co.mpnp.user.mapper.ProductReviewMapper.selectStarCnt",productid);
			ss.commit();
			
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		
		//3.
		mbh.closeHandler(ss);
		
		return list;
		
	}
	
	//이미지조회
	public List<ProductReviewDomain> selectImg(String reviewid){
		List<ProductReviewDomain> list=null;
		MyBatisHandler mbh= MyBatisHandler.getInstance();
		SqlSession ss= mbh.getHandler();
		//2.
		
		try {
			
			list=ss.selectList("kr.co.mpnp.user.mapper.ProductReviewMapper.selectReviewImg",reviewid);
			ss.commit();
			
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		
		//3.
		mbh.closeHandler(ss);
		
		return list;
		
	}

	
	public static void main(String[] args) {
		
		ProductReviewDAO pDAO = new ProductReviewDAO();
		
	 System.out.println(pDAO.selectProductReview("p0001"));
		System.out.println(pDAO.selectStarCnt("p0001"));
	
	}
	
	
	
	
}//class
