package kr.co.mpnp.user.service;

import java.util.ArrayList;
import java.util.List;

import kr.co.mpnp.user.dao.SearchDAO;
import kr.co.mpnp.user.domain.SearchDomain;
import kr.co.mpnp.user.vo.SearchVO;

public class SearchService {

	SearchDAO searchDAO = SearchDAO.getInstance();
	
	//검색결과
	public List<SearchDomain> searchProduct(SearchVO sVO){
		
		List<SearchDomain> list = searchDAO.selectProduct(sVO);
	
		
		
		return list;
	}
	
	//검색결과 총 갯수
	public int TotalCnt(SearchVO sVO) {
		int cnt=searchDAO.selectTotalCnt(sVO);
		return cnt;
		
	}
	
	//마지막 페이지수
	public int lastPage(int TotalCnt) {
		int lastPage=(int)Math.ceil((double) TotalCnt / 6);
		//6개씩 보여줄거니 나누기 6
		return lastPage;
		
	}
	
	//현재페이지 시작번호
	public int startNum(int curPage) {
		int startNum=curPage-(curPage-1)%3;
//		012 3번도는것
		return startNum;
	}
	
	//한페이지당 보여줄 페이지수
	public int isLast(int lastPage,int startNum) {
		int isLast =2; //0,1,2, 3페이지씩
		if(startNum+3>lastPage) {
			isLast= lastPage-startNum;
			
		}
		return isLast;
		
	}
	
	
//	
//	public int pageScale() {
//		int pageScale=6;
//		
//		return pageScale;
//	}
//	
//	
//	//한페이지에 6개씩 보여줄 총 페이지 수
//	public int totalPage(int TotalCnt,int pageScale) {
//		int totalPage=0;
//	
//		
//		totalPage=(int)Math.ceil((double)TotalCnt/pageScale);
//		return totalPage;
//	}
//	//시작번호
//	public int StartNum(int currentPage,int pageScale) {
//		int startNum=1;
//		
//		if(currentPage<1) {
//			currentPage=1;
//		}//end if
//		startNum=currentPage*pageScale-pageScale+1;
//		
//		return startNum;
//	}//startNum
//	
//	//끝번호 
//	public int endNum(int startNum , int pageScale) {
//		int endNum=startNum+pageScale-1;
//		return endNum;
//	}
	
	
	//베스트5개
	public List<SearchDomain> searchBestFive(){
		
		List<SearchDomain> list = searchDAO.selectBestFive();
		
		return list;
	}
	public static void main(String[] args) {
		
		
		SearchVO sVO =new SearchVO();
		sVO.setName("g");
		SearchService ss =new SearchService();
		System.out.println(ss.TotalCnt(sVO));
		 
		
		
	}
	
	
}//class
