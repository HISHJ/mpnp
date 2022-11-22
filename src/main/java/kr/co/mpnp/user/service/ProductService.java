package kr.co.mpnp.user.service;


import java.util.List;

import kr.co.mpnp.user.dao.ProductDAO;
import kr.co.mpnp.user.domain.ProductDomain;
import kr.co.mpnp.user.domain.WishDomain;
import kr.co.mpnp.user.vo.ProductCartVO;

	
public class ProductService {

	ProductDAO pDAO = ProductDAO.getInstance();

	//상품상세보기
	public ProductDomain  searchPrdDetail(String productid) {
		
		ProductDomain pd=pDAO.selectPrdDetail(productid);
		return pd;
	}//
	
	
	//상품 중분류
	public List<ProductDomain> searchPrdList(String subid){
		List<ProductDomain> list = pDAO.selectprdList(subid);
		return list;
	}
	//상품총 갯수
	public int searchPrdCnt (String subid) {
		int cnt=pDAO.selectprdCnt(subid);
		
		
		return cnt;
		
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
		
		//찜 데이터 체크
		int check=pDAO.checkWish(cVO);
		//찜 삭제
	
		if(check!=0){	//찜에 이미 들어있는경우 2로반환
			return 2;
		}
		//장바구니 등록&에러시 0반환
		try {//장바구니에 등록완료 =>1
			return pDAO.insertWishList(cVO);
		}catch(Exception e) { //에러==>0
			return 0;
		}
		
		
	}//addCart
	

	
	public static void main(String[] args) {
	ProductService ps=new ProductService();	
	ProductCartVO	cVO= new ProductCartVO();
			cVO.setId("id010");
			cVO.setProductid("p0001");
			
		
			
			int result=ps.addWish(cVO);
			//int check=ps.addCart(cVO);
			System.out.println("result : "+result);
			//System.out.println("result : "+check);
			
		
	}

	

}//class

