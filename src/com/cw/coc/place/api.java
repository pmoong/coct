package com.cw.coc.place;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import javax.xml.parsers.DocumentBuilder;

import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
public class api {
	/*public static void main(String[] args) {
		 int page = 1;
		try {
			while (true) 
			{
				String url = "http://openapi.seoul.go.kr:8088/54434e47476a686a38395666576659/xml/SebcVisitKor/1/5/"
						+ "ServiceKey=54434e47476a686a38395666576659" 
						+ "&strSrch=3"+page;
				
				String url = "http://openapi.seoul.go.kr:8088/4d6e4b43456a686a313135556456506f/xml/PerformanceMaster/1/5/ "
						+ "&strSrch=3"+page;
				
				DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
				DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
				Document doc = dBuilder.parse(url);
				doc.getDocumentElement().normalize();
				System.out.println("Root element : " + doc.getDocumentElement().getNodeName());
				
				
				NodeList nList = doc.getElementsByTagName("itemList");
				System.out.println("파싱할 리스트 수 : " + nList.getLength());
				

				for (int temp = 0; temp < nList.getLength(); temp++) {
					Node nNode = nList.item(temp);
					if (nNode.getNodeType() == Node.ELEMENT_NODE) {
						
						Element eElement = (Element) nNode;
						
						System.out.println("----------------------------------------");
						System.out.println("CATE1_NAME      : " + getTagValue("CATE1_NAME", eElement));
						System.out.println("H_KOR_CITY                : " + getTagValue("H_KOR_CITY", eElement));
					}
				}
				page += 1;
				System.out.println("page number " + page);
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
		return nValue.getNodeValue();*/
		
		
		   public static StringBuilder sb;//
		   
		    static String getString(String input, String data) // API에서 필요한 문자 자르기.
		    {
		        String[] dataSplit = data.split("{" + input + "}");
		        String[] dataSplit2 = dataSplit[1].split("\"" + input + "\"");
		        return dataSplit2[0];
		    }
		    public static void main(String[] args) {
		 
		      /*  String clientId = "8P_zrgkt3dPxfRKO64QZ";
		        String clientSecret = "xeGEUjrbxb";*/
		        int page = 10;
		 

		        try {
		             String text = URLEncoder.encode("연극", "utf-8");
		          /*   String apiURL = "https://openapi.naver.com/v1/search/webkr?query=" + text + "&display=" + display + "&";*/
		             String url = "http://openapi.seoul.go.kr:8088/54434e47476a686a38395666576659/xml/SebcVisitKor/1/5/"
		            		/* + "ServiceKey=54434e47476a686a38395666576659" */
		            		 + "&strSrch=3"+page;
		              
		            URL url1 = new URL(url);
		            HttpURLConnection con = (HttpURLConnection) url1.openConnection();
		            con.setRequestMethod("GET");
		        /*    con.setRequestProperty("X-Naver-Client-Id", clientId);
		            con.setRequestProperty("X-Naver-Client-Secret", clientSecret);*/
		            int responseCode = con.getResponseCode();
		            BufferedReader br;
		            if (responseCode == 200) {
		                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
		            } else {
		                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
		            }
		            sb = new StringBuilder();
		            String line;
		 
		            while ((line = br.readLine()) != null) {
		                sb.append(line + "\n");
		            }
		 
		            br.close();
		            con.disconnect();
		            System.out.println(sb); 
		            String data = sb.toString();
		            String[] array;
		            array = data.split("\"");
		            String[] title = new String[page];
		            String[] link = new String[page];
		            String[] category = new String[page];
		            String[] description = new String[page];
		            String[] telephone = new String[page];
		            String[] address = new String[page];
		            String[] mapx = new String[page];
		            String[] mapy = new String[page];
		            int k = 0;
		            for (int i = 0; i < array.length; i++) {
		                if (array[i].equals("title"))
		                    title[k] = array[i + 2];
		                if (array[i].equals("link"))
		                    link[k] = array[i + 2];
		                if (array[i].equals("category"))
		                    category[k] = array[i + 2];
		                if (array[i].equals("description"))
		                    description[k] = array[i + 2];
		                if (array[i].equals("telephone"))
		                    telephone[k] = array[i + 2];
		                if (array[i].equals("address"))
		                    address[k] = array[i + 2];
		                if (array[i].equals("mapx"))
		                    mapx[k] = array[i + 2];
		                if (array[i].equals("mapy")) {
		                    mapy[k] = array[i + 2];
		                    k++;
		                }
		            }
		            System.out.println(sb);
		            System.out.println("----------------------------");
		            System.out.println("첫번째 타이틀 : " + title[0]);
		            System.out.println("두번째 타이틀 : " + title[1]);
		            System.out.println("세번째 타이틀 : " + title[2]);
		        
		        } catch (Exception e) {
		            System.out.println(e);
		        }
		    }
		
	
}
