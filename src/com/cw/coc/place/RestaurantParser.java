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

 
import com.cw.coc.place.model.vo.RestaurantVo;
 


public class RestaurantParser {
 private DocumentBuilderFactory documentBuilderFactory;
 private DocumentBuilder documentBuilder;
 private Document document;
 private NodeList nodeList;
 

 public RestaurantParser(File file) {
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
 
  public List<RestaurantVo> parse(String tagName){
    List<RestaurantVo> listOfData = new ArrayList<RestaurantVo>();
    nodeList = document.getElementsByTagName(tagName);
    for(int i = 0; i < nodeList.getLength() ; i ++){
     Element element = (Element) nodeList.item(i);
     
     String rtitle = this.getTagValue("title", element);
     String raddr1 = this.getTagValue("addr1",element);
     String rtel =this.getTagValue("tel",element);
     int rcontenttypeid =Integer.parseInt(this.getTagValue("contenttypeid",element));
     String rcat1 =this.getTagValue("cat1", element);
     String rcat2 =this.getTagValue("cat2", element);
     String rcat3 =this.getTagValue("cat3", element);
     String rmapx =this.getTagValue("mapx", element); 		 
     String rmapy =this.getTagValue("mapy", element); 	 
     String rfirstimage =this.getTagValue("firstimage", element);
   	System.out.println("ctitle" +rtitle);

      
     listOfData.add(new RestaurantVo(rtitle,raddr1,rtel,rcontenttypeid,rcat1,rcat2,rcat3 ,rmapx,rmapy,rfirstimage));
    }
    
  return listOfData;
 }
 
  private static String getTagValue(String tag, Element eElement) {
    NodeList nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes();
	   Node nValue = (Node) nlList.item(0); 
	   	
		System.out.println("nValue"+nValue);
	 
		return nValue.getNodeValue();
	}

 

} 
