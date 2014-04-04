package com.axt.action;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ExceptionMapping;
import org.apache.struts2.convention.annotation.ExceptionMappings;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.axt.comm.action.PagerBaseAction;
import com.axt.comm.util.SharePager;
import com.axt.dao.TbLogDao;
import com.axt.dao.TbRuleDao;
import com.axt.dao.TbSettingDao;
import com.axt.po.TbLog;
import com.axt.po.TbRule;
import com.axt.po.TbSetting;
import com.axt.po.TbUser;
import com.axt.vo.RuleType;

@ParentPackage("struts-default")    
@Namespace("")    
@Results({   
	@Result(name = "exception", location = "/admin/common/jsp/exception.jsp"),    
	@Result(name = "queryAllRuleSuccess", location="/admin/jsp/rule/queryAllRule.jsp"),
	@Result(name = "SUCCESS", location="/admin/jsp/rule/createRule.jsp"),
	@Result(name = "queryRuleByIdSuccess", location="/admin/jsp/rule/updateRule.jsp")
})  
   
@ExceptionMappings({  
	@ExceptionMapping(exception = "java.lang.Exception", result = "exception")})
@Action("tbRuleAction")
@Component
@Scope("prototype")
public class TbRuleAction extends PagerBaseAction{
	/**
	 * 
	 */
	private static final long serialVersionUID = 3120906873596877974L;
	private List<TbRule> tbRuleList; //规则列表
	private TbRule tbRule;          //规则对象
	private TbRuleDao tbRuleDao;    //规则DAO对象
	private List<TbSetting> tbSettingList; //设置列表
	private TbSettingDao tbSettingDao;    //设置DAO对象
	private TbSetting tbSetting;      //设置对象
	private List<RuleType> ruleTypeList; //ruleTypeList对象 用于表单选择
	private int type;
	private TbLogDao tbLogDao; //日志DAO对象
	/**
	 * 创建日志
	 * 
	 * @param content
	 * @throws Exception
	 */
	public void CreateLog(String content){
		try {
			TbUser user = new TbUser();
			user = (TbUser) ServletActionContext.getRequest().getSession()
					.getAttribute("currentUser");
			if (user != null) {
				TbLog tbLog = new TbLog();
				tbLog.setTbUser(user);
				tbLog.setContent(content);
				Timestamp date = new Timestamp(System.currentTimeMillis());
				tbLog.setDate(date);
				tbLogDao.createUserlog(tbLog);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	/**
	 * 添加时，初始化
	 * 
	 * @return
	 * @throws Exception
	 */
	public String excute() throws Exception {
		try {
			RuleType ruleType1 = new RuleType(0,"星期");
			RuleType ruleType2 = new RuleType(1,"月-日");
			RuleType ruleType3 = new RuleType(2,"年-月-日");
			ruleTypeList = new ArrayList<RuleType>();
			ruleTypeList.add(ruleType1);
			ruleTypeList.add(ruleType2);
			ruleTypeList.add(ruleType3);
			tbSettingList = tbSettingDao.queryAllSetting();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "SUCCESS";
	}
	/**
	 * 添加rule
	 * 
	 * @return
	 * @throws Exception
	 */
	public String createRule() throws Exception {
		try {
			tbRule.setTbSetting(tbSetting);
			tbRule.setType((short)type);
			this.tbRuleDao.createRule(tbRule);
		} catch (Exception e) {
			e.printStackTrace();
			return "exception";
		}
		this.CreateLog("添加了规则："+tbRule.getRule());
		return queryAllRule();
	}
	/**
	 * 更新rule
	 * 
	 * @return
	 * @throws Exception
	 */
	public String updateRule() throws Exception {
		try {
			tbRule.setTbSetting(tbSetting);
			this.tbRuleDao.updateRule(tbRule);
		} catch (Exception e) {
			e.printStackTrace();
			return "exception";
		}
		this.CreateLog("更新了规则："+tbRule.getRule());
		return queryAllRule();
	}
	/**
	 * 查询所有的规则--分页
	 * 
	 * @return
	 * @throws Exception
	 */
	public String queryAllRule() throws Exception {
		try {
			if (this.totalRows == 0 ) {
				this.totalRows = tbRuleDao.countAllRule();
			}
			SharePager pager = this.paging();
			tbRuleList = tbRuleDao.queryAllRule(pager.getPageSize(), pager
					.getStartRow());
		}catch (Exception e){
			e.printStackTrace();
			return "exception";
		}
		return "queryAllRuleSuccess";
	}
	/**
	 * 根据Id删除rule
	 * 
	 * @return
	 * @throws Exception
	 */
	public String deleteRuleById() throws Exception {
		try {
			this.tbRuleDao.deleteRuleById(tbRule.getId());
		} catch (Exception e) {
			e.printStackTrace();
			return "exception";
		}
		this.CreateLog("删除了规则："+tbRule.getRule());
		return queryAllRule();
	}
	/**
	 * 根据Id查询rule
	 * 
	 * @return
	 * @throws Exception
	 */
	public String queryRuleById() throws Exception {
		try {
			tbSettingList = tbSettingDao.queryAllSetting();
			tbRule = tbRuleDao.queryRuleById(tbRule.getId());
		} catch (Exception e) {
			e.printStackTrace();
			return queryAllRule();
		}
		return "queryRuleByIdSuccess";
	}
	public TbRuleDao getTbRuleDao() {
		return tbRuleDao;
	}
	@Resource
	public void setTbRuleDao(TbRuleDao tbRuleDao) {
		this.tbRuleDao = tbRuleDao;
	}
	public List<TbRule> getTbRuleList() {
		return tbRuleList;
	}
	public void setTbRuleList(List<TbRule> tbRuleList) {
		this.tbRuleList = tbRuleList;
	}
	public TbRule getTbRule() {
		return tbRule;
	}
	public void setTbRule(TbRule tbRule) {
		this.tbRule = tbRule;
	}

	public List<TbSetting> getTbSettingList() {
		return tbSettingList;
	}

	public void setTbSettingList(List<TbSetting> tbSettingList) {
		this.tbSettingList = tbSettingList;
	}

	public TbSettingDao getTbSettingDao() {
		return tbSettingDao;
	}
	@Resource
	public void setTbSettingDao(TbSettingDao tbSettingDao) {
		this.tbSettingDao = tbSettingDao;
	}
	public TbSetting getTbSetting() {
		return tbSetting;
	}
	public void setTbSetting(TbSetting tbSetting) {
		this.tbSetting = tbSetting;
	}
	public void setRuleTypeList(List<RuleType> ruleTypeList) {
		this.ruleTypeList = ruleTypeList;
	}
	public List<RuleType> getRuleTypeList() {
		return ruleTypeList;
	}
	public void setType(int type) {
		this.type = type;
	}
	public int getType() {
		return type;
	}
	public TbLogDao getTbLogDao() {
		return tbLogDao;
	}
	@Resource
	public void setTbLogDao(TbLogDao tbLogDao) {
		this.tbLogDao = tbLogDao;
	}
	
}
