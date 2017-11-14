package fly.model;

public class FlyDTO_Inter {
	
	private String airLineKorean;		
	
	private String city;		
	private String airport; 	
	private String internationalTime;
	public FlyDTO_Inter() {
		super();
	}
	public FlyDTO_Inter(String airLineKorean, String city, String airport, String internationalTime) {
		super();
		this.airLineKorean = airLineKorean;
		this.city = city;
		this.airport = airport;
		this.internationalTime = internationalTime;
	}
	public String getAirLineKorean() {
		return airLineKorean;
	}
	public void setAirLineKorean(String airLineKorean) {
		this.airLineKorean = airLineKorean;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getAirport() {
		return airport;
	}
	public void setAirport(String airport) {
		this.airport = airport;
	}
	public String getInternationalTime() {
		return internationalTime;
	}
	public void setInternationalTime(String internationalTime) {
		this.internationalTime = internationalTime;
	}
		
	
	
}
