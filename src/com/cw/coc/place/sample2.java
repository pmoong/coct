package com.cw.coc.place;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.PrintWriter;
import java.net.URL;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.json.simple.JSONObject;
 
public class sample2 {
    /*public static void main(String[] args) {
        BufferedReader br = null;
        try{            
            String urlstr = "http://openapi.airkorea.or.kr/"
                    + "openapi/services/rest/ArpltnInforInqireSvc/getMsrstnAcctoRltmMesureDnsty"
                    + "?stationName=수내동&dataTerm=month&pageNo=1&numOfRows=10&ServiceKey=744e6a6f496a686a3130374147784b56&ver=1.3";
            URL url = new URL(urlstr);
            HttpURLConnection urlconnection = (HttpURLConnection) url.openConnection();
            urlconnection.setRequestMethod("GET");
            br = new BufferedReader(new InputStreamReader(urlconnection.getInputStream(),"UTF-8"));
            String result = "";
            String line;
            while((line = br.readLine()) != null) {
                result = result + line + "\n";
            }
            System.out.println(result);
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
    }*/


	public void callDetail(HttpServletRequest request,HttpServletResponse response) throws Exception{
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/hmtl; charset=utf-8");
		
		String addr="http://openapi.seoul.go.kr:8088/54434e47476a686a38395666576659/xml/SebcVisitKor/1/5/ ";
		String serviceKey="54434e47476a686a38395666576659";
		String parameter="";
		
		PrintWriter out =response.getWriter();
		
		parameter=parameter+"&"+"contentId";
		
		addr =addr+serviceKey+parameter;
		URL url = new URL(addr);
		
		System.out.println(addr);
		
		
		InputStream in=url.openStream();
		ByteArrayOutputStream bos =new ByteArrayOutputStream();
		IOUtils.copy(in,bos);
		
		in.close();
		bos.close();
		
		String mbos =bos.toString("UTF-8");
		
		byte[] b =mbos.getBytes("UTF-8");
		String s=new String(b,"UTF-8");
		JSONObject json=new JSONObject();
		json.put("data", s);
		
		
	}

}


















