package hallEstimate.model;

import java.util.*;

public interface HalleDAO {

	
	public List<HalleDTO> hallestlist(HalleDTO edto);
	public List<HalleDTO> hallUpdate(HalleDTO edto);
	public List<HalleDTO> estfind(String hall_type,String guest,String interval);
	public int hallestAdd(HalleDTO edto);
	
}
