package scrap.model;

public interface ScrapDAO {
	public int insertScrap(String memberName,int hallIdx);
	public ScrapDTO getScrap(String memberName,int hallIdx);
}
