package connection;

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
        nvps.add(new BasicNameValuePair("pw", "971007"));
        nvps.add(new BasicNameValuePair("id", "201611800"));

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
        for(String s : res) {
        	if(s.length() > 1)
        		System.out.print(s);
        }
    }
}