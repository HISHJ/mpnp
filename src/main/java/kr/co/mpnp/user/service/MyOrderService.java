package kr.co.mpnp.user.service;

import java.util.List;

import kr.co.mpnp.user.domain.MyOrderDomain;
import kr.co.mpnp.user.vo.MyOrderVO;
//설빈
public class MyOrderService {
	public MyOrderService() {

	}//

	// 기간별 주문내역조회
	public List<MyOrderDomain> searchOrderList(MyOrderVO moVO) {
		List<MyOrderDomain> list = null;

		return list;
	}// searchOrderList

	// 주문내역 상세조회
	public MyOrderDomain searchOrderDetail(String id, String orID) {
		MyOrderDomain moDom = null;

		return moDom;
	}// searchOrderDetail

	// 기간별 주문상태조회
	public int searchOrderStatusCnt(MyOrderVO moVO) {
		int cnt = 0;

		return cnt;
	}// searchOrderStatusCnt

	// 주문취소(아이디,주문코드)
	public int modifyOrderProcess(String id, String orID) {
		int cnt = 0;

		return cnt;
	}// modifyOrderProcess

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
