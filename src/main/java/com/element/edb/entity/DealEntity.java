package com.element.edb.entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.element.edb.entity.CommonEntity;

@Entity
@Table (name = "deal")
public class DealEntity extends CommonEntity implements Serializable {

	
	private  static final long serialVersionUID = 1L;
	
	@Id
    @Column(name = "deal_id")
    private long dealId;
	
	
	@Column(name = "amrt_terms_desc")
	private String amrtTermsDesc; 
	
	@Column(name = "apprvl_of_cli_chng_ind", nullable = false)
	private int apprvlOfCliChngInd;   
	
	@Column(name = "backend_int_start_cd")
	private Integer backendIntStartCd;
	
	@Column(name = "calculate_net_present_val_ind", nullable = false)
	private int calculateNetPresent_valInd;
	
	@Column(name = "clawback_days_cd")
	private Integer clawbackDaysCd;
	
	@Column(name = "cli_pymt_term_cd")
	private Integer cliPymtTermCd;
	
	@Column(name = "cont_typ")
	private String contTyp;
	
	@Column(name = "corp_cd", nullable = false)
	private String corpCd;
	
	@Column(name = "deal_amt")
	private BigDecimal dealAmt;
	
	@Column(name = "deal_bill_thru_cd")
	private Integer dealBillThruCd;
	
	@Column(name = "deal_dif_int_ind", nullable = false)
	private int dealDifIntInd;
	
	@Column(name = "deal_end_dt")
	private String dealEndDt;
	
	@Column(name = "deal_final_pymt_dt")
	private String dealFinalPymtDt;
	
	@Column(name = "deal_stat_cd")
	private int dealStatCd;
	
	@Column(name = "deal_stat_dt")
	private String dealStatDt;
	
	@Column(name = "fin_covenant_ind", nullable = false)
	private int finCovenantInd;
	
	@Column(name = "fixed_rt_ind", nullable = false)
	private int fixedRtInd;
	
	@Column(name = "forward_cli_ins_cert_ind", nullable = false)
	private int forwardCliInsCertInd;
	
	@Column(name = "forward_cli_fin_stmnt_ind", nullable = false)
	private int forwardCliFinStmntInd;
	
	@Column(name = "forward_psn_property_tax_ind", nullable = false)
	private int forwardPsnPropertyTaxInd;
	
	@Column(name = "forward_sale_and_use_tax_ind", nullable = false)
	private int forwardSaleAnd_useTaxInd;
	
	@Column(name = "interim_rent_ind", nullable = false)
	private int interimRentInd;
	
	@Column(name = "investor_int_rt")
	private BigDecimal investorIntRt;
	
	@Column(name = "investor_pymt_amt")
	private BigDecimal investorPymtAmt;
	
	@Column(name = "investor_pymt_stat_cd")
	private Integer investorPymtStatCd;
	
	@Column(name = "investor_pymt_txn_dt")
	private String investorPymtTxnDt;
	
	@Column(name = "investor_pymt_txn_no", nullable = false)
	private String investorPymtTxnNo;
	
	@Column(name = "investor_pymt_typ_cd")
	private Integer investorPymtTypCd;
	
	@Column(name = "ISO_currency_typ_cd", nullable = false)
	private String iSOCurrencyTypCd;
	
	@Column(name = "mult_investor_ind", nullable = false)
	private int multInvestorInd;
	
	@Column(name = "nonperiodic_no_of_days")
	private int nonperiodicNoOfDays;
	
	@Column(name = "notify_on_cli_dflt_ind", nullable = false)
	private int notifyOnCliDfltInd;
	
	@Column(name = "perfect_pymt_ind", nullable = false)
	private int perfectPymtInd;
	
	@Column(name = "prompt_pay_day_of_mo_to_pay_cd")
	private Integer promptPayDayOf_moToPayCd;
	
	@Column(name = "prorate_ind", nullable = false)
	private int prorateInd;
	
	@Column(name = "pymt_details_due_no_of_days")
	private int pymtDetailsDueNoOfDays;
	
