package ahall.model;

public class aHallDTO {
	private int idx;
	private String name;
	private double grade;
	private int accrue;
	private String si;
	private String gu;
	private String dong;
	private String addr;
	private String roadAddr;
	private String hallType;
	private String mealCost;
	private String menuType;
	private String guest;
	private String ckPoint;
	private double locationX;
	private double locationY;
	private String traffic;
	private String line;
	private String station;
	
	public aHallDTO() {}

	public aHallDTO(int idx, String name, double grade, int accrue, String si, String gu, String dong, String addr,
			String roadAddr, String hallType, String mealCost, String menuType, String guest, String ckPoint,
			double locationX, double locationY, String traffic, String line, String station) {
		this.idx = idx;
		this.name = name;
		this.grade = grade;
		this.accrue = accrue;
		this.si = si;
		this.gu = gu;
		this.dong = dong;
		this.addr = addr;
		this.roadAddr = roadAddr;
		this.hallType = hallType;
		this.mealCost = mealCost;
		this.menuType = menuType;
		this.guest = guest;
		this.ckPoint = ckPoint;
		this.locationX = locationX;
		this.locationY = locationY;
		this.traffic = traffic;
		this.line = line;
		this.station = station;
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

	public double getGrade() {
		return grade;
	}

	public void setGrade(double grade) {
		this.grade = grade;
	}

	public int getAccrue() {
		return accrue;
	}

	public void setAccrue(int accrue) {
		this.accrue = accrue;
	}

	public String getSi() {
		return si;
	}

	public void setSi(String si) {
		this.si = si;
	}

	public String getGu() {
		return gu;
	}

	public void setGu(String gu) {
		this.gu = gu;
	}

	public String getDong() {
		return dong;
	}

	public void setDong(String dong) {
		this.dong = dong;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getRoadAddr() {
		return roadAddr;
	}

	public void setRoadAddr(String roadAddr) {
		this.roadAddr = roadAddr;
	}

	public String getHallType() {
		return hallType;
	}

	public void setHallType(String hallType) {
		this.hallType = hallType;
	}

	public String getMealCost() {
		return mealCost;
	}

	public void setMealCost(String mealCost) {
		this.mealCost = mealCost;
	}

	public String getMenuType() {
		return menuType;
	}

	public void setMenuType(String menuType) {
		this.menuType = menuType;
	}

	public String getGuest() {
		return guest;
	}

	public void setGuest(String guest) {
		this.guest = guest;
	}

	public String getCkPoint() {
		return ckPoint;
	}

	public void setCkPoint(String ckPoint) {
		this.ckPoint = ckPoint;
	}

	public double getLocationX() {
		return locationX;
	}

	public void setLocationX(double locationX) {
		this.locationX = locationX;
	}

	public double getLocationY() {
		return locationY;
	}

	public void setLocationY(double locationY) {
		this.locationY = locationY;
	}

	public String getTraffic() {
		return traffic;
	}

	public void setTraffic(String traffic) {
		this.traffic = traffic;
	}

	public String getLine() {
		return line;
	}

	public void setLine(String line) {
		this.line = line;
	}

	public String getStation() {
		return station;
	}

	public void setStation(String station) {
		this.station = station;
	}
}


