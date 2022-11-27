package kr.co.mpnp.user.service;

import java.util.ArrayList;

import java.util.List;

import kr.co.mpnp.user.dao.MainDAO;
import kr.co.mpnp.user.domain.MainDomain;
import kr.co.mpnp.user.vo.MainVO;

public class MainService {
	
	
	MainDAO mainDAO = MainDAO.getInstance();
	
	//메인 리스트
	 public List<MainDomain> searchPrdList(String mainid){
		
		 List<MainDomain> list =mainDAO.selectPrdList(mainid);
	 
	 return list;
	 
	 }
	 
	 
	 //페이징 전체리스트
	 public List<MainDomain> searchAllList(MainVO mVO){
		 List<MainDomain> list=mainDAO.selectAllList(mVO);
		 
		 return list;
	 }
	 
	 //총 게시물 수
		public int searchPrdCnt (MainVO mVO) {
			int cnt=mainDAO.selectprdCnt(mVO);
			
			return cnt;
			
		}
		

		//장바구니 갯수
		public int CartTotalCnt(String id) {
			int cnt =mainDAO.TotalCnt(id);
			return cnt;
		}
		
		
	
		//마지막 페이지 수
		public int lastPage(int searchPrdCnt) {
			int lastPage=(int)Math.ceil((double) searchPrdCnt /8);
			
			return lastPage;
		}//lastPage
		
		//현재페이지 시작번호
		public int startNum(int curPage) {
			int startNum=curPage-(curPage-1)%8;
			return startNum;
			
		}//startNum
		//한페이지당 보여줄 페이지수
		public int isLast(int lastPage,int startNum) {
			int isLast =2; //0,1,2, 3페이지씩
			if(startNum+3>lastPage) {
				isLast= lastPage-startNum;
				
			}
			return isLast;
			
		}//isLast
	public static void main(String[] args) {
			
	MainService ms= new MainService();
			System.out.println(ms.CartTotalCnt("id001"));
			
		}

	


}// class