	@Column(name = "pymt_no_of_days")
	private Integer pymtNoOfDays;
	
	@Column(name = "pymt_schedule_typ_cd")
	private Integer pymtScheduleTypCd;
	
	@Column(name = "regular_pymt_no_of_days")
	private int regularPymtNoOfDays;
	
	@Column(name = "rntl_start_dt")
	private String rntlStartDt;
	
	@Column(name = "schedule_F_ind", nullable = false)
	private int scheduleFInd;
	
	@Column(name = "split_int_ind", nullable = false)
	private int splitIntInd;
	
	@Column(name = "unamort_gain_ind", nullable = false)
	private int unamortGainInd;
	
	@Column(name = "upfront_fee_ind", nullable = false)
	private int upfrontFeeInd;
	
	@Column(name = "int_rt_id")
	private String intRtId;
	
	@Column(name = "off_bk_ind", nullable = false)
	private int offBkInd;


	
	public long getDealId() {
		return dealId;
	}

	public void setDealId(long dealId) {
		this.dealId = dealId;
	}

	public String getAmrtTermsDesc() {
		return amrtTermsDesc;
	}

	public void setAmrtTermsDesc(String amrtTermsDesc) {
		this.amrtTermsDesc = amrtTermsDesc;
	}

	
	
	public String getiSOCurrencyTypCd() {
		return iSOCurrencyTypCd;
	}

	public void setiSOCurrencyTypCd(String iSOCurrencyTypCd) {
		this.iSOCurrencyTypCd = iSOCurrencyTypCd;
	}

	public int getApprvlOfCliChngInd() {
		return apprvlOfCliChngInd;
	}

	public void setApprvlOfCliChngInd(int apprvlOfCliChngInd) {
		this.apprvlOfCliChngInd = apprvlOfCliChngInd;
	}

	public Integer getBackendIntStartCd() {
		return backendIntStartCd;
	}

	public void setBackendIntStartCd(Integer backendIntStartCd) {
		this.backendIntStartCd = backendIntStartCd;
	}

	public int getCalculateNetPresent_valInd() {
		return calculateNetPresent_valInd;
	}

	public void setCalculateNetPresent_valInd(int calculateNetPresent_valInd) {
		this.calculateNetPresent_valInd = calculateNetPresent_valInd;
	}

	public Integer getClawbackDaysCd() {
		return clawbackDaysCd;
	}

	public void setClawbackDaysCd(Integer clawbackDaysCd) {
		this.clawbackDaysCd = clawbackDaysCd;
	}

	public Integer getCliPymtTermCd() {
		return cliPymtTermCd;
	}

	public void setCliPymtTermCd(Integer cliPymtTermCd) {
		this.cliPymtTermCd = cliPymtTermCd;
	}

	public String getContTyp() {
		return contTyp;
	}

	public void setContTyp(String contTyp) {
		this.contTyp = contTyp;
	}

	public String getCorpCd() {
		return corpCd;
	}

	public void setCorpCd(String corpCd) {
		this.corpCd = corpCd;
	}

	public BigDecimal getDealAmt() {
		return dealAmt;
	}

	public void setDealAmt(BigDecimal dealAmt) {
		this.dealAmt = dealAmt;
	}

	public Integer getDealBillThruCd() {
		return dealBillThruCd;
	}

	public void setDealBillThruCd(Integer dealBillThruCd) {
		this.dealBillThruCd = dealBillThruCd;
	}

	public int getDealDifIntInd() {
		return dealDifIntInd;
	}

	public void setDealDifIntInd(int dealDifIntInd) {
		this.dealDifIntInd = dealDifIntInd;
	}

	public String getDealEndDt() {
		return dealEndDt;
	}

	public void setDealEndDt(String dealEndDt) {
		this.dealEndDt = dealEndDt;
	}

	public String getDealFinalPymtDt() {
		return dealFinalPymtDt;
	}

	public void setDealFinalPymtDt(String dealFinalPymtDt) {
		this.dealFinalPymtDt = dealFinalPymtDt;
	}

