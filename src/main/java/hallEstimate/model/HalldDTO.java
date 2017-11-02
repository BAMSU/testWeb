package hallEstimate.model;

public class HalldDTO {
	
	private int idx;
	private String drink_type;
	private String price;
	private String hall_idx;
	public HalldDTO() {
		super();
	}
	public HalldDTO(int idx, String drink_type, String price, String hall_idx) {
		super();
		this.idx = idx;
		this.drink_type = drink_type;
		this.price = price;
		this.hall_idx = hall_idx;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getDrink_type() {
		return drink_type;
	}
	public void setDrink_type(String drink_type) {
		this.drink_type = drink_type;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getHall_idx() {
		return hall_idx;
	}
	public void setHall_idx(String hall_idx) {
		this.hall_idx = hall_idx;
	}
	
	

}
