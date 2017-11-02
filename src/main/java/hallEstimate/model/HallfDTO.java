package hallEstimate.model;

public class HallfDTO {
	
	private int idx;
	private String product;
	private String price;
	private String note;
	private String content;
	public HallfDTO() {
		super();
	}
	public HallfDTO(int idx, String product, String price, String note, String content) {
		super();
		this.idx = idx;
		this.product = product;
		this.price = price;
		this.note = note;
		this.content = content;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getProduct() {
		return product;
	}
	public void setProduct(String product) {
		this.product = product;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
}
