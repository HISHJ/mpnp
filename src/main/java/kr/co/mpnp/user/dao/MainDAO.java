package kr.co.mpnp.user.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.co.mpnp.handler.MyBatisHandler;
import kr.co.mpnp.user.domain.MainDomain;
import kr.co.mpnp.user.vo.MainVO;


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
	

	

//»óÇ° ¸®½ºÆ®	
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
	//ÆäÀÌÂ¡ »óÇ° ÀüÃ¼º¸±â
	public List<MainDomain> selectAllList(MainVO mVO){
		List<MainDomain> list=null;
		
		//1.MyBatisHandler?–»ê¸?
		MyBatisHandler mbh= MyBatisHandler.getInstance();
		SqlSession ss= mbh.getHandler();
		//2.
		
		try {
			
			list=ss.selectList("kr.co.mpnp.user.mapper.MainMapper.selectAllList",mVO);
			ss.commit();
			
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		
		//3.
		mbh.closeHandler(ss);
		return list;
	}
	
	//»óÇ° ÃÑ °¹¼ö
	public int selectprdCnt(MainVO mVO) {
		int cnt=0;
		
		//1.MyBatisHandler¾ò±â
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss= mbh.getHandler();
		//2.Äõ¸®¹® ½ÇÇà
		cnt=ss.selectOne("kr.co.mpnp.user.mapper.MainMapper.selectprdCnt", mVO);
		//3.¿¬°á²÷±â
		mbh.closeHandler(ss);
		
		
		return cnt;
	}
	
	//Àå¹Ù±¸´Ï °¹¼ö
	public int TotalCnt(String id) {
	int cnt=0;
		
		//1.MyBatisHandler¾ò±â
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss= mbh.getHandler();
		//2.Äõ¸®¹® ½ÇÇà
		cnt=ss.selectOne("kr.co.mpnp.user.mapper.MainMapper.selectCart", id);
		//3.¿¬°á²÷±â
		mbh.closeHandler(ss);
		
		
		return cnt;
		
		
	}
	
	

	


}//class
