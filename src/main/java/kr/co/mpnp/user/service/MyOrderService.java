package kr.co.mpnp.user.service;

import java.sql.SQLException;
import java.util.List;

import org.json.simple.JSONArray;
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
	public List<MyOrderDomain> searchOrderList(MyOrderVO mvo) {
		List<MyOrderDomain> list = null;
		
		MyOrderDAO oDAO =MyOrderDAO.getInstance();
		list = oDAO.selectOrderAList(mvo);

		return list;
	}// searchOrderList
	
	//기간별 선택 날짜 기간 조회
	public String searchDate(MyOrderVO mvo) {
		//조상
		JSONObject jsonOrder = new JSONObject();
		boolean resultFalg = false;
		MyOrderDAO mDAO = MyOrderDAO.getInstance();
		List<MyOrderDomain> list = mDAO.selectOrderAList(mvo);
		//손자
		JSONObject jsonTemp = null;
		//부모
		JSONArray jsonArr = new JSONArray();
		
		for(MyOrderDomain mod : list) {
			jsonTemp = new JSONObject();
			//db조회결과를 jsonObject에 할당
			jsonTemp.put("orderId",mod.getOrderId());
			jsonTemp.put("inputDateS",mod.getInputDateS());
			jsonTemp.put("status",mod.getStatus());
			jsonTemp.put("prdPrice",mod.getPrdPrice());
			jsonTemp.put("totalCnt",mod.getTotalCnt());
			jsonTemp.put("prdName",mod.getPrdName());
			jsonTemp.put("thImg",mod.getThImg());
			jsonTemp.put("orDetailId",mod.getOrDetailId());
			//값을  가진 jsonObject를 array에 할당
			jsonArr.add(jsonTemp);
			
		}//end for
		//모든 조회결과를 가진 jsonArray를 jsonObject에 저장
		jsonOrder.put("orderDate", jsonArr);
		jsonOrder.put("resultFalg", !resultFalg);
		jsonOrder.put("findStartDate", mvo.getFindStartDate());		
		jsonOrder.put("findEndDate", mvo.getFindEndDate());		
		jsonOrder.put("findMemberID", mvo.getId());		
	
		return jsonOrder.toJSONString();
		
	}// searchDate

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
		
		
		
		return discountRate;
		
	}
	
	
	

	//////////////////////////////////////////////// 페이징////////////////////////////
	// 전체 게시물수(왜 adminProductVO?)
	public int totalCount(MyOrderVO moVO) {
		int totalCnt =oDAO.selectTotalPageCount(moVO);

		return totalCnt;
	}// totalCount
	
	//마지막 페이지 수
	public int lastPage(int totalCount) {
		int lastPage=(int)Math.ceil((double) totalCount /4);
		
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
	

}// class
