package kr.co.mpnp.user.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.co.mpnp.handler.MyBatisHandler;
import kr.co.mpnp.user.domain.SearchDomain;

public class SearchDAO {
	
private static SearchDAO searchDAO;
	
	private  SearchDAO() {
		
	}
	
	public static SearchDAO getInstance() {
		if(searchDAO==null) {
			searchDAO=new SearchDAO();
		}
	return searchDAO;
	}
	
	
	//검색결과
	public List<SearchDomain> selectProduct(String productname){
		List<SearchDomain> list=null;
		MyBatisHandler mbh= MyBatisHandler.getInstance();
		SqlSession ss= mbh.getHandler();
		//2.
		
		try {
			
			list=ss.selectList("kr.co.mpnp.user.mapper.SearchMapper.searchPrd",productname);
			ss.commit();
			
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		
		//3.
		mbh.closeHandler(ss);
		
		
		return list;
	}
	
	//검색결과 총 개수
	public int selectTotalCnt(String productname) {
		int cnt=0;
		
		//1.MyBatisHandler얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss= mbh.getHandler();

		try {
		//2.쿼리문 실행
		cnt=ss.selectOne("kr.co.mpnp.user.mapper.SearchMapper.selectTotalCnt", productname);
		
		}catch(PersistenceException pe) {
		pe.printStackTrace();
		}
		
		
		//3.연결끊기
		mbh.closeHandler(ss);
		
		
		return cnt;
		
	}
	
	
	//베스트 5개
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
		 System.out.println(shDAO.selectProduct("도"));
		 System.out.println(shDAO.selectTotalCnt("도"));
		 
		
		
	}
	
	
}
