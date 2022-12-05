package study.j1116h;

public class ProductVO {
	private String product;
	private int price;
	private int su;
	private int kumaek;
	private String sw;
	
	public ProductVO(String product, int price, int su, int kumaek, String sw) {
		this.product = product;
		this.price = price;
		this.su = su;
		this.kumaek = kumaek;
		this.sw = sw;
	}
	
	public String getProduct() {
		return product;
	}
	public void setProduct(String product) {
		this.product = product;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getSu() {
		return su;
	}
	public void setSu(int su) {
		this.su = su;
	}
	public int getKumaek() {
		return kumaek;
	}
	public void setKumaek(int kumaek) {
		this.kumaek = kumaek;
	}
	public String getSw() {
		return sw;
	}
	public void setSw(String sw) {
		this.sw = sw;
	}
	@Override
	public String toString() {
		return "ProductVO [product=" + product + ", price=" + price + ", su=" + su + ", kumaek=" + kumaek + ", sw=" + sw
				+ "]";
	}
}
