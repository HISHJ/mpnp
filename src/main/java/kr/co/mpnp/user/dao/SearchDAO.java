package kr.co.mpnp.user.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.co.mpnp.handler.MyBatisHandler;
import kr.co.mpnp.user.domain.SearchDomain;

public class SearchDAO {
	
	
	public  List<SearchDomain> selectBestFive() {
		
		List<SearchDomain> list=null;
		MyBatisHandler mbh= MyBatisHandler.getInstance();
		SqlSession ss= mbh.getHandler();
		//2.
		
		try {
			
			list=ss.selectList("kr.co.mpnp.user.mapper.SearchMapper.selectBest");
			ss.commit();
			
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		
		//3.
		mbh.closeHandler(ss);
		return list;
		
		

	}
	
	public static void main(String[] args) {
		
		SearchDAO shDAO= new SearchDAO();
		
		 System.out.println(shDAO.selectBestFive());
		
		
	}
	
	
}
