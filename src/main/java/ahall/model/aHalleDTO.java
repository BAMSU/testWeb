package ahall.model;

import java.util.*;

public class aHalleDTO {

	private int idx;
	private String hall_name;
	private int hall_idx;
	private int est_guest;
	private int hall_price1; 
	private String hall_content;
	private int ourfit_price;
	private String meal;
	private String meal_1; 
	private int meal_price;
	private int meal_price2;
	private String meal_content; 
	private String meal_content2;
	
	
	
	public aHalleDTO(){
		super();
	}



	public aHalleDTO(int idx, String hall_name, int hall_idx, int est_guest, int hall_price1, String hall_content,
			int ourfit_price, String meal, String meal_1, int meal_price, int meal_price2, String meal_content,
			String meal_content2) {
		super();
		this.idx = idx;
		this.hall_name = hall_name;
		this.hall_idx = hall_idx;
		this.est_guest = est_guest;
		this.hall_price1 = hall_price1;
		this.hall_content = hall_content;
		this.ourfit_price = ourfit_price;
		this.meal = meal;
		this.meal_1 = meal_1;
		this.meal_price = meal_price;
		this.meal_price2 = meal_price2;
		this.meal_content = meal_content;
		this.meal_content2 = meal_content2;
	}



	public int getIdx() {
		return idx;
	}



	public void setIdx(int idx) {
		this.idx = idx;
	}



	public String getHall_name() {
		return hall_name;
	}



	public void setHall_name(String hall_name) {
		this.hall_name = hall_name;
	}



	public int getHall_idx() {
		return hall_idx;
	}



	public void setHall_idx(int hall_idx) {
		this.hall_idx = hall_idx;
	}



	public int getEst_guest() {
		return est_guest;
	}



	public void setEst_guest(int est_guest) {
		this.est_guest = est_guest;
	}



	public int getHall_price1() {
		return hall_price1;
	}



	public void setHall_price1(int hall_price1) {
		this.hall_price1 = hall_price1;
	}



	public String getHall_content() {
		return hall_content;
	}



	public void setHall_content(String hall_content) {
		this.hall_content = hall_content;
	}



	public int getOurfit_price() {
		return ourfit_price;
	}



	public void setOurfit_price(int ourfit_price) {
		this.ourfit_price = ourfit_price;
	}



	public String getMeal() {
		return meal;
	}



	public void setMeal(String meal) {
		this.meal = meal;
	}



	public String getMeal_1() {
		return meal_1;
	}



	public void setMeal_1(String meal_1) {
		this.meal_1 = meal_1;
	}



	public int getMeal_price() {
		return meal_price;
	}



	public void setMeal_price(int meal_price) {
		this.meal_price = meal_price;
	}



	public int getMeal_price2() {
		return meal_price2;
	}



	public void setMeal_price2(int meal_price2) {
		this.meal_price2 = meal_price2;
	}



	public String getMeal_content() {
		return meal_content;
	}



	public void setMeal_content(String meal_content) {
		this.meal_content = meal_content;
	}



	public String getMeal_content2() {
		return meal_content2;
	}



	public void setMeal_content2(String meal_content2) {
		this.meal_content2 = meal_content2;
	}
	
	

}