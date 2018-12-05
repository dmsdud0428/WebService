package connection;

import java.util.ArrayList;

import myinfo.GraduateBean;

public interface GraduateDAO {
	public ArrayList<GraduateBean> get2016Graduate();
	public ArrayList<GraduateBean> get2017Graduate();
	public ArrayList<GraduateBean> get2018Graduate();
}
