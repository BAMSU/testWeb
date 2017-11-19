package review.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import review.model.*;

public class ReviewDAOImple implements ReviewDAO {

	
	private SqlSessionTemplate sqlMap;
	
	
	public ReviewDAOImple(SqlSessionTemplate sqlMap) {
		this.sqlMap = sqlMap;
	}
	
	public int reviewWrite(ReviewDTO dto) {
		System.out.println(dto.getAvg1());
		
		int avg = dto.getAvg1()+dto.getAvg2()+dto.getAvg3()+dto.getAvg4()
					+dto.getAvg5();
	
		float average = avg/5; 
	
		
		Map data = new HashMap();
		data.put("name", dto.getName());
		data.put("room_idx", dto.getRoom_idx());
		data.put("subject", dto.getSubject());
		data.put("average", average);
		data.put("content", dto.getContent());
		data.put("writer", dto.getWriter());
		data.put("sum", avg);
		data.put("avg1", dto.getAvg1());
		data.put("avg2", dto.getAvg2());
		data.put("avg3", dto.getAvg3());
		data.put("avg4", dto.getAvg4());
		data.put("avg5", dto.getAvg5());
		
	
		int count = sqlMap.insert("review_Write",data);
		return count;
	}
	
	
	public List<ReviewDTO> AllReviewList(int cp, int ls) {

		Map data = new HashMap();
		int startnum = (cp-1)*ls+1;
		int endnum = cp*ls;
		
	
		data.put("startnum", startnum);
		data.put("endnum", endnum);
		
		
		List<ReviewDTO> list =sqlMap.selectList("ReviewList",data);
		return list;
		
	}
	 public int getTotelCont() {
			int count = sqlMap.selectOne("reviewTotelCnt");
			return count==0?1:count;
	}
	 
	 
     public List<ReviewDTO> ReviewList(int cp, int ls, String name) {

			Map data = new HashMap();
			int startnum = (cp-1)*ls+1;
			int endnum = cp*ls;
			
		
			data.put("startnum", startnum);
			data.put("endnum", endnum);
			data.put("name", name);
			
			List<ReviewDTO> list =sqlMap.selectList("NameReviewList",data);
			return list;
	}
	 

     public int ReviewDel(int idx) {
 		
 		int count = sqlMap.delete("reviewDelete", idx);
 		return count;
 	}
     
     public int review_accrue_Update(int getreview_sum,String name) {
    	 
    	
	 		Map data = new HashMap();
	 		
	 		data.put("sum", getreview_sum);
	 		data.put("name", name);
	 		//data.put("grade", result);
	 	
 		
 		int count = sqlMap.update("review_accrue_Update", data);
 		return count;
 		
 	}
     
     
     public int review_accrue_Update2(ReviewDTO dto, String name) {
    	 
    	 int avg = dto.getAvg1()+dto.getAvg2()+dto.getAvg3()+dto.getAvg4()
			+dto.getAvg5();

 	 	float average = avg/5; 
 	 	
 	 
	 		Map data = new HashMap();
	 		data.put("average", average);
	 		data.put("sum", avg);
	 		data.put("name", name);
	 	

		
		int count = sqlMap.update("review_accrue_Update2", data);
		return count;
    }
     
     public int getNameTotelCont(String name) {
    	 int count = sqlMap.selectOne("reviewNameTotelCnt",name);
		return count==0?1:count;
    }
     
     public ReviewDTO reviewContent(int idx) {
    	 
    	 ReviewDTO dto = sqlMap.selectOne("ReviewContent", idx);
 		return dto;
 		
    }
     
     public double getReviewAge(String name){
    	 double count = sqlMap.selectOne("hallReviewAge", name);
    	 return count;
     }

     public List hallReviewList(int cp, int ls, int idx) {
         Map m = new HashMap();
         m.put("startnum", (cp-1)*ls+1);
         m.put("endnum", cp*ls);
         m.put("idx", idx);
         return sqlMap.selectList("hallReviewList",m);
      }

      public int getTotelContByHall(int idx) {
         return sqlMap.selectOne("reviewTotelCntByHall",idx);
      }
}
