package com.axt.po;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * TbRule entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "tb_rule", catalog = "axt")
public class TbRule implements java.io.Serializable {

	// Fields

	private Integer id;
	private TbSetting tbSetting;
	private String rule;
	private Short type;

	// Constructors

	/** default constructor */
	public TbRule() {
	}

	/** full constructor */
	public TbRule(TbSetting tbSetting, String rule, Short type) {
		this.tbSetting = tbSetting;
		this.rule = rule;
		this.type = type;
	}

	// Property accessors
	@Id
	@GeneratedValue
	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "TB_SETTING_id")
	public TbSetting getTbSetting() {
		return this.tbSetting;
	}

	public void setTbSetting(TbSetting tbSetting) {
		this.tbSetting = tbSetting;
	}

	@Column(name = "rule", length = 45)
	public String getRule() {
		return this.rule;
	}

	public void setRule(String rule) {
		this.rule = rule;
	}

	@Column(name = "type")
	public Short getType() {
		return this.type;
	}

	public void setType(Short type) {
		this.type = type;
	}

}