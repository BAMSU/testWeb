package ahall.model;

public class aHallStatsDTO {
	private int idx;
	private String type;
	private int month;
	private int typeNum;
	private int hallIdx;
	
	public aHallStatsDTO() {}

	public aHallStatsDTO(int idx, String type, int month, int typeNum, int hallIdx) {
		this.idx = idx;
		this.type = type;
		this.month = month;
		this.typeNum = typeNum;
		this.hallIdx = hallIdx;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getMonth() {
		return month;
	}

	public void setMonth(int month) {
		this.month = month;
	}

	public int getTypeNum() {
		return typeNum;
	}

	public void setTypeNum(int typeNum) {
		this.typeNum = typeNum;
	}

	public int getHallIdx() {
		return hallIdx;
	}

	public void setHallIdx(int hallIdx) {
		this.hallIdx = hallIdx;
	}
}
