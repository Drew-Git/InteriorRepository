package kr.co.ots.dto;

public class CafeImageDTO {
	private String bnum;
	private String cafe_image;
	public String getBnum() {
		return bnum;
	}
	public void setBnum(String bnum) {
		this.bnum = bnum;
	}
	public String getCafe_image() {
		return cafe_image;
	}
	public void setCafe_image(String cafe_image) {
		this.cafe_image = cafe_image;
	}
	@Override
	public String toString() {
		return "CafeImageDTO [bnum=" + bnum + ", cafe_image=" + cafe_image + "]";
	}
	
}
