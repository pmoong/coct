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
import com.cw.coc.place.model.vo.RestaurantVo;
 

public class LogmentParser {
 private DocumentBuilderFactory documentBuilderFactory;
 private DocumentBuilder documentBuilder;
 private Document document;
 private NodeList nodeList;
 

 public LogmentParser(File file) {
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
 
  public List<LogmentVo> parse(String tagName){
     List<LogmentVo> listOfData = new ArrayList<LogmentVo>();
    nodeList = document.getElementsByTagName(tagName);
    for(int i = 0; i < nodeList.getLength() ; i ++){
     Element element = (Element) nodeList.item(i);
      String ltitle = this.getTagValue("title", element);
      System.out.println(ltitle);
     String laddr = this.getTagValue("addr1", element);
     int lsigungucode =Integer.parseInt(this.getTagValue("sigungucode",element));
     System.out.println(lsigungucode);
     String ltel =this.getTagValue("tel",element);
      int lcontenttypeid =Integer.parseInt(this.getTagValue("contenttypeid",element));
     String lcat1 =this.getTagValue("cat1", element);
     String lcat2 =this.getTagValue("cat2", element);
     String lcat3 =this.getTagValue("cat3", element);
     String lmapx =this.getTagValue("mapx", element); 		 
     String lmapy =this.getTagValue("mapy", element); 	 
     String lfirstimage =this.getTagValue("firstimage", element);
 
   	listOfData.add(new LogmentVo(ltitle,laddr,lsigungucode,ltel,lcontenttypeid,lcat1,lcat2,lcat3,lmapx,lmapy,lfirstimage));
    }
   return listOfData;
 }
 
  private static String getTagValue(String tag, Element eElement) {
	  NodeList nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes();
	   Node nValue = (Node) nlList.item(0); 
	   
		return nValue.getNodeValue();
	}

 

} 
