package kr.co.mpnp.user.domain;

import java.sql.Date;
import java.util.List;

public class ReviewDomain {

//	- pfimg(프로필이미지),nick(닉네임),contents(내용), : String
//	- starscore(별점),reviewcnt(리뷰개수),starcnt(별점인원수) : int 
//	- staravg(평균) : double
//	-reviewimg : List<String>
//	- inputdate(등록일) : date
	
	private String pfimg,nick,contents;
	private int starscore,reviewcnt,starcnt;
	private double staravg;
	private List<String> reviewimg;
	private Date inputdate;
	public ReviewDomain() {
		
	}
	public ReviewDomain(String pfimg, String nick, String contents, int starscore, int reviewcnt, int starcnt,
			double staravg, List<String> reviewimg, Date inputdate) {
	
		this.pfimg = pfimg;
		this.nick = nick;
		this.contents = contents;
		this.starscore = starscore;
		this.reviewcnt = reviewcnt;
		this.starcnt = starcnt;
		this.staravg = staravg;
		this.reviewimg = reviewimg;
		this.inputdate = inputdate;
	}
	public String getPfimg() {
		return pfimg;
	}
	public void setPfimg(String pfimg) {
		this.pfimg = pfimg;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public int getStarscore() {
		return starscore;
	}
	public void setStarscore(int starscore) {
		this.starscore = starscore;
	}
	public int getReviewcnt() {
		return reviewcnt;
	}
	public void setReviewcnt(int reviewcnt) {
		this.reviewcnt = reviewcnt;
	}
	public int getStarcnt() {
		return starcnt;
	}
	public void setStarcnt(int starcnt) {
		this.starcnt = starcnt;
	}
	public double getStaravg() {
		return staravg;
	}
	public void setStaravg(double staravg) {
		this.staravg = staravg;
	}
	public List<String> getReviewimg() {
		return reviewimg;
	}
	public void setReviewimg(List<String> reviewimg) {
		this.reviewimg = reviewimg;
	}
	public Date getInputdate() {
		return inputdate;
	}
	public void setInputdate(Date inputdate) {
		this.inputdate = inputdate;
	}
	@Override
	public String toString() {
		return "ReviewDomain [pfimg=" + pfimg + ", nick=" + nick + ", contents=" + contents + ", starscore=" + starscore
				+ ", reviewcnt=" + reviewcnt + ", starcnt=" + starcnt + ", staravg=" + staravg + ", reviewimg="
				+ reviewimg + ", inputdate=" + inputdate + "]";
	}
	
	
	
}//class
