package kr.co.mpnp.user.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.mpnp.user.domain.CartDomain;
import kr.co.mpnp.user.service.CartService;
import kr.co.mpnp.user.vo.CartVO;

@Controller
public class CartController {

	// 장바구니 리스트조회
	@RequestMapping(value="/cart_list.do",method=RequestMethod.GET)
	public String searchCartList(HttpSession session, Model model) {
		
		
		String id = (String)session.getAttribute("id");
		System.out.println("CartController : id - "+id);
		
		CartService cartService = new CartService(); 
		
		List<CartDomain> cartList = cartService.searchCartList("id002");
		//for(CartDomain cd : cartList) {
			//System.out.println("CartController : cartId - "+cd.getCartId());
			//System.out.println("갖고있나 ? CartController : productId - "+cd.getProductId());
		//}
		model.addAttribute("cartList",cartList);
		
		
		
		//return "/user/cart/cart_test";
		return "/user/cart/cart";
	}
	
	
	// 장바구니 삭제 단일값 X클릭  그냥 메서드하나로 하면 안되나??
	@ResponseBody
	@RequestMapping(value="/cart_remove_process.do",method=RequestMethod.GET)
	public String removeCart(HttpSession session, String cartId, Model model) {
									// 삭제되었는지도 보여줘야하니까 model이 있어야하나..?
		System.out.println("cartId : "+cartId);
		CartService cartService = new CartService(); 
		return cartService.removeCart(cartId);
		
	}
	
	
	// 장바구니 삭제 체크박스로 여러개 선택삭제
	// 돌겠네 그럼 보내기전에 선택된체크박스만 또 선별해야되는거잖아
	@ResponseBody
	@RequestMapping(value="/cart_chk_remove_process.do",method=RequestMethod.POST)
	public String removeCart(HttpSession session, @RequestParam(value="chkBox[]") List<String> chkArr, Model model) {
		// 삭제되었는지도 보여줘야하니까 model이 있어야하나..?
		//System.out.println("몇개체크됐나요 : "+chkArr.size());
		//for(String chk : chkArr) {
			//System.out.println("선택된거 잘 들어왔나 : "+chk);
		//}
		
		List<CartVO> list = new ArrayList<CartVO>();
		String id = "id002"; // session.getAttribute("id");
		CartVO cVO = null;
		for(String chk : chkArr) {
			cVO = new CartVO();
			cVO.setMemberId(id);
			cVO.setCartId(chk);
			//System.out.println("for문안에서 돌고있는 cVO : "+cVO.toString());
			list.add(cVO);
		}
		//System.out.println("만들어진 list 길이 : "+list.size());
		
		CartService cartService = new CartService(); 
		
		return cartService.removeChkCart(list);
	}
	
	
	
	

	// 장바구니 갯수변경
	// 장바구니 갯수는 버튼으로 처리한다쳐도 수정버튼이없는데 어떻게끌고 여기로 와??
	// 보류
	@ResponseBody
	@RequestMapping(value="/cart_modify_process.do",method=RequestMethod.POST)
	//public String modifyCartCnt(HttpSession session, @RequestBody CartVO cVO, Model model) {
	public String modifyCartCnt(HttpSession session, @RequestParam Map<String,String> cMap, Model model) {
		//System.out.println(cVO.getCartId());
		//System.out.println(cVO.getCnt());
		//System.out.println(cMap.get("cartId").getClass());
		//System.out.println(cMap.get("cnt"));
		//System.out.println("cartId : "+cMap.get("cartId"));
		//System.out.println("cnt : "+cMap.get("cnt"));
		
		String cartId = cMap.get("cartId");
		int cnt = Integer.parseInt(cMap.get("cnt"));
		CartVO cVO = new CartVO();
		//cVO.setMemberId((String)session.getAttribute("id"));
		cVO.setMemberId("id002");
		cVO.setCartId(cartId);
		cVO.setCnt(cnt);
		
		CartService cartService = new CartService();
		//return "";
		return cartService.modifyCartItemCnt(cVO);
	}
	
	
	
	
	
}
