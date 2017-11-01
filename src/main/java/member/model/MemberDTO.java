package member.model;

public class MemberDTO {

	private int member_idx;
	private String member_id;
	private String member_name;
	private String member_pwd;
	private String member_email;
	private String member_phone;
	private String member_addrnum;
	private String member_addrbasic;
	private String member_detail;
	private String member_gender;
	
	public MemberDTO() {
		// TODO Auto-generated constructor stub
	}

	public MemberDTO(int member_idx, String member_id, String member_name, String member_pwd, String member_email,
			String member_phone, String member_addrnum, String member_addrbasic, String member_detail,
			String member_gender) {
		super();
		this.member_idx = member_idx;
		this.member_id = member_id;
		this.member_name = member_name;
		this.member_pwd = member_pwd;
		this.member_email = member_email;
		this.member_phone = member_phone;
		this.member_addrnum = member_addrnum;
		this.member_addrbasic = member_addrbasic;
		this.member_detail = member_detail;
		this.member_gender = member_gender;
	}

	public int getMember_idx() {
		return member_idx;
	}

	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public String getMember_pwd() {
		return member_pwd;
	}

	public void setMember_pwd(String member_pwd) {
		this.member_pwd = member_pwd;
	}

	public String getMember_email() {
		return member_email;
	}

	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}

	public String getMember_phone() {
		return member_phone;
	}

	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}

	public String getMember_addrnum() {
		return member_addrnum;
	}

	public void setMember_addrnum(String member_addrnum) {
		this.member_addrnum = member_addrnum;
	}

	public String getMember_addrbasic() {
		return member_addrbasic;
	}

	public void setMember_addrbasic(String member_addrbasic) {
		this.member_addrbasic = member_addrbasic;
	}

	public String getMember_detail() {
		return member_detail;
	}

	public void setMember_detail(String member_detail) {
		this.member_detail = member_detail;
	}

	public String getMember_gender() {
		return member_gender;
	}

	public void setMember_gender(String member_gender) {
		this.member_gender = member_gender;
	}
	
	
	
	
}
