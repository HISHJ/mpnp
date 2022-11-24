package kr.co.mpnp.admin.vo;

import java.sql.Date;
import java.util.List;

public class AdminProductVO {

	private String productid,sub_id,main_id,subname,mainname,name,th_img,info_img,status;
	private int price;
	private List<String> prdimg;
	private Date inputdate;
	public AdminProductVO() {
	
	}
	public AdminProductVO(String productid, String sub_id, String main_id, String subname, String mainname,
			String name, String th_img, String info_img, String status, int price, List<String> prdimg,
			Date inputdate) {

		this.productid = productid;
		this.sub_id = sub_id;
		this.main_id = main_id;
		this.subname = subname;
		this.mainname = mainname;
		this.name = name;
		this.th_img = th_img;
		this.info_img = info_img;
		this.status = status;
		this.price = price;
		this.prdimg = prdimg;
		this.inputdate = inputdate;
	}
	public String getProductid() {
		return productid;
	}
	public void setProductid(String productid) {
		this.productid = productid;
	}
	public String getsub_id() {
		return sub_id;
	}
	public void setsub_id(String sub_id) {
		this.sub_id = sub_id;
	}
	public String getmain_id() {
		return main_id;
	}
	public void setmain_id(String main_id) {
		this.main_id = main_id;
	}
	public String getSubname() {
		return subname;
	}
	public void setSubname(String subname) {
		this.subname = subname;
	}
	public String getMainname() {
		return mainname;
	}
	public void setMainname(String mainname) {
		this.mainname = mainname;
	}
	public String getname() {
		return name;
	}
	public void setname(String name) {
		this.name = name;
	}
	public String getth_img() {
		return th_img;
	}
	public void setth_img(String th_img) {
		this.th_img = th_img;
	}
	public String getinfo_img() {
		return info_img;
	}
	public void setinfo_img(String info_img) {
		this.info_img = info_img;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public List<String> getPrdimg() {
		return prdimg;
	}
	public void setPrdimg(List<String> prdimg) {
		this.prdimg = prdimg;
	}
	public Date getInputdate() {
		return inputdate;
	}
	public void setInputdate(Date inputdate) {
		this.inputdate = inputdate;
	}
	@Override
	public String toString() {
		return "AdminProductVO [productid=" + productid + ", sub_id=" + sub_id + ", main_id=" + main_id + ", subname="
				+ subname + ", mainname=" + mainname + ", name=" + name + ", th_img=" + th_img
				+ ", info_img=" + info_img + ", status=" + status + ", price=" + price + ", prdimg=" + prdimg
				+ ", inputdate=" + inputdate + "]";
	}
	
	
}//class
