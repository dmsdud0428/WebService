package connection;

import java.sql.Date;
import java.util.ArrayList;

import myinfo.AwardBean;
import myinfo.CareerBean;
import myinfo.EtcBean;
import myinfo.LanguageBean;
import myinfo.LicenseBean;
import myinfo.ServiceBean;

public interface InformationDAO {
	public void addLanguage(String id,String title,String rating,String score, Date day);
	public ArrayList<LanguageBean> getAllLanguage(String id);
	public void modifyLanguage(String id,String title,String rating,String score, Date day,int num);
	
	public void addLicense(String id,String title,String rating,String company, Date day);
	public ArrayList<LicenseBean> getAllLicense(String id);
	public void modifyLicense(String id,String title,String rating,String company, Date day,int num);
	
	public void addAward(String id,String title,String rating,String company, Date day);
	public ArrayList<AwardBean> getAllAward(String id);
	public void modifyAward(String id,String title,String rating,String company, Date day,int num);
	
	public void addCareer(String id,String kind,String company,String business, Date sday,Date eday);
	public ArrayList<CareerBean> getAllCareer(String id);	
	public void modifyCareer(String id,String kind,String company,String business, Date sday,Date eday,int num);
	
	public void addService(String id, String kind, String company, String title, Date sday, Date eday);
	public ArrayList<ServiceBean> getAllService(String id);
	void modifyService(String id, String kind, String company, String title, Date sday, Date eday, int num);
	public void addEtc(String id, String company, String title, Date sday, Date eday);
	public ArrayList<EtcBean> getAllEtc(String id);
	void modifyEtc(String id, String company, String title, Date sday, Date eday, int num);	
	
	
}
