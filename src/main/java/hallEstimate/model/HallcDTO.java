package hallEstimate.model;

public class HallcDTO {

	private int idx;
	private String choice_name;
	private String gestalt;
	private String guest;
	private String interval;
	
	public HallcDTO() {
		super();
	}
	public HallcDTO(int idx, String choice_name, String gestalt, String guest, String interval) {
		super();
		this.idx = idx;
		this.choice_name = choice_name;
		this.gestalt = gestalt;
		this.guest = guest;
		this.interval = interval;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getChoice_name() {
		return choice_name;
	}
	public void setChoice_name(String choice_name) {
		this.choice_name = choice_name;
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
	
	
}
