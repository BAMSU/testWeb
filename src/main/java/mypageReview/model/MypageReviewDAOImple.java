package mypageReview.model;

import java.sql.*;
import java.util.*;

import org.apache.commons.collections.map.HashedMap;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

public class MypageReviewDAOImple implements MypageReviewDAO {

	private SqlSessionTemplate sqlMap;
	
	public MypageReviewDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
	public List mypage_Review(String writer){
		return sqlMap.selectList("mypage_review", writer);
	}


}
