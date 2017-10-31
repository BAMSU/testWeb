package honey.model;

public class honeyDTO {
	private int p_idx;
	private String p_name;
	public honeyDTO() {
		super();
	}
	public honeyDTO(int p_idx, String p_name) {
		super();
		this.p_idx = p_idx;
		this.p_name = p_name;
	}
	public int getP_idx() {
		return p_idx;
	}
	public void setP_idx(int p_idx) {
		this.p_idx = p_idx;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name2(String p_name) {
		this.p_name = p_name;
	}
	
	
}
