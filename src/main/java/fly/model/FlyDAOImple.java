package fly.model;

import javax.xml.parsers.DocumentBuilder;	
import javax.xml.parsers.DocumentBuilderFactory;

import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.*;	
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;


public class FlyDAOImple implements FlyDAO {
	public List<String> getListDomestic(String url) {
		List arr = new ArrayList<FlyDTO>();
		try {

			

			//http://openapi.airport.co.kr/service/rest/FlightScheduleList/getIflightScheduleList?serviceKey=C2Q%2Bx%2FQciWJ%2Fk9CHOXnRaarSmogJdrBCqb24k48526uIX6ZQnQDGWkzOnnh5WPGgpALgEaFfs2aIVxRelhSiaQ%3D%3D&schDate=20171010&schDeptCityCode=GMP&schArrvCityCode=HND
			//http://openapi.airport.co.kr/service/rest/FlightScheduleList/getDflightScheduleList?serviceKey=C2Q%2Bx%2FQciWJ%2Fk9CHOXnRaarSmogJdrBCqb24k48526uIX6ZQnQDGWkzOnnh5WPGgpALgEaFfs2aIVxRelhSiaQ%3D%3D&schDate=20171010&schDeptCityCode=GMP&schArrvCityCode=PUS";
			DocumentBuilderFactory dbFactoty = DocumentBuilderFactory.newInstance();
			DocumentBuilder dBuilder = dbFactoty.newDocumentBuilder();
			org.w3c.dom.Document doc = dBuilder.parse(url);

			// root tag 
			doc.getDocumentElement().normalize();
			

			NodeList nList = doc.getElementsByTagName("item");
			

			for(int temp = 0; temp < nList.getLength(); temp++){		
				Node nNode = nList.item(temp);
				
				if(nNode.getNodeType() == Node.ELEMENT_NODE){

					Element eElement = (Element) nNode;
					
					
			
					
					FlyDTO dto = new FlyDTO(getTagValue("airlineKorean", eElement),
							getTagValue("startcity", eElement),
							getTagValue("arrivalcity", eElement),
							getTagValue("domesticStartTime", eElement),
							getTagValue("domesticArrivalTime", eElement));
					arr.add(dto);

				}	// for end
			}	// if end
			

		}catch (Exception e) {
			e.printStackTrace();
		}
		return arr;
	}

	private static String getTagValue(String tag, Element eElement) {
		NodeList nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes();
		Node nValue = (Node) nlList.item(0);
		if(nValue == null) 
			return null;
		return nValue.getNodeValue();



	}

	public List getListInternational(String url) {
		
		List arr = new ArrayList<FlyDTO_Inter>();
		try {

			

			//http://openapi.airport.co.kr/service/rest/FlightScheduleList/getIflightScheduleList?serviceKey=C2Q%2Bx%2FQciWJ%2Fk9CHOXnRaarSmogJdrBCqb24k48526uIX6ZQnQDGWkzOnnh5WPGgpALgEaFfs2aIVxRelhSiaQ%3D%3D&schDate=20171010&schDeptCityCode=GMP&schArrvCityCode=HND
			//http://openapi.airport.co.kr/service/rest/FlightScheduleList/getDflightScheduleList?serviceKey=C2Q%2Bx%2FQciWJ%2Fk9CHOXnRaarSmogJdrBCqb24k48526uIX6ZQnQDGWkzOnnh5WPGgpALgEaFfs2aIVxRelhSiaQ%3D%3D&schDate=20171010&schDeptCityCode=GMP&schArrvCityCode=PUS";
			DocumentBuilderFactory dbFactoty = DocumentBuilderFactory.newInstance();
			DocumentBuilder dBuilder = dbFactoty.newDocumentBuilder();
			org.w3c.dom.Document doc = dBuilder.parse(url);

			// root tag 
			doc.getDocumentElement().normalize();
			

			NodeList nList = doc.getElementsByTagName("item");
			

			for(int temp = 0; temp < nList.getLength(); temp++){		
				Node nNode = nList.item(temp);
				
				if(nNode.getNodeType() == Node.ELEMENT_NODE){

					Element eElement = (Element) nNode;
					
			
					//System.out.println(eElement.getTextContent());
					String time=getTagValue("internationalTime", eElement);
					String time2=time.substring(0, 2)+"½Ã "+time.substring(2, 4)+"ºÐ";
					FlyDTO_Inter dto = new FlyDTO_Inter(getTagValue("airlineKorean", eElement), 
							getTagValue("city", eElement), 
							getTagValue("airport", eElement), time2
							);
					
					arr.add(dto);

				}	// for end
			}	// if end
			

		}catch (Exception e) {
			e.printStackTrace();
		}
		return arr;
	}
}
