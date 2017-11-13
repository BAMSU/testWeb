package mypageLike.model;

import java.sql.*;
import java.util.*;

import org.apache.commons.collections.map.HashedMap;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

public class MypageLikeDAOImple implements MypageLikeDAO {

	private SqlSessionTemplate sqlMap;
	
	public MypageLikeDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
	public List mypage_Like(String name){
		return sqlMap.selectList("mypage_like", name);
	}
}
