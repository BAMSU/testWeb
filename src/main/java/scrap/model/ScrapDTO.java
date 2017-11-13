package scrap.model;

public class ScrapDTO {
	private int idx;
	private String memberName;
	private int hallIdx;
	
	public ScrapDTO() {}

	public ScrapDTO(int idx, String memberName, int hallIdx) {
		this.idx = idx;
		this.memberName = memberName;
		this.hallIdx = hallIdx;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public int getHallIdx() {
		return hallIdx;
	}

	public void setHallIdx(int hallIdx) {
		this.hallIdx = hallIdx;
	}
}
