package connection;

import java.sql.Date;
import java.util.ArrayList;

import myinfo.AwardBean;
import myinfo.CareerBean;
import myinfo.LanguageBean;
import myinfo.LicenseBean;

public interface InformationDAO {
	public void addLanguage(String id,String title,String rating,String score, Date day);
	public ArrayList<LanguageBean> getAllLanguage(String id);
	public void addLicense(String id,String title,String rating,String company, Date day);
	public ArrayList<LicenseBean> getAllLicense(String id);
	public void addAward(String id,String title,String rating,String company, Date day);
	public ArrayList<AwardBean> getAllAward(String id);
	public void addCareer(String id,String kind,String company,String business, Date sday,Date eday);
	public ArrayList<CareerBean> getAllCareer(String id);
}
