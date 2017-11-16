package be.model; 

public class BouqDTO {

		private int bouq_idx;
		private String bouq_name;
		private String bouq_be;
		private String bouq_thumbnail;
		private String bouq_simple;
		private String bouq_price;
		private String bouq_detail;
		private int readnum;
		private int consult;
		private String admin_permission;
		private int gubun;
		
		public BouqDTO() {
			// TODO Auto-generated constructor stub
		}

		public BouqDTO(int bouq_idx, String bouq_name, String bouq_be, String bouq_thumbnail, String bouq_simple,
				String bouq_price, String bouq_detail, int readnum, int consult, String admin_permission, int gubun) {
			super();
			this.bouq_idx = bouq_idx;
			this.bouq_name = bouq_name;
			this.bouq_be = bouq_be;
			this.bouq_thumbnail = bouq_thumbnail;
			this.bouq_simple = bouq_simple;
			this.bouq_price = bouq_price;
			this.bouq_detail = bouq_detail;
			this.readnum = readnum;
			this.consult = consult;
			this.admin_permission = admin_permission;
			this.gubun = gubun;
		}

		public int getBouq_idx() {
			return bouq_idx;
		}

		public void setBouq_idx(int bouq_idx) {
			this.bouq_idx = bouq_idx;
		}

		public String getBouq_name() {
			return bouq_name;
		}

		public void setBouq_name(String bouq_name) {
			this.bouq_name = bouq_name;
		}

		public String getBouq_be() {
			return bouq_be;
		}

		public void setBouq_be(String bouq_be) {
			this.bouq_be = bouq_be;
		}

		public String getBouq_thumbnail() {
			return bouq_thumbnail;
		}

		public void setBouq_thumbnail(String bouq_thumbnail) {
			this.bouq_thumbnail = bouq_thumbnail;
		}

		public String getBouq_simple() {
			return bouq_simple;
		}

		public void setBouq_simple(String bouq_simple) {
			this.bouq_simple = bouq_simple;
		}

		public String getBouq_price() {
			return bouq_price;
		}

		public void setBouq_price(String bouq_price) {
			this.bouq_price = bouq_price;
		}

		public String getBouq_detail() {
			return bouq_detail;
		}

		public void setBouq_detail(String bouq_detail) {
			this.bouq_detail = bouq_detail;
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

		public int getGubun() {
			return gubun;
		}

		public void setGubun(int gubun) {
			this.gubun = gubun;
		}
		
		
		
		
		
	

	
}
