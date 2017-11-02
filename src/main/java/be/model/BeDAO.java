package be.model;

public interface BeDAO {

	
	public int BeJoin(BeDTO dto);
	
	public int BeLogin(BeDTO dto);
	
	public BeDTO loginInfo(String be_id);
}
