package com.axt.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.axt.po.TbRule;


@Component("tbRuleDao")
@Repository
public class TbRuleDao {
	private HibernateTemplate hibernateTemplate;
	/**
	 * 统计规则个数
	 * 
	 * @return int
	 */
	public int countAllRule() {
		return this.hibernateTemplate.find("from TbRule").size();
	}
	/**
	 * 查询所有规则--分页
	 * 
	 * @return List<TbRule>
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public List<TbRule> queryAllRule(int pageSize, int startRow) {
		Query query = this.hibernateTemplate.getSessionFactory().openSession().createQuery("from TbRule");
		query.setFirstResult(startRow);
		query.setMaxResults(pageSize);
		return query.list();
	}
	/**
	 * 根据Id删除rule
	 * 
	 * @return
	 * @throws Exception
	 */
	public void deleteRuleById(Integer id) {
		// TODO Auto-generated method stub
		this.hibernateTemplate.delete(this.hibernateTemplate.get(TbRule.class, id));
	}
	/**
	 * 根据Id查询rule
	 * 
	 * @return
	 * @throws Exception
	 */
	public TbRule queryRuleById(Integer id) {
		// TODO Auto-generated method stub
		return this.hibernateTemplate.get(TbRule.class, id);
	}
	public void updateRule(TbRule tbRule) {
		// TODO Auto-generated method stub
		this.hibernateTemplate.update(tbRule);
	}
	
	public void createRule(TbRule tbRule) {
		// TODO Auto-generated method stub
		this.hibernateTemplate.save(tbRule);
	}
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}
	@Resource
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
}
