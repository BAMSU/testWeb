package hallEstimate.model;

import java.util.*;

public class HalleDTO {

	private int idx;
	private String hall;
	private String hall_name;
	private String gestalt;
	
	
	private HallcDTO hallcdto;
	
	public HalleDTO(){
		super();
	}

	public HalleDTO(int idx, String hall, String hall_name, String gestalt) {
		super();
		this.idx = idx;
		this.hall = hall;
		this.hall_name = hall_name;
		this.gestalt = gestalt;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getHall() {
		return hall;
	}

	public void setHall(String hall) {
		this.hall = hall;
	}

	public String getHall_name() {
		return hall_name;
	}

	public void setHall_name(String hall_name) {
		this.hall_name = hall_name;
	}

	public String getGestalt() {
		return gestalt;
	}

	public void setGestalt(String gestalt) {
		this.gestalt = gestalt;
	}
	
	
	
	
}
