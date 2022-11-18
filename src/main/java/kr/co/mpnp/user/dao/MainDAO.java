package kr.co.mpnp.user.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.co.mpnp.handler.MyBatisHandler;
import kr.co.mpnp.user.domain.MainDomain;


public class MainDAO {
	
	

	
	public Double selectStar(String productid){
		Double Star=null;
		
		//1.MyBatisHandler?–»ê¸?
		MyBatisHandler mbh= MyBatisHandler.getInstance();
		SqlSession ss= mbh.getHandler();
		//2.
		
		try {
			
			Star=ss.selectOne("kr.co.mpnp.user.mapper.MainMapper.selectStar",productid);
			ss.commit();
			
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		
		//3.
		mbh.closeHandler(ss);
		return Star;
	}
	
	public List<MainDomain> selectPrdList(String mainid){
		List<MainDomain> list=null;
		
		//1.MyBatisHandler?–»ê¸?
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
	
	public static void main(String[] args) {
		
		MainDAO mDAO= new MainDAO();
		
		// mDAO.selectProductList("m0001"); 
		 
	
		 System.out.println(mDAO.selectPrdList("m0001"));
		
		
	}

}//class
