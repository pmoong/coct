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

import com.cw.coc.place.model.vo.SeoulVo;

 

public class SeoulParser {
 private DocumentBuilderFactory documentBuilderFactory;
 private DocumentBuilder documentBuilder;
 private Document document;
 private NodeList nodeList;

 public SeoulParser(File file) {
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
 
  public List<SeoulVo> parse(String tagName){
 
	   List<SeoulVo> listOfData = new ArrayList<SeoulVo>();
    nodeList = document.getElementsByTagName(tagName);
    for(int i = 0; i < nodeList.getLength() ; i ++){
      	String a=("x");
     
     Element element = (Element) nodeList.item(i);
     String stitle = this.getTagValue("title", element);
  	System.out.println(stitle);

     String saddr1 = this.getTagValue("addr1",element);
   
     int scontenttypeid =Integer.parseInt(this.getTagValue("contenttypeid",element));
     String scat1 =this.getTagValue("cat1", element);
     String scat2 =this.getTagValue("cat2", element);
     System.out.println(scat1);
     String scat3 =this.getTagValue("cat3", element);
 	String smapx =this.getTagValue("mapx", element);
 	System.out.println(smapx);
 	
 	if(smapx !=null) {
 		smapx =this.getTagValue("mapx", element);
 	System.out.println("cc");
 	}else {
 		smapx =null;
 	System.out.println("xx");
 	}
 	String smapy =this.getTagValue("mapy", element); 	 
 	
 	String sfirstimage=this.getTagValue("firstimage", element);
 	if(sfirstimage !=null) {
 		sfirstimage =this.getTagValue("mapx", element);
 	System.out.println("cc");
 	}else {
 		sfirstimage = a;
 	}
     
     listOfData.add(new SeoulVo(stitle, saddr1, scontenttypeid,scat1, scat2, scat3 ,smapx,smapy,sfirstimage));
    }
    
  return listOfData;
 }

 
private String getTagValue(String tagName, Element element) {
	NodeList nodeList = element.getElementsByTagName(tagName).item(0).getChildNodes();
	  Node node = nodeList.item(0);
	
	  return node.getNodeValue();
 }
 

} 
 