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
public class apiculture {
	 
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
		             /*String text = URLEncoder.encode("연극", "utf-8");*/
		          /*   String apiURL = "https://openapi.naver.com/v1/search/webkr?query=" + text + "&display=" + display + "&";*/
		             String url = "http://openapi.seoul.go.kr:8088/4d6e4b43456a686a313135556456506f/xml/SearchConcertDetailService/1/15//1";
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
