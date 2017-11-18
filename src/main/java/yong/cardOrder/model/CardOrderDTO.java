package yong.cardOrder.model;

public class CardOrderDTO {
	private int o_idx;
	private String o_id;
	private int o_code;
	private String o_name;
	private String o_phone;
	private String o_addr;
	private String o_memo;
	private String o_env;
	private String o_option;
	private int o_count ;
	private int o_sale ;
	private int o_plus ;
	private int o_price  ;
	private String o_img  ;
	private String ect;
	
	public CardOrderDTO() {
	}

	public CardOrderDTO(int o_idx, String o_id, int o_code, String o_name, String o_phone, String o_addr, String o_memo,
			String o_env, String o_option, int o_count, int o_sale, int o_plus, int o_price, String o_img, String ect) {
		super();
		this.o_idx = o_idx;
		this.o_id = o_id;
		this.o_code = o_code;
		this.o_name = o_name;
		this.o_phone = o_phone;
		this.o_addr = o_addr;
		this.o_memo = o_memo;
		this.o_env = o_env;
		this.o_option = o_option;
		this.o_count = o_count;
		this.o_sale = o_sale;
		this.o_plus = o_plus;
		this.o_price = o_price;
		this.o_img = o_img;
		this.ect = ect;
	}

	public int getO_idx() {
		return o_idx;
	}

	public void setO_idx(int o_idx) {
		this.o_idx = o_idx;
	}

	public String getO_id() {
		return o_id;
	}

	public void setO_id(String o_id) {
		this.o_id = o_id;
	}

	public int getO_code() {
		return o_code;
	}

	public void setO_code(int o_code) {
		this.o_code = o_code;
	}

	public String getO_name() {
		return o_name;
	}

	public void setO_name(String o_name) {
		this.o_name = o_name;
	}

	public String getO_phone() {
		return o_phone;
	}

	public void setO_phone(String o_phone) {
		this.o_phone = o_phone;
	}

	public String getO_addr() {
		return o_addr;
	}

	public void setO_addr(String o_addr) {
		this.o_addr = o_addr;
	}

	public String getO_memo() {
		return o_memo;
	}

	public void setO_memo(String o_memo) {
		this.o_memo = o_memo;
	}

	public String getO_env() {
		return o_env;
	}

	public void setO_env(String o_env) {
		this.o_env = o_env;
	}

	public String getO_option() {
		return o_option;
	}

	public void setO_option(String o_option) {
		this.o_option = o_option;
	}

	public int getO_count() {
		return o_count;
	}

	public void setO_count(int o_count) {
		this.o_count = o_count;
	}

	public int getO_sale() {
		return o_sale;
	}

	public void setO_sale(int o_sale) {
		this.o_sale = o_sale;
	}

	public int getO_plus() {
		return o_plus;
	}

	public void setO_plus(int o_plus) {
		this.o_plus = o_plus;
	}

	public int getO_price() {
		return o_price;
	}

	public void setO_price(int o_price) {
		this.o_price = o_price;
	}

	public String getO_img() {
		return o_img;
	}

	public void setO_img(String o_img) {
		this.o_img = o_img;
	}

	public String getEct() {
		return ect;
	}

	public void setEct(String ect) {
		this.ect = ect;
	}

	
}
