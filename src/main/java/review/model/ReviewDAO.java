package review.model;

import java.util.List;


import review.model.*;

public interface ReviewDAO {

	public int reviewWrite(ReviewDTO dto);
	public List<ReviewDTO> AllReviewList(int cp, int ls);
	public int getTotelCont();
	public List<ReviewDTO> ReviewList(int cp, int ls,String name);
	public int ReviewDel(int idx);
	public int review_accrue_Update(int getreview_sum,String name);
	public int review_accrue_Update2(ReviewDTO dto,String name);
	public int getNameTotelCont(String name);
	public ReviewDTO reviewContent(int idx);
	public double getReviewAge(String name);
	public int getTotelContByHall(String hallName);
	public List hallReviewList(int cp,int ls,String hallName);
 
}
