package hallPhoto.model;

public class HallPhotoDTO {
	private int idx;
	private String location;
	private String name;
	private int hallIdx;
	
	public HallPhotoDTO() {}

	public HallPhotoDTO(int idx, String location, String name, int hallIdx) {
		this.idx = idx;
		this.location = location;
		this.name = name;
		this.hallIdx = hallIdx;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getHallIdx() {
		return hallIdx;
	}

	public void setHallIdx(int hallIdx) {
		this.hallIdx = hallIdx;
	}
}
