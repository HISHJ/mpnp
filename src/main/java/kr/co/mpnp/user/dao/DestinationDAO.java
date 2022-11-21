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
	public int insertDes(DestinationVO dtVO){
		
		System.out.println("여기는DAO : "+dtVO.toString());
		int cnt = 0;// 쿼리문실행결과 
		
		// 1. Mybatis Handler 받기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		System.out.println("DestinationDAO : ssesion - "+ss);
		
		// 2. 쿼리수행
		cnt = ss.insert("kr.co.mpnp.user.mapper.destinationMapper.insertDes",dtVO);
		if(cnt==1) {
			System.out.println(cnt+"건 추가");
			ss.commit();
		}else {
			System.out.println("데이터추가X");
		}
		// 3. 종료
		mbh.closeHandler(ss);
						
		
		//return cnt;
		return cnt; 
	}
	
	public int updateDefault(String id){
		
		int cnt = 0;// 쿼리문실행결과 
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		
		System.out.println("updateDefault에 들어온 id : "+id);
		cnt = ss.update("kr.co.mpnp.user.mapper.destinationMapper.updateDefault",id);
		if(cnt!=0) {
			ss.commit();
		}else {
			System.out.println("데이터추가X");
			ss.rollback();
		}
		mbh.closeHandler(ss);
		
		return cnt; 
	}
	
	// 배송지정보변경
	public int updateDes(DestinationVO dtVO){
		
		int cnt = 0;
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		System.out.println("DestinationDAO : ssesion - "+ss);
		System.out.println("여긴다오::::::::::::::::::::::"+dtVO.toString());
		// 2. 쿼리수행
		cnt = ss.update("kr.co.mpnp.user.mapper.destinationMapper.updateDes",dtVO);
		System.out.println(cnt);
		if(cnt!=0) {
			System.out.println(cnt+"건 추가");
			ss.commit();
		}else {
			System.out.println("데이터추가X");
		}
		// 3. 종료
		mbh.closeHandler(ss);
		
		
		return cnt; 
	}
	
	
	// 배송지삭제
	public int deleteDes(String dtId){
		
		System.out.println("여기는DAO : "+dtId);
		int cnt = 0;// 쿼리문실행결과 
		
		// 1. Mybatis Handler 받기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		System.out.println("DestinationDAO : ssesion - "+ss);
		
		// 2. 쿼리수행
		cnt = ss.insert("kr.co.mpnp.user.mapper.destinationMapper.deleteDes",dtId);
		if(cnt==1) {
			ss.commit();
		}else {
			System.out.println("데이터삭제X");
		}
		// 3. 종료
		mbh.closeHandler(ss);
		
		return cnt;
	}
	
	
	
}
