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

import com.cw.coc.place.model.vo.LogmentVo;
import com.cw.coc.place.model.vo.Place;

  

public class PlaceParser {
 private DocumentBuilderFactory documentBuilderFactory;
 private DocumentBuilder documentBuilder;
 private Document document;
 private NodeList nodeList;
 private int cCode=0;

 public PlaceParser(File file) {
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
 
  public List<Place> parse(String tagName){
     List<Place> listOfData = new ArrayList<Place>();
    nodeList = document.getElementsByTagName(tagName);
    for(int i = 0; i < nodeList.getLength() ; i ++){
     Element element = (Element) nodeList.item(i);
/*     int cCode =Integer.parseInt(this.getTagValue("areacode",element));
 	*/ cCode =(i+1093);  
 	  String pName=this.getTagValue("title", element);		 
 	  String pAddress=this.getTagValue("addr1", element);	 
 	  String image =this.getTagValue("firstimage", element);		 
 	  String uType =this.getTagValue("contenttypeid", element); 	 
 	 String iCode=this.getTagValue("cat3", element);
 	 String iContent  =this.getTagValue("cat1", element);
 	 String mapx=  this.getTagValue("mapx", element); 	
 	  String  mapy =this.getTagValue("mapy", element);
     System.out.println("mapy:"+mapy);
     System.out.println(cCode);
   	listOfData.add(new Place(cCode,pName,pAddress,image,uType,iCode,iContent,mapx,mapy));
   
    
    
    
    
    }
   return listOfData;
 }
 
  private static String getTagValue(String tag, Element eElement) {
	  NodeList nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes();
	   Node nValue = (Node) nlList.item(0); 
	   
		return nValue.getNodeValue();
	}

 

} 
