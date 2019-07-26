package com.cw.coc.place;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
public class apiculture {
	public static void main(String[] args) {
		int page = 1;
		try {
			while (true) 
			{
				
	        	String apiURL=" http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchFestival?serviceKey=pNivNEEiKzH1Uju9YjYnZn7JTrWvfdbzb4aqVJ6KDZWsh1omN25wEwU79n2aDOS2qcbeTv6e7yc%2FtQe4KEZHIg%3D%3D&numOfRows=10&pageNo=1&MobileOS=ETC&MobileApp=AppTest&arrange=A&listYN=Y&areaCode=1&eventStartDate=20190701&eventEndDate=20191231";
				DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
				DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
				Document doc = dBuilder.parse(apiURL);
				doc.getDocumentElement().normalize();
				System.out.println("Root element : " + doc.getDocumentElement().getNodeName());
				
				 
				NodeList nList = doc.getElementsByTagName("item");
				System.out.println("파싱할 리스트 수 : " + nList.getLength());
			 
				for (int temp = 0; temp < nList.getLength(); temp++) {
					Node nNode = nList.item(temp);
					
					if (nNode.getNodeType() == Node.ELEMENT_NODE) {
						
						Element eElement = (Element) nNode;
						
						System.out.println("----------------------------------------");
						System.out.println("제목                : " + getTagValue("title", eElement));
						System.out.println("주소      : " + getTagValue("addr1", eElement));
						System.out.println("전화번호             : " + getTagValue("tel", eElement));
						 
					}
				}
				page += 1;
				if(page > 20) 
				{
					break;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
 	private static String getTagValue(String tag, Element eElement) {
		NodeList nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes();
		Node nValue = (Node) nlList.item(0);
		if (nValue == null) {
			return null;
		}
		return nValue.getNodeValue();
	} 
}

