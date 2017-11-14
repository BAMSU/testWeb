package fly.model;

public class FlyDTO {
	
	private String airLineKorean;	
	private String startcity;	
	private String arrivalcity;	
	private String domesticStartTime;	
	private String domesticArrivalTime;
	
	public FlyDTO() {
		super();
	}

	

	public FlyDTO(String airLineKorean, String startcity, String arrivalcity, String domesticStartTime,
			String domesticArrivalTime) {
		super();
		this.airLineKorean = airLineKorean;
		this.startcity = startcity;
		this.arrivalcity = arrivalcity;
		this.domesticStartTime = domesticStartTime;
		this.domesticArrivalTime = domesticArrivalTime;
	}



	public String getAirLineKorean() {
		return airLineKorean;
	}

	public void setAirLineKorean(String airLineKorean) {
		this.airLineKorean = airLineKorean;
	}

	public String getStartcity() {
		return startcity;
	}

	public void setStartcity(String startcity) {
		this.startcity = startcity;
	}

	public String getArrivalcity() {
		return arrivalcity;
	}

	public void setArrivalcity(String arrivalcity) {
		this.arrivalcity = arrivalcity;
	}

	public String getDomesticStartTime() {
		return domesticStartTime;
	}

	public void setDomesticStartTime(String domesticStartTime) {
		this.domesticStartTime = domesticStartTime;
	}

	public String getDomesticArrivalTime() {
		return domesticArrivalTime;
	}

	public void setDomesticArrivalTime(String domesticArrivalTime) {
		this.domesticArrivalTime = domesticArrivalTime;
	}
	
	
	
}
