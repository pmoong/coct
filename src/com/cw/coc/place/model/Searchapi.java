package com.cw.coc.place.model;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

public class Searchapi {

	    public static StringBuilder sb;//
	 
	    static String getString(String input, String data) // API에서 필요한 문자 자르기.
	    {
	        String[] dataSplit = data.split("{" + input + "}");
	        String[] dataSplit2 = dataSplit[1].split("\"" + input + "\"");
	        return dataSplit2[0];
	    }
	    
	    public StringBuilder search(String se) {
	 
	        String clientId = "8P_zrgkt3dPxfRKO64QZ";
	        String clientSecret = "xeGEUjrbxb";
	        int display = 10;
	 
	        try {
	             String text = URLEncoder.encode(se, "utf-8");
	             String apiURL = "https://openapi.naver.com/v1/search/webkr?query=" + text + "&display=" + display + "&";
	              
	            URL url = new URL(apiURL);
	            HttpURLConnection con = (HttpURLConnection) url.openConnection();
	            con.setRequestMethod("GET");
	            con.setRequestProperty("X-Naver-Client-Id", clientId);
	            con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
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

	            /*String data = sb.toString();
	            String[] array;
	            array = data.split("\"");
	            String[] title = new String[display];
	            String[] link = new String[display];
	            String[] category = new String[display];
	            String[] description = new String[display];
	            String[] telephone = new String[display];
	            String[] address = new String[display];
	            String[] mapx = new String[display];
	            String[] mapy = new String[display];
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
	            }*/
	        
	        } catch (Exception e) {
	            System.out.println(e);
	        }
	        return sb;
	    }
}

