package ahall.model;

public class HBeDTO {
	private int be_idx;
	private String be_sort;
	private String be_name;
	private String be_license;
	
	private String be_rep_tell;
	private String incharge_name;
	private String incharge_email;
	private String incharge_tell;
	private String be_loc;
	private String be_size;
	private String be_park;
	private String be_empnum;
	private String be_consult;
	private String admin_permission;
	private String be_id;
	private String be_pwd;
	
	public HBeDTO() {
		super();
	}

	public HBeDTO(int be_idx, String be_sort, String be_name, String be_license, String be_rep_tell,
			String incharge_name, String incharge_email, String incharge_tell, String be_loc, String be_size,
			String be_park, String be_empnum, String be_consult, String admin_permission, String be_id, String be_pwd) {
		super();
		this.be_idx = be_idx;
		this.be_sort = be_sort;
		this.be_name = be_name;
		this.be_license = be_license;
		this.be_rep_tell = be_rep_tell;
		this.incharge_name = incharge_name;
		this.incharge_email = incharge_email;
		this.incharge_tell = incharge_tell;
		this.be_loc = be_loc;
		this.be_size = be_size;
		this.be_park = be_park;
		this.be_empnum = be_empnum;
		this.be_consult = be_consult;
		this.admin_permission = admin_permission;
		this.be_id = be_id;
		this.be_pwd = be_pwd;
	}

	public int getBe_idx() {
		return be_idx;
	}

	public void setBe_idx(int be_idx) {
		this.be_idx = be_idx;
	}

	public String getBe_sort() {
		return be_sort;
	}

	public void setBe_sort(String be_sort) {
		this.be_sort = be_sort;
	}

	public String getBe_name() {
		return be_name;
	}

	public void setBe_name(String be_name) {
		this.be_name = be_name;
	}

	public String getBe_license() {
		return be_license;
	}

	public void setBe_license(String be_license) {
		this.be_license = be_license;
	}

	public String getBe_rep_tell() {
		return be_rep_tell;
	}

	public void setBe_rep_tell(String be_rep_tell) {
		this.be_rep_tell = be_rep_tell;
	}

	public String getIncharge_name() {
		return incharge_name;
	}

	public void setIncharge_name(String incharge_name) {
		this.incharge_name = incharge_name;
	}

	public String getIncharge_email() {
		return incharge_email;
	}

	public void setIncharge_email(String incharge_email) {
		this.incharge_email = incharge_email;
	}

	public String getIncharge_tell() {
		return incharge_tell;
	}

	public void setIncharge_tell(String incharge_tell) {
		this.incharge_tell = incharge_tell;
	}

	public String getBe_loc() {
		return be_loc;
	}

	public void setBe_loc(String be_loc) {
		this.be_loc = be_loc;
	}

	public String getBe_size() {
		return be_size;
	}

	public void setBe_size(String be_size) {
		this.be_size = be_size;
	}

	public String getBe_park() {
		return be_park;
	}

	public void setBe_park(String be_park) {
		this.be_park = be_park;
	}

	public String getBe_empnum() {
		return be_empnum;
	}

	public void setBe_empnum(String be_empnum) {
		this.be_empnum = be_empnum;
	}

	public String getBe_consult() {
		return be_consult;
	}

	public void setBe_consult(String be_consult) {
		this.be_consult = be_consult;
	}

	public String getAdmin_permission() {
		return admin_permission;
	}

	public void setAdmin_permission(String admin_permission) {
		this.admin_permission = admin_permission;
	}

	public String getBe_id() {
		return be_id;
	}

	public void setBe_id(String be_id) {
		this.be_id = be_id;
	}

	public String getBe_pwd() {
		return be_pwd;
	}

	public void setBe_pwd(String be_pwd) {
		this.be_pwd = be_pwd;
	}
	
	
	
}
