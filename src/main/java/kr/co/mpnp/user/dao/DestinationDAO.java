package kr.co.mpnp.user.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.mpnp.handler.MyBatisHandler;
import kr.co.mpnp.user.domain.DestinationDomain;
import kr.co.mpnp.user.vo.DestinationVO;

public class DestinationDAO {

	private static DestinationDAO desDAO;

	private DestinationDAO() {
	}

	public static DestinationDAO getInstance() {
		if (desDAO == null) {
			desDAO = new DestinationDAO();
		}

		return desDAO;
	}
	
	// 배송지조회
	public List<DestinationDomain> selectDes(String id){
		List<DestinationDomain> list = null;
				
		// 1. Mybatis Handler 받기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		System.out.println("DestinationDAO : ssesion - "+ss);
		
		// 2. 쿼리수행
		list = ss.selectList("kr.co.mpnp.user.mapper.destinationMapper.selectDesList",id);
		
		// 3. 종료
		mbh.closeHandler(ss);
				
		return list;
	}
	
	// 배송지추가
	//public int insertDes(DestinationVO dtVO){
	public boolean insertDes(DestinationVO dtVO){
		
		
		int cnt = 0;// 쿼리문실행결과 
		
		
		//return cnt;
		return cnt!=0?true:false; 
	}
	
	// 배송지정보변경
	public boolean updatetDes(DestinationVO dtVO){
		
		int cnt = 0;
		
		return cnt!=0?true:false; 
	}
	
	// 배송지삭제
	public boolean deleteDes(DestinationVO dtVO){
		
		int cnt = 0;
		
		return cnt!=0?true:false; 
	}
	
	
	
}
