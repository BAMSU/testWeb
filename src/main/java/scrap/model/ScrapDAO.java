package scrap.model;

public interface ScrapDAO {
	public int insertScrap(String memberName,int hallIdx);
	public int deleteScrap(String memberName,int hallIdx);
	public int getScrap(String memberName,int hallIdx);
}
