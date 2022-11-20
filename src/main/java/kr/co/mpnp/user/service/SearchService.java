package kr.co.mpnp.user.service;

import java.util.ArrayList;
import java.util.List;

import kr.co.mpnp.user.dao.SearchDAO;
import kr.co.mpnp.user.domain.SearchDomain;

public class SearchService {

	SearchDAO searchDAO = SearchDAO.getInstance();
	
	//검색결과
	public List<SearchDomain> searchProduct(String productname){
		
		List<SearchDomain> list = searchDAO.selectProduct(productname);
	
		
		
		return list;
	}
	
	//검색결과 총 갯수
	public int TotalCnt(String productname) {
		int cnt=searchDAO.selectTotalCnt(productname);
		return cnt;
		
	}
	
	public int pageScale() {
		int pageScale=6;
		
		return pageScale;
	}
	
	
	//한페이지에 6개씩 보여줄 총 페이지 수
	public int totalPage(int TotalCnt,int pageScale) {
		int totalPage=0;
	
		
		totalPage=(int)Math.ceil((double)TotalCnt/pageScale);
		return totalPage;
	}
	//시작번호
	public int StartNum(int currentPage,int pageScale) {
		int startNum=1;
		
		if(currentPage<1) {
			currentPage=1;
		}//end if
		startNum=currentPage*pageScale-pageScale+1;
		
		return startNum;
	}//startNum
	
	//끝번호 
	public int endNum(int startNum , int pageScale) {
		int endNum=startNum+pageScale-1;
		return endNum;
	}
	
	
	//베스트5개
	public List<SearchDomain> searchBestFive(){
		
		List<SearchDomain> list = searchDAO.selectBestFive();
		
		return list;
	}
	
	
	
}//class
