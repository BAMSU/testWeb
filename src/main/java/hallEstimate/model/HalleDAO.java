package hallEstimate.model;
import java.util.*;

public interface HalleDAO {
	
	public int hallEst(HalldDTO ddto);
	public int hallEst(HallmDTO mdto);
	public int hallEst(HallfDTO fdto);
	public int hallEst(HallcDTO cdto);
	
	public List<HalleDTO> hallestmateAllList();
	
}