	public int getDealStatCd() {
		return dealStatCd;
	}

	public void setDealStatCd(int dealStatCd) {
		this.dealStatCd = dealStatCd;
	}

	public String getDealStatDt() {
		return dealStatDt;
	}

	public void setDealStatDt(String dealStatDt) {
		this.dealStatDt = dealStatDt;
	}

	public int getFinCovenantInd() {
		return finCovenantInd;
	}

	public void setFinCovenantInd(int finCovenantInd) {
		this.finCovenantInd = finCovenantInd;
	}

	public int getFixedRtInd() {
		return fixedRtInd;
	}

	public void setFixedRtInd(int fixedRtInd) {
		this.fixedRtInd = fixedRtInd;
	}

	public int getForwardCliInsCertInd() {
		return forwardCliInsCertInd;
	}

	public void setForwardCliInsCertInd(int forwardCliInsCertInd) {
		this.forwardCliInsCertInd = forwardCliInsCertInd;
	}

	public int getForwardCliFinStmntInd() {
		return forwardCliFinStmntInd;
	}

	public void setForwardCliFinStmntInd(int forwardCliFinStmntInd) {
		this.forwardCliFinStmntInd = forwardCliFinStmntInd;
	}

	public int getForwardPsnPropertyTaxInd() {
		return forwardPsnPropertyTaxInd;
	}

	public void setForwardPsnPropertyTaxInd(int forwardPsnPropertyTaxInd) {
		this.forwardPsnPropertyTaxInd = forwardPsnPropertyTaxInd;
	}

	public int getForwardSaleAnd_useTaxInd() {
		return forwardSaleAnd_useTaxInd;
	}

	public void setForwardSaleAnd_useTaxInd(int forwardSaleAnd_useTaxInd) {
		this.forwardSaleAnd_useTaxInd = forwardSaleAnd_useTaxInd;
	}

	public int getInterimRentInd() {
		return interimRentInd;
	}

	public void setInterimRentInd(int interimRentInd) {
		this.interimRentInd = interimRentInd;
	}

	public BigDecimal getInvestorIntRt() {
		return investorIntRt;
	}

	public void setInvestorIntRt(BigDecimal investorIntRt) {
		this.investorIntRt = investorIntRt;
	}

	public BigDecimal getInvestorPymtAmt() {
		return investorPymtAmt;
	}

	public void setInvestorPymtAmt(BigDecimal investorPymtAmt) {
		this.investorPymtAmt = investorPymtAmt;
	}

	public Integer getInvestorPymtStatCd() {
		return investorPymtStatCd;
	}

	public void setInvestorPymtStatCd(Integer investorPymtStatCd) {
		this.investorPymtStatCd = investorPymtStatCd;
	}

	public String getInvestorPymtTxnDt() {
		return investorPymtTxnDt;
	}

	public void setInvestorPymtTxnDt(String investorPymtTxnDt) {
		this.investorPymtTxnDt = investorPymtTxnDt;
	}

	public String getInvestorPymtTxnNo() {
		return investorPymtTxnNo;
	}

	public void setInvestorPymtTxnNo(String investorPymtTxnNo) {
		this.investorPymtTxnNo = investorPymtTxnNo;
	}

	public Integer getInvestorPymtTypCd() {
		return investorPymtTypCd;
	}

	public void setInvestorPymtTypCd(Integer investorPymtTypCd) {
		this.investorPymtTypCd = investorPymtTypCd;
	}

	

	public int getMultInvestorInd() {
		return multInvestorInd;
	}

	public void setMultInvestorInd(int multInvestorInd) {
		this.multInvestorInd = multInvestorInd;
	}

	public int getNonperiodicNoOfDays() {
		return nonperiodicNoOfDays;
	}

	public void setNonperiodicNoOfDays(int nonperiodicNoOfDays) {
		this.nonperiodicNoOfDays = nonperiodicNoOfDays;
	}

	public int getNotifyOnCliDfltInd() {
		return notifyOnCliDfltInd;
	}

