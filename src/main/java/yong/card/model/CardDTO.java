package yong.card.model;

import java.sql.Date;

public class CardDTO {
	private int card_idx;
	private int card_code;
	private String card_name;
	private String card_img;
	private int card_price;
	private int card_count;
	private Date card_date;
	private String etc;
	
	public CardDTO() {
		super();
	}

	public CardDTO(int card_idx, int card_code, String card_name, String card_img, int card_price, int card_count,
			Date card_date, String etc) {
		super();
		this.card_idx = card_idx;
		this.card_code = card_code;
		this.card_name = card_name;
		this.card_img = card_img;
		this.card_price = card_price;
		this.card_count = card_count;
		this.card_date = card_date;
		this.etc = etc;
	}

	public int getCard_idx() {
		return card_idx;
	}

	public void setCard_idx(int card_idx) {
		this.card_idx = card_idx;
	}

	public int getCard_code() {
		return card_code;
	}

	public void setCard_code(int card_code) {
		this.card_code = card_code;
	}

	public String getCard_name() {
		return card_name;
	}

	public void setCard_name(String card_name) {
		this.card_name = card_name;
	}

	public String getCard_img() {
		return card_img;
	}

	public void setCard_img(String card_img) {
		this.card_img = card_img;
	}

	public int getCard_price() {
		return card_price;
	}

	public void setCard_price(int card_price) {
		this.card_price = card_price;
	}

	public int getCard_count() {
		return card_count;
	}

	public void setCard_count(int card_count) {
		this.card_count = card_count;
	}

	public Date getCard_date() {
		return card_date;
	}

	public void setCard_date(Date card_date) {
		this.card_date = card_date;
	}

	public String getEtc() {
		return etc;
	}

	public void setEtc(String etc) {
		this.etc = etc;
	}
	
	
}
