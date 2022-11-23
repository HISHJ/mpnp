package kr.co.mpnp.user.service;

import java.util.List;

import org.json.simple.JSONObject;

import kr.co.mpnp.user.dao.MyOrderDAO;
import kr.co.mpnp.user.domain.MyOrderDomain;
import kr.co.mpnp.user.vo.MyOrderVO;
//설빈
public class MyOrderService {
	MyOrderDAO oDAO = MyOrderDAO.getInstance();
	public MyOrderService() {

	}//

	// 기간별 주문내역조회
	public List<MyOrderDomain> searchOrderList(String id) {
		List<MyOrderDomain> list = null;
		
		MyOrderDAO oDAO =MyOrderDAO.getInstance();
		list = oDAO.selectOrderAList(id);

		return list;
	}// searchOrderList

	// 주문내역 상세조회
	public MyOrderDomain searchOrderDetail(String orID) {
		MyOrderDomain moDom = null;
		
		moDom = oDAO.selectOrderDetail(orID);
		

		return moDom;
	}// searchOrderDetail
	
	//주문상품 상세
	public List<MyOrderDomain> searchOrderPrdDetail(String orID){
		List<MyOrderDomain> list = null;
		
		list = oDAO.selectOrderPrdDetail(orID);
		
		return list;
	}
	
	//주문배송지 상세
	public MyOrderDomain searchOrderShip(String orID) {
		MyOrderDomain moDom = null;
		
		moDom = oDAO.selectOrderShip(orID);
		
		return moDom;
	}// searchOrderDetail
	
	
	

	// 주문상태조회
	public int[] searchOrderStatusCnt(String id) {
		int[] cnt  = {0,0,0};
		
		List<String> list = null;
		String[] staArr = {"주문완료","배송완료","구매확정"};
		
		
		//id= "id010";
		MyOrderDAO  oDAO =MyOrderDAO.getInstance();
		list = oDAO.selectOrderStatusCnt(id);
	
		
		for(String sta : list) {
			if(sta.equals(staArr[0])) {
				cnt[0]++;
			}else if(sta.equals(staArr[1])) {
				cnt[1]++;
			}else {
				cnt[2]++;
			}
		}//end for

		return cnt;
	}// searchOrderStatusCnt

	//주문 개별취소
	public String removeCancelIndivisual(String orDId) {
	
		MyOrderDAO moD = MyOrderDAO.getInstance();
		
		JSONObject jsonObject = new JSONObject();
		boolean removeFlag =moD.deleteCancelIndivisual(orDId)==1?true:false;
		jsonObject.put("removeFlag", removeFlag);
		
		return jsonObject.toString();
	}//end 
	
	//주문 전체취소
	public String removeCancelTotal(String orDId) {
		
		MyOrderDAO moD = MyOrderDAO.getInstance();
		JSONObject jsonObject = new JSONObject();
	    boolean removeFlag = moD.deleteCancelTotal(orDId)==1?true:false;
	    jsonObject.put("removeFlag", removeFlag);
	    System.out.println("마이오더서비스@@@@:" +removeFlag);
		return jsonObject.toString();
	}//end 
	
	//상품 총가격
	
	//상품 총가격
	public int searchPriceIndivisual(String orId) {
		int price =0;
		
		MyOrderDAO moD = MyOrderDAO.getInstance();
		price= moD.selectPriceIndivisual(orId);
		
		return price; 
		
	}//
	
	//총 결제금액
	public int selectPriceTotal(String orId) {
		int price =0;
		
		MyOrderDAO moD = MyOrderDAO.getInstance();
		int prdPrice = moD.selectPriceIndivisual(orId);
		int actualprice= moD.selectPriceTotal(orId);
		price =actualprice - prdPrice;
		
		return price; 
		
	}//
	
	//할인율 구하기
	public int selectDiscountRate(String id) {
		int discountRate =0;
		
		MyOrderDAO moD = MyOrderDAO.getInstance();
		discountRate = moD.selectDiscountRate(id);
		;
		
		
		return discountRate;
		
	}
	
	
	

	//////////////////////////////////////////////// 페이징////////////////////////////
	// 전체 게시물수(왜 adminProductVO?)
	public int totalCount(MyOrderVO moVO) {
		int totalCnt = 0;

		return totalCnt;
	}// totalCount

	// 한 화면에 n개씩 보여줄 총 페이지 수(totalcount,pageCale)
	public int totalPage(MyOrderVO moVO) {
		int totalPage = 0;

		return totalPage;

	}// totalPage

	// 시작번호(현재페이지(currentPage), 한화면에 보여줄 페이지 수(pageScale))
	public int startNum(MyOrderVO moVO) {
		int startNum = 0;

		return startNum;
	} // startNum

	// 끝번호(시작번호(startnum),한화면에 보여질 수(pagescale)
	public int endNum(MyOrderVO moVO) {
		int endNum = 0;

		return endNum;

	}// endNum

}// class
