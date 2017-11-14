package controller;

import java.util.*;	

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import fly.model.FlyDAO;


@Controller
public class FlyController {
   
   @Autowired
   private FlyDAO flyDao;
   
   @RequestMapping(method= RequestMethod.GET, value="/fly.we")
   public String flyForm() {
      return "fly/flyMain";
      
   }
   
   
   @RequestMapping(value="/flyList.we", method=RequestMethod.GET)
   public ModelAndView flyListForm(@RequestParam("s_city")String s_city,
         @RequestParam("a_city")String a_city,
         @RequestParam("s_date")String s_date,
         @RequestParam("a_date")String a_date,
         @RequestParam("way") int way,
         @RequestParam("international")int international) {
      //s_city,a_city, s_date,a_date, way, international
      String s_url="";
      String a_url="";
      List s_fly=new ArrayList<String>();
      List a_fly=new ArrayList<String>();
      ModelAndView mav = new ModelAndView();
      if(way==0&&international==0) {
         s_url="http://openapi.airport.co.kr/service/rest/"
               + "FlightScheduleList/getDflightScheduleList?"
               + "serviceKey=C2Q%2Bx%2FQciWJ%2Fk9CHOXnRaarSmogJdrBCqb24k48526uIX6ZQnQDGWkzOnnh5WPGgpALgEaFfs2aIVxRelhSiaQ%3D%3D"
               + "&schDate="+s_date
               + "&schDeptCityCode="+s_city
               + "&schArrvCityCode="+a_city;
         a_url="http://openapi.airport.co.kr/service/rest/"
               + "FlightScheduleList/getDflightScheduleList?"
               + "serviceKey=C2Q%2Bx%2FQciWJ%2Fk9CHOXnRaarSmogJdrBCqb24k48526uIX6ZQnQDGWkzOnnh5WPGgpALgEaFfs2aIVxRelhSiaQ%3D%3D"
               + "&schDate="+a_date
               + "&schDeptCityCode="+a_city
               + "&schArrvCityCode="+s_city;   
         s_fly=flyDao.getListDomestic(s_url);
         a_fly=flyDao.getListDomestic(a_url);
      }else if(way==1&&international==0) {
         s_url="http://openapi.airport.co.kr/service/rest/"
               + "FlightScheduleList/getDflightScheduleList?"
               + "serviceKey=C2Q%2Bx%2FQciWJ%2Fk9CHOXnRaarSmogJdrBCqb24k48526uIX6ZQnQDGWkzOnnh5WPGgpALgEaFfs2aIVxRelhSiaQ%3D%3D"
               + "&schDate="+s_date
               + "&schDeptCityCode="+s_city
               + "&schArrvCityCode="+a_city;
         s_fly=flyDao.getListDomestic(s_url);
         
      }else if(way==0&&international==1) {
         s_url="http://openapi.airport.co.kr/service/rest/"
               + "FlightScheduleList/getIflightScheduleList?"
               + "serviceKey=C2Q%2Bx%2FQciWJ%2Fk9CHOXnRaarSmogJdrBCqb24k48526uIX6ZQnQDGWkzOnnh5WPGgpALgEaFfs2aIVxRelhSiaQ%3D%3D"
               + "&schDate="+s_date
               + "&schDeptCityCode="+s_city
               + "&schArrvCityCode="+a_city;
         a_url="http://openapi.airport.co.kr/service/rest/"
               + "FlightScheduleList/getIflightScheduleList?"
               + "serviceKey=C2Q%2Bx%2FQciWJ%2Fk9CHOXnRaarSmogJdrBCqb24k48526uIX6ZQnQDGWkzOnnh5WPGgpALgEaFfs2aIVxRelhSiaQ%3D%3D"
               + "&schDate="+a_date
               + "&schDeptCityCode="+a_city
               + "&schArrvCityCode="+s_city;
         s_fly=flyDao.getListInternational(s_url);
         a_fly=flyDao.getListInternational(a_url);
         
      }else if(way==1&&international==1) {
         s_url="http://openapi.airport.co.kr/service/rest/"
               + "FlightScheduleList/getIflightScheduleList?"
               + "serviceKey=C2Q%2Bx%2FQciWJ%2Fk9CHOXnRaarSmogJdrBCqb24k48526uIX6ZQnQDGWkzOnnh5WPGgpALgEaFfs2aIVxRelhSiaQ%3D%3D"
               + "&schDate="+s_date
               + "&schDeptCityCode="+s_city
               + "&schArrvCityCode="+a_city;
         s_fly=flyDao.getListInternational(s_url);
      }
      mav.addObject("s_fly",s_fly);
      mav.addObject("a_fly",a_fly);
      if(international==0) {
      mav.setViewName("fly/flyList");
      }else{
    	  mav.setViewName("fly/flyList2");  
      }
      
      return mav;
   }
   
   
}
