package com.py.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.py.beans.Info;
import com.py.biz.InfoBiz;
import com.py.util.PageBean;

public class InfoAction extends ActionSupport implements ModelDriven<Info> {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Info infos = new Info();
	private InfoBiz infoBiz;
	
	//��ȡ��ǰϵͳʱ��
	Date now=new Date();
	//ת��ʱ���ʽΪ��-��-�յķ���
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
	String datetime=sdf.format(now);
	
	//����pagebean �����Ƚ���ʵ����
	private PageBean pb =new PageBean();
	//Ȼ�����pagebean����ķ���������ǰ�涨���˽���ֵ���ܵ���pb.����
	 String datetime2=pb.toString();
	
	//ͨ���̳е�ModelDriven<Info> ���� ����ȡjspҳ�洫������ֵ
	public Info getModel() {
		return infos;
	}
	

	public void setInfoBiz(InfoBiz infoBiz) {
		this.infoBiz = infoBiz;
	}
	public InfoBiz getInfoBiz() {
		return infoBiz;
	}
	
	
	

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return super.execute();
	}
	
	
	//��ѯȫ����Ϣ
	public String findInfo() throws Exception {
		//��ѯ���Ľ����һ����Ϣ�ļ��ϣ���list�����
		List<Info> list = infoBiz.finAll();
		//�Ѳ�ѯ���Ľ���ŵ� list��ȥ���Ա�jspҳ���ܻ�ȡ��
		ActionContext.getContext().put("list", list);
		return SUCCESS;
	}
	//ͨ��id��ɾ��������Ϣ
	public String delInfo() throws Exception {
		infoBiz.deleteOne(infos.getIid());
		return SUCCESS;
	}
	//������Ϣ
	public String addinformation() throws Exception {
		//�ѻ�ȡ����ϵͳʱ�����infos������
		infos.setDatetime(datetime);
		//�����Ϣ
		infoBiz.addinformation(infos);
		return SUCCESS;
	}
    //ͨ��ID���ҵ���
	public String findById() throws Exception {
		//���صĽ����info���͵ĵ�������
		Info info = infoBiz.findById(infos.getIid());
		//�Ѳ�ѯ���Ľ���ŵ� info��ȥ���Ա�jspҳ���ܻ�ȡ��
		ActionContext.getContext().put("info", info);
		return SUCCESS;
	}
	//���µ�������
	public String updateinformation() throws Exception {
		//�ѻ�ȡ����ϵͳʱ�����infos������
		infos.setDatetime(datetime);
		//�������ݿ�
		infoBiz.updateinformation(infos);
		return SUCCESS;
	}
	//�������Ͳ�ѯ����
		public String findByType() throws Exception {
			//��ѯ����1
			List<Info> info1 = infoBiz.findByType("��������");
			//�Ѳ�ѯ���Ľ���ŵ� info1��ȥ���Ա�jspҳ���ܻ�ȡ��
			ActionContext.getContext().put("list1", info1);
			//��ѯ����2
			List<Info> info2 = infoBiz.findByType("��������");
			ActionContext.getContext().put("list2", info2);
			//��ѯ����3
			List<Info> info3 = infoBiz.findByType("��������");
			ActionContext.getContext().put("list3", info3);
			return SUCCESS;
		}
	
}
