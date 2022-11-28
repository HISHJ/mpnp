package kr.co.mpnp.user.service;


import java.util.List;

import org.json.simple.JSONObject;

import kr.co.mpnp.user.dao.ProductDAO;
import kr.co.mpnp.user.domain.ProductDomain;
import kr.co.mpnp.user.domain.WishDomain;
import kr.co.mpnp.user.vo.ProductCartVO;
import kr.co.mpnp.user.vo.ProductVO;
import kr.co.mpnp.user.vo.WishListVO;

	
public class ProductService {

	ProductDAO pDAO = ProductDAO.getInstance();

	//상품상세보기
	public ProductDomain  searchPrdDetail(String productid) {
		
		ProductDomain pd=pDAO.selectPrdDetail(productid);
		return pd;
	}//
	
	
	//상품 중분류
	public List<ProductDomain> searchPrdList(ProductVO pVO){
		List<ProductDomain> list = pDAO.selectprdList(pVO);
		return list;
	}
	
	//상품이미지
	public List<ProductDomain> searchPrdImg(String productid){
		List<ProductDomain> list=pDAO.selectPrdImg(productid);
		return list;
	}
	
	//상품총 갯수
	public int searchPrdCnt (ProductVO pVO) {
		int cnt=pDAO.selectprdCnt(pVO);
		
		
		return cnt;
		
	}
	
	//페이징
	
	
	//마지막 페이지 수
	public int lastPage(int searchPrdCnt) {
		int lastPage=(int)Math.ceil((double) searchPrdCnt /8);
		
		return lastPage;
	}
	
	//현재페이지 시작번호
	public int startNum(int curPage) {
		int startNum=curPage-(curPage-1)%3;
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

	
	
	//장바구니 추가
	public int addCart(ProductCartVO cVO) {
		
		//장바구니 데이터 체크
		int check=pDAO.checkCart(cVO);
		if(check!=0){	//장바구니에 이미 들어있는경우 2로반환
			return 2;
		}
		//장바구니 등록&에러시 0반환
		try {//장바구니에 등록완료 =>1
			return pDAO.insertCart(cVO);
		}catch(Exception e) { //에러==>0
			return 0;
		}
	

	}//addCart
	
	//찜추가
	public int addWish(ProductCartVO cVO) {
		int addWish=pDAO.insertWishList(cVO);
		
		return addWish;
			
	}//addCart
	
	//찜여부 확인
	public int checkWish(WishListVO wVO) {
		int check=pDAO.selectcheckWish(wVO);
		
		return check;
	}
	

	
	
	

}//class

