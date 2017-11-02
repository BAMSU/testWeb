package room.model;

public class RoomDTO {
	private int idx;
	private String name;
	private String weekDay;
	private String type;
	private String guest;
	private int interval;
	private String menu;
	private String menuPrice;
	private int hallIdx;
	
	public RoomDTO() {}

	public RoomDTO(int idx, String name, String weekDay, String type, String guest, int interval, String menu,
			String menuPrice, int hallIdx) {
		this.idx = idx;
		this.name = name;
		this.weekDay = weekDay;
		this.type = type;
		this.guest = guest;
		this.interval = interval;
		this.menu = menu;
		this.menuPrice = menuPrice;
		this.hallIdx = hallIdx;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getWeekDay() {
		return weekDay;
	}

	public void setWeekDay(String weekDay) {
		this.weekDay = weekDay;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getGuest() {
		return guest;
	}

	public void setGuest(String guest) {
		this.guest = guest;
	}

	public int getInterval() {
		return interval;
	}

	public void setInterval(int interval) {
		this.interval = interval;
	}

	public String getMenu() {
		return menu;
	}

	public void setMenu(String menu) {
		this.menu = menu;
	}

	public String getMenuPrice() {
		return menuPrice;
	}

	public void setMenuPrice(String menuPrice) {
		this.menuPrice = menuPrice;
	}

	public int getHallIdx() {
		return hallIdx;
	}

	public void setHallIdx(int hallIdx) {
		this.hallIdx = hallIdx;
	}
}