	public void setNotifyOnCliDfltInd(int notifyOnCliDfltInd) {
		this.notifyOnCliDfltInd = notifyOnCliDfltInd;
	}

	public int getPerfectPymtInd() {
		return perfectPymtInd;
	}

	public void setPerfectPymtInd(int perfectPymtInd) {
		this.perfectPymtInd = perfectPymtInd;
	}

	public Integer getPromptPayDayOf_moToPayCd() {
		return promptPayDayOf_moToPayCd;
	}

	public void setPromptPayDayOf_moToPayCd(Integer promptPayDayOf_moToPayCd) {
		this.promptPayDayOf_moToPayCd = promptPayDayOf_moToPayCd;
	}

	public int getProrateInd() {
		return prorateInd;
	}

	public void setProrateInd(int prorateInd) {
		this.prorateInd = prorateInd;
	}

	public int getPymtDetailsDueNoOfDays() {
		return pymtDetailsDueNoOfDays;
	}

	public void setPymtDetailsDueNoOfDays(int pymtDetailsDueNoOfDays) {
		this.pymtDetailsDueNoOfDays = pymtDetailsDueNoOfDays;
	}

	public Integer getPymtNoOfDays() {
		return pymtNoOfDays;
	}

	public void setPymtNoOfDays(Integer pymtNoOfDays) {
		this.pymtNoOfDays = pymtNoOfDays;
	}

	public Integer getPymtScheduleTypCd() {
		return pymtScheduleTypCd;
	}

	public void setPymtScheduleTypCd(Integer pymtScheduleTypCd) {
		this.pymtScheduleTypCd = pymtScheduleTypCd;
	}

	public int getRegularPymtNoOfDays() {
		return regularPymtNoOfDays;
	}

	public void setRegularPymtNoOfDays(int regularPymtNoOfDays) {
		this.regularPymtNoOfDays = regularPymtNoOfDays;
	}

	public String getRntlStartDt() {
		return rntlStartDt;
	}

	public void setRntlStartDt(String rntlStartDt) {
		this.rntlStartDt = rntlStartDt;
	}

	public int getScheduleFInd() {
		return scheduleFInd;
	}

	public void setScheduleFInd(int scheduleFInd) {
		this.scheduleFInd = scheduleFInd;
	}

	public int getSplitIntInd() {
		return splitIntInd;
	}

	public void setSplitIntInd(int splitIntInd) {
		this.splitIntInd = splitIntInd;
	}

	public int getUnamortGainInd() {
		return unamortGainInd;
	}

	public void setUnamortGainInd(int unamortGainInd) {
		this.unamortGainInd = unamortGainInd;
	}

	public int getUpfrontFeeInd() {
		return upfrontFeeInd;
	}

	public void setUpfrontFeeInd(int upfrontFeeInd) {
		this.upfrontFeeInd = upfrontFeeInd;
	}
	
	

	public String getIntRtId() {
		return intRtId;
	}

	public void setIntRtId(String intRtId) {
		this.intRtId = intRtId;
	}

	public int getOffBkInd() {
		return offBkInd;
	}

	public void setOffBkInd(int offBkInd) {
		this.offBkInd = offBkInd;
	}

