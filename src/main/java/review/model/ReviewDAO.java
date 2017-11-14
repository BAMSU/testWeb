package review.model;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import consult.model.ConsultDTO;
import review.model.*;

public interface ReviewDAO {

	public int reviewWrite(ReviewDTO dto);
	public List<ReviewDTO> AllReviewList(int cp, int ls);
	public int getTotelCont();
	public List<ReviewDTO> ReviewList(int cp, int ls,String name);
	public int ReviewDel(int idx);
}
