package kr.co.mpnp.user.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.co.mpnp.handler.MyBatisHandler;
import kr.co.mpnp.user.domain.MainDomain;


public class MainDAO {
	
	private static MainDAO mainDAO;
	
	private MainDAO() {
		
	}
	
	public static MainDAO getInstance() {
		if(mainDAO==null) {
			mainDAO =new MainDAO();
		}
	return mainDAO;
	}
	

	

//상품 리스트	
	public List<MainDomain> selectPrdList(String mainid){
		List<MainDomain> list=null;
		
		//1.MyBatisHandler?뼸湲?
		MyBatisHandler mbh= MyBatisHandler.getInstance();
		SqlSession ss= mbh.getHandler();
		//2.
		
		try {
			
			list=ss.selectList("kr.co.mpnp.user.mapper.MainMapper.selectPrdList",mainid);
			ss.commit();
			
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		
		//3.
		mbh.closeHandler(ss);
		return list;
	}
	
	public int selectprdCnt(String mainid) {
		int cnt=0;
		
		//1.MyBatisHandler얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss= mbh.getHandler();
		//2.쿼리문 실행
		cnt=ss.selectOne("kr.co.mpnp.user.mapper.MainMapper.selectprdCnt", mainid);
		//3.연결끊기
		mbh.closeHandler(ss);
		
		
		return cnt;
	}
	
	

	
	public static void main(String[] args) {
		
		MainDAO mDAO= new MainDAO();
		
		// mDAO.selectProductList("m0001"); 
		 
	
		//System.out.println(mDAO.selectPrdList("m0001")); 
		System.out.println(mDAO.selectprdCnt("m0001")); 
		/*
		 * System.out.println(mDAO.selectStar("pr_0000017"));
		 * System.out.println(mDAO.selectReviewcnt("pr_0000017"));
		 */
		
		
	}

}//class
