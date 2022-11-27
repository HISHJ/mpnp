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
		//System.out.println("DestinationDAO : ssesion - "+ss);
		
		// 2. 쿼리수행
		list = ss.selectList("kr.co.mpnp.user.mapper.destinationMapper.selectDesList",id);
		
		// 3. 종료
		mbh.closeHandler(ss);
				
		return list;
	}
	
	// 배송지추가
	//public int insertDes(DestinationVO dtVO){
	public boolean insertDes(DestinationVO dtVO){
		
		//System.out.println("여기는DAO : "+dtVO.toString());
		int cnt = 0;// 쿼리문실행결과 
		
		// 1. Mybatis Handler 받기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		//System.out.println("DestinationDAO : ssesion - "+ss);
		
		// 2. 쿼리수행
		
		
		
		boolean defaultFlag = false;
		boolean insertFlag = false;
		boolean finalFlag = false;
		if("O".equals(dtVO.getDefaultFlag())){
			defaultFlag = ss.update("kr.co.mpnp.user.mapper.destinationMapper.updateDefault",dtVO.getId())!=0?true:false;
			insertFlag = ss.insert("kr.co.mpnp.user.mapper.destinationMapper.insertDes",dtVO)!=0?true:false;
			if(insertFlag && defaultFlag) {
				//System.out.println("커밋됨");
				ss.commit();
				finalFlag = true;
			}else {
				//System.out.println("롤백됨");
				ss.rollback();
			}
		}else { // O가 아닐경우에는 update기본배송지 이걸 할 필요가없지 ㅇㅇ
			insertFlag = ss.insert("kr.co.mpnp.user.mapper.destinationMapper.insertDes",dtVO)!=0?true:false;
			if(insertFlag) {
				//System.out.println("커밋됨");
				ss.commit();
				finalFlag = true;
			}else {
				//System.out.println("롤백됨");
				ss.rollback();
			}
		}
		
		// 3. 종료
		mbh.closeHandler(ss);
		//return cnt;
		return finalFlag; 
	}
	
//	public int updateDefault(String id){
//		
//		int cnt = 0;// 쿼리문실행결과 
//		
//		MyBatisHandler mbh = MyBatisHandler.getInstance();
//		SqlSession ss = mbh.getHandler();
//		
//		System.out.println("updateDefault에 들어온 id : "+id);
//		cnt = ss.update("kr.co.mpnp.user.mapper.destinationMapper.updateDefault",id);
//		if(cnt!=0) {
//			ss.commit();
//		}else {
//			System.out.println("데이터추가X");
//			ss.rollback();
//		}
//		mbh.closeHandler(ss);
//		
//		return cnt; 
//	}
	
	// 배송지정보변경
	public boolean updateDes(DestinationVO dtVO){
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		//System.out.println("DestinationDAO : ssesion - "+ss);
		
		// 2. 쿼리수행
		
		
		boolean defaultFlag = false;
		boolean updateFlag = false;
		boolean finalFlag = false;
		if("O".equals(dtVO.getDefaultFlag())){
			//System.out.println("여기까지 옴1");
			defaultFlag = ss.update("kr.co.mpnp.user.mapper.destinationMapper.updateDefault",dtVO.getId())!=0?true:false;
			//System.out.println("여기까지 옴2");
			updateFlag = ss.update("kr.co.mpnp.user.mapper.destinationMapper.updateDes",dtVO)!=0?true:false;
			//System.out.println("여기까지 옴3");
			if(updateFlag && defaultFlag) {
				//System.out.println("커밋됨");
				ss.commit();
				finalFlag = true;
			}else {
				//System.out.println("롤백됨");
				ss.rollback();
			}
		}else {
			updateFlag = ss.update("kr.co.mpnp.user.mapper.destinationMapper.updateDes",dtVO)!=0?true:false;
			if(updateFlag) {
				//System.out.println("커밋됨");
				ss.commit();
				finalFlag = true;
			}else {
				//System.out.println("롤백됨");
				ss.rollback();
			}
		}
		
		// 3. 종료
		mbh.closeHandler(ss);
		
		
		return finalFlag; 
	}
	
	
	// 배송지삭제
	public int deleteDes(String dtId){
		
		//System.out.println("여기는DAO : "+dtId);
		int cnt = 0;// 쿼리문실행결과 
		
		// 1. Mybatis Handler 받기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		//System.out.println("DestinationDAO : ssesion - "+ss);
		
		// 2. 쿼리수행
		cnt = ss.insert("kr.co.mpnp.user.mapper.destinationMapper.deleteDes",dtId);
		if(cnt==1) {
			ss.commit();
		}else {
			//System.out.println("데이터삭제X");
			ss.rollback();
		}
		// 3. 종료
		mbh.closeHandler(ss);
		
		return cnt;
	}
	
	
	
}
