package kr.co.mpnp.admin.dao;

import org.apache.ibatis.session.SqlSession;

import kr.co.mpnp.admin.vo.AdminLoginVO;
import kr.co.mpnp.handler.MyBatisHandler;

public class AdminLoginDAO {
	private static AdminLoginDAO alDAO;
	
	private AdminLoginDAO() {
			
	}

	public static AdminLoginDAO getInstance(){
			if(alDAO==null) {
				alDAO= new AdminLoginDAO();
			}
			return alDAO;
	}
	
	
	
	//관리자-로그인
	public boolean selectAdminLogin(AdminLoginVO alVO){
		boolean flag=false;
		
		//1.MyBatis Handler얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		//System.out.println(alVO.getId()+"/"+alVO.getPass()); //값 잘 받아짐
				
		//2.쿼리문실행
		int cnt=ss.selectOne("kr.co.mpnp.admin.mapper.adminLoginMapper.selectAdminLogin",alVO);
		if(cnt!=0) {
			//ss.commit();//select할땐 필요없는 거아니야 ?  
			flag=true;
		}else {
			//System.out.println("로그인에 실패하였습니다");
		}
		//cnt 테스트
		//System.out.println(cnt+"건");
				
		//3.MyBatis Handler 끊기
		mbh.closeHandler(ss);
				
		return flag;
	}
	
	
	//관리자- 비번변경
	public int updateAdminPass(AdminLoginVO alVO) {
		//1.MyBatis Handler얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		//System.out.println("세션에 있는 아이디..."+alVO.getId()); //null인데 관리자는 뭐
		
		//2.쿼리문실행
		int cnt=ss.update("kr.co.mpnp.admin.mapper.adminLoginMapper.updateAdminPass",alVO);
		if(cnt!=0) {
			//System.out.println(alVO.getNewpass()+"으로 비번 변경완료");
			ss.commit();//와 이거 잊지말자 .... 
		}else {
			//System.out.println("실패하였습니다");
		}
		//cnt 테스트
		//System.out.println(cnt+"건");
		
		//3.MyBatis Handler 끊기
		mbh.closeHandler(ss);
		
		return cnt;
	}

	public static void main(String[] args) {

	}

}
