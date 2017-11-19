package consult.model;

import java.sql.Date;

public class ConsultDTO {



	private int consult_idx;
	private String name;
	private String gender;
	private String tel1,tel2,tel3;
	private String email,email2;
	private String reservation;
	private String context;
	private String available;
	private String tel;
	private int gubun;
	private int gubun2;
	private int review_ok;
	
	
	
	public ConsultDTO() {
		super();
	}



	public ConsultDTO(int consult_idx, String name, String gender, String tel1, String tel2, String tel3, String email,
			String email2, String reservation, String context, String available, String tel, int gubun, int gubun2,
			int review_ok) {
		super();
		this.consult_idx = consult_idx;
		this.name = name;
		this.gender = gender;
		this.tel1 = tel1;
		this.tel2 = tel2;
		this.tel3 = tel3;
		this.email = email;
		this.email2 = email2;
		this.reservation = reservation;
		this.context = context;
		this.available = available;
		this.tel = tel;
		this.gubun = gubun;
		this.gubun2 = gubun2;
		this.review_ok = review_ok;
	}



	public int getConsult_idx() {
		return consult_idx;
	}



	public void setConsult_idx(int consult_idx) {
		this.consult_idx = consult_idx;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getGender() {
		return gender;
	}



	public void setGender(String gender) {
		this.gender = gender;
	}



	public String getTel1() {
		return tel1;
	}



	public void setTel1(String tel1) {
		this.tel1 = tel1;
	}



	public String getTel2() {
		return tel2;
	}



	public void setTel2(String tel2) {
		this.tel2 = tel2;
	}



	public String getTel3() {
		return tel3;
	}



	public void setTel3(String tel3) {
		this.tel3 = tel3;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getEmail2() {
		return email2;
	}



	public void setEmail2(String email2) {
		this.email2 = email2;
	}



	public String getReservation() {
		return reservation;
	}



	public void setReservation(String reservation) {
		this.reservation = reservation;
	}



	public String getContext() {
		return context;
	}



	public void setContext(String context) {
		this.context = context;
	}



	public String getAvailable() {
		return available;
	}



	public void setAvailable(String available) {
		this.available = available;
	}



	public String getTel() {
		return tel;
	}



	public void setTel(String tel) {
		this.tel = tel;
	}



	public int getGubun() {
		return gubun;
	}



	public void setGubun(int gubun) {
		this.gubun = gubun;
	}



	public int getGubun2() {
		return gubun2;
	}



	public void setGubun2(int gubun2) {
		this.gubun2 = gubun2;
	}



	public int getReview_ok() {
		return review_ok;
	}



	public void setReview_ok(int review_ok) {
		this.review_ok = review_ok;
	}
	


	


}
