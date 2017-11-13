package hallEstimate.model;

import java.util.*;

public class HalleDTO {

	private int idx;
	private String hall_name;
	private String hall_type;
	private String gestalt;
	private String guest;
	private String interval;
	private String hall_product;
	private String hall_price;
	private String hall_note;
	private String hall_content;
	private String meal;
	private String meal_price;
	private String meal_content;
	private String drink_type;
	private String drink_price;
	private int volume;
	
	
	
	public HalleDTO(){
		super();
	}



	public HalleDTO(int idx, String hall_name, String hall_type, String gestalt, String guest, String interval,
			String hall_product, String hall_price, String hall_note, String hall_content, String meal,
			String meal_price, String meal_content, String drink_type, String drink_price, int volume) {
		super();
		this.idx = idx;
		this.hall_name = hall_name;
		this.hall_type = hall_type;
		this.gestalt = gestalt;
		this.guest = guest;
		this.interval = interval;
		this.hall_product = hall_product;
		this.hall_price = hall_price;
		this.hall_note = hall_note;
		this.hall_content = hall_content;
		this.meal = meal;
		this.meal_price = meal_price;
		this.meal_content = meal_content;
		this.drink_type = drink_type;
		this.drink_price = drink_price;
		this.volume = volume;
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



	public String getHall_type() {
		return hall_type;
	}



	public void setHall_type(String hall_type) {
		this.hall_type = hall_type;
	}



	public String getGestalt() {
		return gestalt;
	}



	public void setGestalt(String gestalt) {
		this.gestalt = gestalt;
	}



	public String getGuest() {
		return guest;
	}



	public void setGuest(String guest) {
		this.guest = guest;
	}



	public String getInterval() {
		return interval;
	}



	public void setInterval(String interval) {
		this.interval = interval;
	}



	public String getHall_product() {
		return hall_product;
	}



	public void setHall_product(String hall_product) {
		this.hall_product = hall_product;
	}



	public String getHall_price() {
		return hall_price;
	}



	public void setHall_price(String hall_price) {
		this.hall_price = hall_price;
	}



	public String getHall_note() {
		return hall_note;
	}



	public void setHall_note(String hall_note) {
		this.hall_note = hall_note;
	}



	public String getHall_content() {
		return hall_content;
	}



	public void setHall_content(String hall_content) {
		this.hall_content = hall_content;
	}



	public String getMeal() {
		return meal;
	}



	public void setMeal(String meal) {
		this.meal = meal;
	}



	public String getMeal_price() {
		return meal_price;
	}



	public void setMeal_price(String meal_price) {
		this.meal_price = meal_price;
	}



	public String getMeal_content() {
		return meal_content;
	}



	public void setMeal_content(String meal_content) {
		this.meal_content = meal_content;
	}



	public String getDrink_type() {
		return drink_type;
	}



	public void setDrink_type(String drink_type) {
		this.drink_type = drink_type;
	}



	public String getDrink_price() {
		return drink_price;
	}



	public void setDrink_price(String drink_price) {
		this.drink_price = drink_price;
	}



	public int getVolume() {
		return volume;
	}



	public void setVolume(int volume) {
		this.volume = volume;
	}



}