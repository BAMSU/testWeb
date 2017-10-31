package yong.order.model;

public class MarketDTO {
	
	private String marketname;
	private String markettel;
	
	public MarketDTO() {
		// TODO Auto-generated constructor stub
	}

	public MarketDTO(String marketname, String markettel) {
		super();
		this.marketname = marketname;
		this.markettel = markettel;
	}

	public String getMarketname() {
		return marketname;
	}

	public void setMarketname(String marketname) {
		this.marketname = marketname;
	}

	public String getMarkettel() {
		return markettel;
	}

	public void setMarkettel(String markettel) {
		this.markettel = markettel;
	}
	
}
