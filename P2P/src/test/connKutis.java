package test;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.Consts;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.CookieStore;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.protocol.ClientContext;
import org.apache.http.impl.client.BasicCookieStore;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.EntityUtils;

public class connKutis {

    public static void main(String[] args) {
    	connKutis c = new connKutis();
    	//c.conKutis();
    	c.setKutisScore();
    }
    
    public void conKutis() {
        String url = "http://kutis.kyonggi.ac.kr/webkutis/view/hs/wslogin/loginCheck.jsp";
        HttpClient httpclient = null;
        CookieStore httpCookieStore = new BasicCookieStore();
        HttpClientBuilder builder = HttpClientBuilder.create().setDefaultCookieStore(httpCookieStore);
        httpclient = builder.build();
        HttpPost httpPost = new HttpPost(url);

        // set the parameters
        List <NameValuePair> nvps = new ArrayList<NameValuePair>();
        nvps.add(new BasicNameValuePair("idChk2", "on"));
        /* input your KUTIS id & password */
        nvps.add(new BasicNameValuePair("pw", "tet"));
        nvps.add(new BasicNameValuePair("id", "tet"));

        // set the encoding
        httpPost.setEntity(new UrlEncodedFormEntity(nvps, Consts.UTF_8));

        // send the http request and get the http response
        String buf = "";
        try {
            HttpResponse response = httpclient.execute(httpPost);
            HttpEntity resEntity = response.getEntity();
            buf = EntityUtils.toString(resEntity);
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        System.out.println(buf.indexOf("show_message"));
        if(buf.indexOf("show_message") == -1)
        	System.out.println("로그인 성공!");
        else
        	System.out.println("로그인 실패!");
    }
	
	public void setKutisScore() {
        String url = "http://kutis.kyonggi.ac.kr/webkutis/view/hs/wslogin/loginCheck.jsp";
        HttpClient httpclient = null;
        CookieStore httpCookieStore = new BasicCookieStore();
        HttpClientBuilder builder = HttpClientBuilder.create().setDefaultCookieStore(httpCookieStore);
        httpclient = builder.build();
        HttpPost httpPost = new HttpPost(url);

        // set the parameters
        List <NameValuePair> nvps = new ArrayList<NameValuePair>();
        nvps.add(new BasicNameValuePair("idChk2", "on"));
        /* input your KUTIS id & password */
        nvps.add(new BasicNameValuePair("pw", "test"));
        nvps.add(new BasicNameValuePair("id", "test"));

        // set the encoding
        httpPost.setEntity(new UrlEncodedFormEntity(nvps, Consts.UTF_8));

        // send the http request and get the http response
        try {
            HttpResponse response = httpclient.execute(httpPost);
            httpCookieStore.getCookies();
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        HttpContext context = new BasicHttpContext();
        context.setAttribute(ClientContext.COOKIE_STORE, httpCookieStore);
        
        url = "http://kutis.kyonggi.ac.kr/webkutis/view/hs/wssj1/wssj160s.jsp?m_menu=wsco1s06&s_menu=wssj160s";
        httpPost = new HttpPost(url);
        String buf = "";
        try {
			HttpResponse response = httpclient.execute(httpPost, context);
			HttpEntity resEntity = response.getEntity();
            buf = EntityUtils.toString(resEntity);
		} catch (Exception e) {
			e.printStackTrace();
		}
        
        String[] res = buf.split("\\n");
        
        /*
        for(String s : res)
        	System.out.println(s);
        */
        
        ArrayList<String> info = new ArrayList<>();
        int i;
        for (i = 0; i < res.length; i++) {
        	if (res[i].indexOf("<section id=\"memInfo\">") != -1) {
        		while (res[i].indexOf("</dl>") == -1) {
        			int dd = res[i].indexOf("<dd>: ");
        			if (dd != -1) {
        				info.add(res[i].substring(dd + 6, res[i].indexOf("</dd>")));
        			}
        			i++;
        		}
        		break;
        	}
        }
        
        /*
        System.out.println(info.get(0));
        System.out.println(info.get(1));
        System.out.println(info.get(2));
        System.out.println(info.get(3));
        */
        
        
        for (; i < res.length; i++) {
        	if (res[i].indexOf("<table class=\"list06\">") != -1) {
        		while (res[i].indexOf("</thead>") == -1) {
        			if (res[i].indexOf("<td") != -1 && res[i].indexOf("bgcolor='#727272'") == -1) {
        				if(res[i].indexOf("<font") == -1)
        					info.add(res[i].substring(res[i].indexOf(">") + 1, res[i].indexOf("</td>")));
        				else
        					info.add(res[i].substring(res[i].indexOf("'#004080'>") + 10, res[i].indexOf("<br>")));
                	}
        			i++;
        		}
        		break;
        	}
        }
        
        
        for (String s : info)
        	System.out.println(s);
    }
}