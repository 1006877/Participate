package com.element.requestcenter.buyOutQuote.web.controller;
import javax.validation.Valid;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.element.framework.web.security.domain.User;
import com.element.requestcenter.buyOutQuote.domain.BuyOutQuoteContRateAttrRequest;
import com.element.requestcenter.buyOutQuote.domain.BuyOutQuoteContRateRequest;
import com.element.requestcenter.buyOutQuote.domain.BuyOutQuoteInterestRequest;
import com.element.requestcenter.buyOutQuote.domain.BuyOutQuoteInvoicesRequest;
import com.element.requestcenter.buyOutQuote.domain.BuyOutQuoteInvoicesResponse;
import com.element.requestcenter.buyOutQuote.domain.BuyOutQuoteMastUnitRequest;
import com.element.requestcenter.buyOutQuote.domain.BuyOutQuoteMastUnitResponse;
import com.element.requestcenter.buyOutQuote.domain.BuyOutQuotePaymentsRequest;
import com.element.requestcenter.buyOutQuote.domain.BuyOutQuoteRequests;
import com.element.requestcenter.buyOutQuote.domain.BuyOutQuoteResponse;
import com.element.requestcenter.buyOutQuote.service.BuyOutQuoteService;
import com.element.requestcenter.common.domain.LoggedInUser;

@Controller
public class BuyOutQuoteController {
	private static final Logger LOGGER = LogManager.getLogger();
	
	@Autowired
	@Qualifier("proxyBuyOutQuoteServiceImpl")
	BuyOutQuoteService buyOutService;

	

	
	@RequestMapping(value="/requestCenterHome/fetchCalc",method=RequestMethod.POST)
	public @ResponseBody BuyOutQuoteResponse buyOutQuoteFetchCalc(@Valid @RequestBody BuyOutQuoteRequests buyOutQuoteRequests, @AuthenticationPrincipal User user){
		
		LOGGER.entry("Entering Web controller - buyOutQuoteFetchCalc buyOutQuoteRequests.getClientNo()="+buyOutQuoteRequests.getClientNo()+" buyOutQuoteRequests.getUnitNo()"+buyOutQuoteRequests.getUnitNo()+" buyOutDate="+buyOutQuoteRequests.getBuyOutDate());
		LOGGER.debug("Entering Web controller - buyOutQuoteFetchCalc buyOutQuoteRequests.getAdminFee()="+buyOutQuoteRequests.getAdminFee()+" buyOutQuoteRequests.getSalesTax()"+buyOutQuoteRequests.getSalesTax()+" buyOutQuoteRequests.getShippingFee()="+buyOutQuoteRequests.getShippingFee()+" buyOutQuoteRequests.getFmv()="+buyOutQuoteRequests.getFmv());
		
		LoggedInUser loggedInUser = new LoggedInUser();
		loggedInUser.setLogin(user.getLogin());
		loggedInUser.setFirstName(user.getFirstName());
		loggedInUser.setLastName(user.getLastName());
		buyOutQuoteRequests.setLoggedInUser(loggedInUser);
		
		BuyOutQuoteInterestRequest buyOutQuoteInterestRequest = new BuyOutQuoteInterestRequest();
		
		BuyOutQuoteInvoicesRequest invoicesRequest = new BuyOutQuoteInvoicesRequest();
		invoicesRequest.setSpinAssetId(57363);
		invoicesRequest.setVersionNumber(1);
		invoicesRequest.setLogin(user.getLogin());
		invoicesRequest.setAllClientAccess(user.getRoles().get("hasAllClientAccess"));
		
		BuyOutQuoteInvoicesResponse invoiceResponse = buyOutService.getInvoices(invoicesRequest);
		String dan = "225PM"; //This needs to be commented as this is a hardcode to test
//		String dan = invoiceResponse.getBuyOutQuoteInvoicesList().get(0).getDan();
//		String corpCode = invoiceResponse.getBuyOutQuoteInvoicesList().get(0).getCorpCode();+
		String corpCode = "FA";
		
		BuyOutQuotePaymentsRequest paymentsRequest = new BuyOutQuotePaymentsRequest();
		paymentsRequest.setHasAllClientaccess(user.getRoles().get("hasAllClientAccess"));
		paymentsRequest.setSpinAssetId(57363);
		paymentsRequest.setVersionNumber(1);
		
		BuyOutQuoteMastUnitRequest mastUnitRequest = new BuyOutQuoteMastUnitRequest();
		mastUnitRequest.setDan(dan);
		mastUnitRequest.setCorpCode(corpCode);
		
		BuyOutQuoteMastUnitResponse mastUnitResponse = buyOutService.getMastUnit(mastUnitRequest);
		String contNo = mastUnitResponse.getBuyOutQuoteMastUnitList().get(0).getContNo();
		String  pricingId = mastUnitResponse.getBuyOutQuoteMastUnitList().get(0).getPrcId();
		String prodClass = mastUnitResponse.getBuyOutQuoteMastUnitList().get(0).getProdClas();
		String lseTerm = mastUnitResponse.getBuyOutQuoteMastUnitList().get(0).getLseTerm();
		
		BuyOutQuoteContRateRequest contRateRequest = new BuyOutQuoteContRateRequest();
		contRateRequest.setContNo(contNo);
		contRateRequest.setPricingId(pricingId);
		contRateRequest.setCorpCode(corpCode);	
		contRateRequest.setLseStatus("A");
		
		BuyOutQuoteContRateAttrRequest contRateAttrRequest = new BuyOutQuoteContRateAttrRequest();
		contRateAttrRequest.setContNo(contNo);
		contRateAttrRequest.setPricingId(pricingId);
		contRateAttrRequest.setProdClass(prodClass);
		contRateAttrRequest.setLseTerm(lseTerm);
		contRateAttrRequest.setCorpCode(corpCode);		
		contRateAttrRequest.setLseStatus("A");	
		
		buyOutQuoteInterestRequest.setInvoicesRequest(invoicesRequest);
		buyOutQuoteInterestRequest.setPaymentsRequest(paymentsRequest);
		buyOutQuoteInterestRequest.setMastUnitRequest(mastUnitRequest);
		buyOutQuoteInterestRequest.setContRateRequest(contRateRequest);
		buyOutQuoteInterestRequest.setContRateAttrRequest(contRateAttrRequest);
		
		buyOutQuoteRequests.setBuyOutQuoteInterestRequest(buyOutQuoteInterestRequest);
		BuyOutQuoteResponse buyOutQuoteResponse = buyOutService.buyOutQuoteFetchCalc(buyOutQuoteRequests);
		//buyOutQuoteResponse.setLoggedInUser(loggedInUser);
		LOGGER.exit("Exiting Web controller - buyOutQuoteFetchCalc getDeficit_interest()="+buyOutQuoteResponse.getDeficit_interest());
		return buyOutQuoteResponse;
	}

}