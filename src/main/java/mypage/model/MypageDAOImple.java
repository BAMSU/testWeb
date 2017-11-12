package mypage.model;

import java.sql.*;
import java.util.*;

import org.apache.commons.collections.map.HashedMap;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

public class MypageDAOImple implements MypageDAO {

	private SqlSessionTemplate sqlMap;
	
	public MypageDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
}
