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
		return flag;
	}
	
	
	//관리자- 비번변경
	public int updateAdminPass(AdminLoginVO alVO) {
		//1.MyBatis Handler얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//2.쿼리문실행
		int cnt=ss.update("kr.co.mpnp.admin.dao.mapper.adminLoginMapper.updateAdminPass",alVO);
		if(cnt!=0) {
			System.out.println(alVO.getId()+" 비번 변경완료");
			ss.commit();//와 이거 잊지말자 .... 
		}else {
			System.out.println("실패하였습니다");
		}
		//cnt 테스트
		System.out.println(cnt+"건");
		
		//3.MyBatis Handler 끊기
		mbh.closeHandler(ss);
		
		return cnt;
	}

	public static void main(String[] args) {

	}

}
