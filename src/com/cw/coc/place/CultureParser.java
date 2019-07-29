package com.cw.coc.place;

import java.io.File;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import com.cw.coc.place.model.vo.CultureVo;
 


public class CultureParser {
 private DocumentBuilderFactory documentBuilderFactory;
 private DocumentBuilder documentBuilder;
 private Document document;
 private NodeList nodeList;
 

 public CultureParser(File file) {
  DomParser(file);
 }
  
 public void DomParser(File file){
    
    try {
     documentBuilderFactory = DocumentBuilderFactory.newInstance();
     documentBuilder = documentBuilderFactory.newDocumentBuilder();   
     document = documentBuilder.parse(file);
    } catch (ParserConfigurationException e) {
     // TODO Auto-generated catch block
     e.printStackTrace();
    } catch (SAXException e) {
     // TODO Auto-generated catch block
     e.printStackTrace();
    } catch (IOException e) {
     // TODO Auto-generated catch block
     e.printStackTrace();
    }
 }
 
  public List<CultureVo> parse(String tagName){
    List<CultureVo> listOfData = new ArrayList<CultureVo>();
    nodeList = document.getElementsByTagName(tagName);
    for(int i = 0; i < nodeList.getLength() ; i ++){
     Element element = (Element) nodeList.item(i);
     
     String ctitle = this.getTagValue("title", element);
     String caddr1 = this.getTagValue("addr1",element);
     
     int ccontenttypeid =Integer.parseInt(this.getTagValue("contenttypeid",element));
     String ccat1 =this.getTagValue("cat1", element);
     String ccat2 =this.getTagValue("cat2", element);
     String ccat3 =this.getTagValue("cat3", element);
     String cmapx =this.getTagValue("mapx", element); 		 
     String cmapy =this.getTagValue("mapy", element); 	 
     String cimg =this.getTagValue("cimg", element);
     
     listOfData.add(new CultureVo(ctitle, caddr1, ccontenttypeid,ccat1, ccat2, ccat3 ,cmapx,cmapy,cimg));
    }
    System.out.println("listOfData"+listOfData);
  return listOfData;
 }
 
  private static String getTagValue(String tag, Element eElement) {
		
   NodeList nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes();
	   Node nValue = (Node) nlList.item(0); 
	   	
		System.out.println("nlList1"+nlList);
		System.out.println("nValue"+nValue);
		
		 
		if (nlList != null) {
			nlList.toString();
			System.out.println("dsf");
			return  nValue.getNodeValue();
		}
		System.out.println("nlList2"+nlList);
		System.out.println("nlList12"+nValue.getNodeValue());
		return nValue.getNodeValue();
	}

 

} 
