package be.model;

public class CarDTO {

	
	private int car_idx;
	private String car_name;
	private String car_be;
	private String car_price;
	private String car_img;
	private String car_detail;
	private int car_readnum;
	private int car_consult;
	private String admin_permission;
	
	public CarDTO() {
		// TODO Auto-generated constructor stub
	}

	public CarDTO(int car_idx, String car_name, String car_be, String car_price, String car_img, String car_detail,
			int car_readnum, int car_consult, String admin_permission) {
		super();
		this.car_idx = car_idx;
		this.car_name = car_name;
		this.car_be = car_be;
		this.car_price = car_price;
		this.car_img = car_img;
		this.car_detail = car_detail;
		this.car_readnum = car_readnum;
		this.car_consult = car_consult;
		this.admin_permission = admin_permission;
	}

	public int getCar_idx() {
		return car_idx;
	}

	public void setCar_idx(int car_idx) {
		this.car_idx = car_idx;
	}

	public String getCar_name() {
		return car_name;
	}

	public void setCar_name(String car_name) {
		this.car_name = car_name;
	}

	public String getCar_be() {
		return car_be;
	}

	public void setCar_be(String car_be) {
		this.car_be = car_be;
	}

	public String getCar_price() {
		return car_price;
	}

	public void setCar_price(String car_price) {
		this.car_price = car_price;
	}

	public String getCar_img() {
		return car_img;
	}

	public void setCar_img(String car_img) {
		this.car_img = car_img;
	}

	public String getCar_detail() {
		return car_detail;
	}

	public void setCar_detail(String car_detail) {
		this.car_detail = car_detail;
	}

	public int getCar_readnum() {
		return car_readnum;
	}

	public void setCar_readnum(int car_readnum) {
		this.car_readnum = car_readnum;
	}

	public int getCar_consult() {
		return car_consult;
	}

	public void setCar_consult(int car_consult) {
		this.car_consult = car_consult;
	}

	public String getAdmin_permission() {
		return admin_permission;
	}

	public void setAdmin_permission(String admin_permission) {
		this.admin_permission = admin_permission;
	}
	
}
