package be.model;

public class ShoesDTO {

	
	private int shoes_idx;
	private String shoes_name;
	private String shoes_be;
	private String shoes_thumbnail;
	private String shoes_size;
	private String shoes_heel;
	private String shoes_material;
	private String shoes_img;
	private String shoes_detail;
	private int readnum;
	private int consult;
	private String admin_permission;
	
	public ShoesDTO() {
		// TODO Auto-generated constructor stub
	}

	public ShoesDTO(int shoes_idx, String shoes_name, String shoes_be, String shoes_thumbnail, String shoes_size,
			String shoes_heel, String shoes_material, String shoes_img, String shoes_detail, int readnum, int consult,
			String admin_permission) {
		super();
		this.shoes_idx = shoes_idx;
		this.shoes_name = shoes_name;
		this.shoes_be = shoes_be;
		this.shoes_thumbnail = shoes_thumbnail;
		this.shoes_size = shoes_size;
		this.shoes_heel = shoes_heel;
		this.shoes_material = shoes_material;
		this.shoes_img = shoes_img;
		this.shoes_detail = shoes_detail;
		this.readnum = readnum;
		this.consult = consult;
		this.admin_permission = admin_permission;
	}

	public int getShoes_idx() {
		return shoes_idx;
	}

	public void setShoes_idx(int shoes_idx) {
		this.shoes_idx = shoes_idx;
	}

	public String getShoes_name() {
		return shoes_name;
	}

	public void setShoes_name(String shoes_name) {
		this.shoes_name = shoes_name;
	}

	public String getShoes_be() {
		return shoes_be;
	}

	public void setShoes_be(String shoes_be) {
		this.shoes_be = shoes_be;
	}

	public String getShoes_thumbnail() {
		return shoes_thumbnail;
	}

	public void setShoes_thumbnail(String shoes_thumbnail) {
		this.shoes_thumbnail = shoes_thumbnail;
	}

	public String getShoes_size() {
		return shoes_size;
	}

	public void setShoes_size(String shoes_size) {
		this.shoes_size = shoes_size;
	}

	public String getShoes_heel() {
		return shoes_heel;
	}

	public void setShoes_heel(String shoes_heel) {
		this.shoes_heel = shoes_heel;
	}

	public String getShoes_material() {
		return shoes_material;
	}

	public void setShoes_material(String shoes_material) {
		this.shoes_material = shoes_material;
	}

	public String getShoes_img() {
		return shoes_img;
	}

	public void setShoes_img(String shoes_img) {
		this.shoes_img = shoes_img;
	}

	public String getShoes_detail() {
		return shoes_detail;
	}

	public void setShoes_detail(String shoes_detail) {
		this.shoes_detail = shoes_detail;
	}

	public int getReadnum() {
		return readnum;
	}

	public void setReadnum(int readnum) {
		this.readnum = readnum;
	}

	public int getConsult() {
		return consult;
	}

	public void setConsult(int consult) {
		this.consult = consult;
	}

	public String getAdmin_permission() {
		return admin_permission;
	}

	public void setAdmin_permission(String admin_permission) {
		this.admin_permission = admin_permission;
	}

	
	
	
}
