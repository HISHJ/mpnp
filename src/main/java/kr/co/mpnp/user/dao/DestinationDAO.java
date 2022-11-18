package kr.co.mpnp.user.dao;

import java.util.List;

import kr.co.mpnp.user.domain.DestinationDomain;
import kr.co.mpnp.user.vo.DestinationVO;

public class DestinationDAO {

	// 배송지조회
	public List<DestinationDomain> selectDes(String id){
		List<DestinationDomain> list = null;
				
				
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
