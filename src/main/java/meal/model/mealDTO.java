package meal.model;

public class mealDTO {
	private int idx;
	private String meal;
	private String price;
	private String content;
	public mealDTO() {
		super();
	}
	public mealDTO(int idx, String meal, String price, String content) {
		super();
		this.idx = idx;
		this.meal = meal;
		this.price = price;
		this.content = content;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getMeal() {
		return meal;
	}
	public void setMeal(String meal) {
		this.meal = meal;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
}