	@Override
	public int hashCode() {
		
		final int prime = 17;
		int result = 1;
		result = prime * result
				+ Long.hashCode(dealId);
		result = prime * result
				+ ((amrtTermsDesc==null)?0:amrtTermsDesc.hashCode()); 
		result = prime * result
				+ Integer.hashCode(apprvlOfCliChngInd);
		result = prime * result
				+ ((backendIntStartCd==null)?0:backendIntStartCd.hashCode());   
		result = prime * result
				+ Integer.hashCode(calculateNetPresent_valInd);
		
		result = prime * result
				+ ((clawbackDaysCd==null)?0:clawbackDaysCd.hashCode());
		
		result = prime * result + ((cliPymtTermCd == null) ? 0:cliPymtTermCd.hashCode());
		
		
		
		result = prime * result
				+ ((contTyp==null)?0:contTyp.hashCode());
		
		
		result = prime * result
				+ ((corpCd==null)?0:corpCd.hashCode());
		
		
		result = prime * result
				+ ((dealAmt==null)?0:dealAmt.hashCode());
		
		result = prime * result
				+  ((dealBillThruCd==null)?0:dealBillThruCd.hashCode());
			
		
		result = prime * result
				+ Integer.hashCode(dealDifIntInd);
		
		result = prime * result
				+ ((dealEndDt==null)?0:dealEndDt.hashCode());
				
		
		result = prime * result
				+ ((dealFinalPymtDt==null)?0:dealFinalPymtDt.hashCode());
			
		
		result = prime * result
				+   dealStatCd; 
			
		
		result = prime * result
				+  ((dealStatDt==null)?0:dealStatDt.hashCode());
				
		
		result = prime * result
				+ Integer.hashCode(finCovenantInd);
		
		result = prime * result
				+ Integer.hashCode(fixedRtInd);

		result = prime * result
				+ Integer.hashCode(forwardCliInsCertInd);
		

		result = prime * result
				+ Integer.hashCode(forwardCliFinStmntInd);

		result = prime * result
				+ Integer.hashCode(forwardPsnPropertyTaxInd);

		result = prime * result
				+ Integer.hashCode(forwardSaleAnd_useTaxInd);
		
		result = prime * result
				+ Integer.hashCode(interimRentInd);
		
		result = prime * result
				+ ((investorIntRt==null)?0:investorIntRt.hashCode());
		
		
		result = prime * result
				+ ((investorPymtAmt==null)?0:investorPymtAmt.hashCode()); 
		
		
		result = prime * result
				+ ((investorPymtStatCd==null)?0:investorPymtStatCd.hashCode()); 
				
		
		result = prime * result
				+ ((investorPymtTxnDt==null)?0:investorPymtTxnDt.hashCode());
		
		result = prime * result
				+ ((investorPymtTxnNo==null)?0:investorPymtTxnNo.hashCode()); 
				
		
		
		result = prime * result
				+ ((investorPymtTypCd==null)?0:investorPymtTypCd.hashCode()); 
		
		result = prime * result
				+ ((iSOCurrencyTypCd==null)?0:iSOCurrencyTypCd.hashCode()); 
		
		result = prime * result
				+ Integer.hashCode(multInvestorInd);
		
		result = prime * result
				+ Integer.hashCode(nonperiodicNoOfDays); 
		
		
		result = prime * result
				+  Integer.hashCode(notifyOnCliDfltInd);
		
		result = prime * result
				+  Integer.hashCode(perfectPymtInd);
		
		
		result = prime * result
				+ ((promptPayDayOf_moToPayCd==null)?0:promptPayDayOf_moToPayCd.hashCode());
		
		result = prime * result
				+ Integer.hashCode(prorateInd);
		
		result = prime * result
				+ ((pymtNoOfDays==null)?0:pymtNoOfDays.hashCode());
		
		result = prime * result
				+ ((pymtScheduleTypCd==null)?0:pymtScheduleTypCd.hashCode());
		
		result = prime * result
				+ Integer.hashCode(regularPymtNoOfDays);
		
		result = prime * result
				+ ((rntlStartDt==null)?0:rntlStartDt.hashCode());
		
		result = prime * result
				+ Integer.hashCode(scheduleFInd);
		
		result = prime * result
				+ Integer.hashCode(splitIntInd);
		
		result = prime * result
				+ Integer.hashCode(unamortGainInd);
		 
		result = prime * result
				+ Integer.hashCode(upfrontFeeInd);
		
		result = prime * result
				+ Integer.hashCode(upfrontFeeInd);
	
		
		
		return result;
		
		
	}
	
	@Override
	public boolean equals(Object obj) {
		
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
	
		DealEntity other = (DealEntity) obj;
			if (other.getDealId() != dealId)
				return false;
			
			
		return true;
	}

	
	
	
}
