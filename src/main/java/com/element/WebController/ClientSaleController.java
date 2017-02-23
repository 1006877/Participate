package com.element.requestcenter.clientsalenotice.web.controller;

import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import javax.xml.parsers.ParserConfigurationException;

import org.apache.commons.codec.binary.Base64;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.core.env.Environment;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.xml.sax.SAXException;

import com.element.common.controller.InternalWorkflowUpdate;
import com.element.framework.web.security.domain.User;
import com.element.requestcenter.bulkclientsalenotice.request.BulkClientSaleNoticeResponse;
import com.element.requestcenter.bulkclientsalenotice.service.BulkClientSaleNoticeService;
import com.element.requestcenter.clientsalenotice.domain.ClientSaleRequests;
import com.element.requestcenter.clientsalenotice.domain.ClientSaleResponse;
import com.element.requestcenter.clientsalenotice.service.ClientSaleAppService;
import com.element.requestcenter.clientsalenotice.service.ClientSaleService;
import com.element.requestcenter.common.domain.CityStateCountryRequest;
import com.element.requestcenter.common.domain.CityStateCountryResponse;
import com.element.requestcenter.common.domain.ClientInformation;
import com.element.requestcenter.common.domain.LoggedInUser;
import com.element.requestcenter.requeststatus.service.RequestCenterService;
import com.element.requestcenter.vehiclechange.service.VehicleChangeService;
import com.element.requestcenter.vehiclechange.updatevehicle.VehicleChangeRequest;
import com.element.requestcenter.vehiclechange.updatevehicle.VehicleChangeResponse;

@MultipartConfig(maxFileSize = 1024 * 1024 * 50)
@Controller
public class ClientSaleController {

	private static final Logger LOGGER = LogManager.getLogger();

	@Autowired
	Environment env;

	@Autowired
	@Qualifier("proxyVehicleChangeServiceImpl")
	VehicleChangeService vehicleChangeService;

	@Autowired
	@Qualifier("proxyRequestStatusServiceImpl")
	RequestCenterService requestCenterService;

	@Autowired
	@Qualifier("proxyClientSaleServiceImpl")
	ClientSaleService clientSaleService;

	@Autowired
	@Qualifier("proxyBulkClientSaleNoticeServiceImpl")
	BulkClientSaleNoticeService bulkClientSaleNoticeService;

	@Autowired
	@Qualifier("proxyClientSaleAppServiceImpl")
	ClientSaleAppService clientSaleAppService;

	@Autowired
	InternalWorkflowUpdate internalWorkflowUpdate;

	@RequestMapping(value = "/requestCenterHome/getclientsaleSearch", method = RequestMethod.POST)
	public @ResponseBody VehicleChangeResponse getVehicleSearchDetails(
			@Valid @RequestBody VehicleChangeRequest vehicleChangeRequest, @AuthenticationPrincipal User user) {

		LOGGER.entry("Entering Web controller - getVehicleWebController");

		LoggedInUser loggedInUser = new LoggedInUser();
		loggedInUser.setLogin(user.getLogin());
		loggedInUser.setFirstName(user.getFirstName());
		loggedInUser.setLastName(user.getLastName());
		vehicleChangeRequest.setLoggedInUser(loggedInUser);
		if (user.getAssetKey().equals("U")) {
			vehicleChangeRequest.setClientAssetId("");
		}

		ClientInformation clientInformation = new ClientInformation();
		clientInformation.setCorpCode(user.getCorpCode());
		clientInformation.setClientNumber(user.getActiveClientBkdn().getClientNumber());
		clientInformation.setHasAllClientAccess(user.getRoles().get("hasAllClientAccess"));
		vehicleChangeRequest.setClientInformation(clientInformation);
		vehicleChangeRequest.setClientSaleFlag("1");
		VehicleChangeResponse vehicleChangeResponse = requestCenterService.getVehicleSearchData(vehicleChangeRequest);

		LOGGER.exit("Exiting Web controller - getVehicleWebController");
		return vehicleChangeResponse;

	}

	@RequestMapping(value = "/requestCenterHome/getCityStateCountryByZipCode2", method = RequestMethod.POST)
	public @ResponseBody CityStateCountryResponse getCityStateCountryByZipCode2(
			@Valid @RequestBody CityStateCountryRequest cityStateCountryRequest) {

		LOGGER.entry("Entering Web controller - getCityStateCountryByZipCode");

		CityStateCountryResponse cityStateCountryResponse = requestCenterService
				.findCityStateByZip(cityStateCountryRequest);

		LOGGER.exit("Exiting Web controller - getCityStateCountryByZipCode");
		return cityStateCountryResponse;
	}

	@RequestMapping(value = "/requestCenterHome/onclientsaleSelectLink", method = RequestMethod.POST, headers = "Accept=application/json")
	public @ResponseBody ClientSaleResponse getClientsaleDetails(
			@Valid @RequestBody ClientSaleRequests clientSaleRequests, @AuthenticationPrincipal User user) {

		LOGGER.entry("Entering Web controller - afterSelectWebController");

		LoggedInUser loggedInUser = new LoggedInUser();
		loggedInUser.setLogin(user.getLogin());
		loggedInUser.setFirstName(user.getFirstName());
		loggedInUser.setLastName(user.getLastName());
		clientSaleRequests.setLoggedInUser(loggedInUser);

		ClientInformation clientInformation = new ClientInformation();
		clientInformation.setCorpCode(user.getCorpCode());
		clientInformation.setClientNumber(user.getActiveClientBkdn().getClientNumber());
		clientInformation.setPhhDialectCd(user.getPhhDialectCd());
		clientSaleRequests.setClientInformation(clientInformation);

		ClientSaleResponse clientSaleResponse = clientSaleService.getClientSalesData(clientSaleRequests);
		clientSaleResponse
				.setRequestedBy(user.getLastName() + ", " + user.getFirstName() + " (" + user.getLogin() + ")");
		clientSaleResponse.setLoggedInUser(loggedInUser);
		LOGGER.exit("Exiting Web controller - afterSelectWebController");
		return clientSaleResponse;
	}

	@RequestMapping(value = "/getclientsaleStates", method = RequestMethod.POST, headers = "Accept=application/json")
	public @ResponseBody BulkClientSaleNoticeResponse getclientsaleStates() {

		LOGGER.entry("Entering getStates(WebController) method...");

		BulkClientSaleNoticeResponse bulkClientSaleNoticeResponse = bulkClientSaleNoticeService.getStates();

		LOGGER.exit("Exiting getStates(WebController) method...");

		return bulkClientSaleNoticeResponse;
	}

	@RequestMapping(value = "/requestCenterHomefindZipCodeClient")
	public ModelAndView addDriverPopupNewClient(HttpServletRequest request, ModelMap map) {
		LOGGER.debug("In client sale Request Popup");
		ModelAndView modelview = new ModelAndView();
		modelview.addObject("zipCode", request.getParameter("zipCode"));
		modelview.setViewName("requestcenter.findZipCode");
		return modelview;
	}

	@RequestMapping(value = "/ClientSaleDocsUpload", method = RequestMethod.POST)
	public @ResponseBody String uploadFile(@RequestParam("fileName") MultipartFile file,
			@RequestParam("requestId") String requestId)
			throws IOException, SAXException, ParserConfigurationException {
		LOGGER.info("in uploadFile");

		String str1 = "CRF";

		String requestId1 = str1.concat(requestId);
		String fileData = "";

		String request = env.getProperty("requestCenter.fileUploadWS");

		URL url = new URL(request);
		String strdata = new String(Base64.encodeBase64(file.getBytes()));
		String extn = file.getOriginalFilename().indexOf('.') > -1
				? file.getOriginalFilename().substring(file.getOriginalFilename().indexOf('.') + 1) : "";
		fileData = extn;

		HttpURLConnection httpConn = (HttpURLConnection) url.openConnection();
		httpConn.setRequestMethod("POST");

		httpConn.setDoInput(true);
		httpConn.setDoOutput(true);

		OutputStream os = httpConn.getOutputStream();
		String str = URLEncoder.encode("ext", "UTF-8") + "=" + URLEncoder.encode(extn, "UTF-8") + "&"
				+ URLEncoder.encode("method", "UTF-8") + "=" + URLEncoder.encode("store", "UTF-8") + "&"
				+ URLEncoder.encode("workspace", "UTF-8") + "=" + URLEncoder.encode("dp", "UTF-8") + "&"

				+ URLEncoder.encode("crfID", "UTF-8") + "=" + URLEncoder.encode(requestId1, "UTF-8") + "&"
				+ URLEncoder.encode("FILENAME", "UTF-8") + "=" + URLEncoder.encode(file.getOriginalFilename(), "UTF-8");

		str = str + "&" + URLEncoder.encode("source", "UTF-8") + "=" + URLEncoder.encode(strdata, "UTF-8");
		os.write(str.getBytes());
		os.flush();
		os.close();
		httpConn.connect();

		int responseCode = httpConn.getResponseCode();
		LOGGER.info(responseCode);
		if (responseCode == 200) {

			LOGGER.info("File upload success");

		} else {
			LOGGER.info("File upload failed");
		}

		return "success";
	}

	@RequestMapping(value = "/clientsalesave", method = RequestMethod.POST)
	public @ResponseBody ClientSaleResponse clientsalesave(@RequestBody ClientSaleRequests clientSaleRequests,
			@AuthenticationPrincipal User user) throws IOException {
		clientSaleRequests.setAttachmentLength(1);
		LoggedInUser loggedInUser = new LoggedInUser();
		loggedInUser.setLogin(user.getLogin().trim());
		loggedInUser.setFirstName(user.getFirstName().trim());
		loggedInUser.setLastName(user.getLastName().trim());
		clientSaleRequests.setLoggedInUser(loggedInUser);
		ClientInformation clientInformation = new ClientInformation();
		clientInformation.setCorpCode(user.getCorpCode().trim());
		clientInformation.setClientNumber(user.getActiveClientBkdn().getClientNumber().trim());
		clientInformation.setPhhDialectCd(user.getPhhDialectCd());
		clientInformation.setClientName(user.getActiveClientBkdn().getClientName());
		clientSaleRequests.setClientInformation(clientInformation);
		ClientSaleResponse clientSaleResponse = new ClientSaleResponse();

		clientSaleResponse = clientSaleAppService.insertClientRequest(clientSaleRequests);

		boolean flag = false;

		flag = internalWorkflowUpdate.invokeInternalWFUpdateClientSalesWS(clientSaleResponse.getGeneralXMLInput());

		/*
		 * if (!flag) {
		 * 
		 * clientSaleResponse =
		 * clientSaleAppService.failedRequest(clientSaleRequests);
		 * 
		 * }
		 */

		LOGGER.exit("Exiting addVehicleDetails Webcontroller");

		return clientSaleResponse;

	}

	@RequestMapping(value = "/ClientSaleMultipleDocsUpload", method = RequestMethod.POST)
	public @ResponseBody String uploadMultipleFile(@RequestParam("files") List<MultipartFile> files,
			@RequestParam("requestId") String requestId)
			throws IOException, SAXException, ParserConfigurationException {
		LOGGER.info(">>>>>>>>>uploadMultipleFile");

		for (MultipartFile multipartFile : files) {
			try {

				uploadFile(multipartFile, requestId);
				LOGGER.info("File upload success");

			} catch (IOException e) {

				LOGGER.error("File upload failed" + e);

			}

		}

		return "success";
	}

	// AC_FSP CHANGES START
	@RequestMapping(value = "/requestCenterHome/buyOutQuotePopup")
	public ModelAndView requestCenterHomebuyOutQuotePopup(HttpServletRequest request, ModelMap map) {
		LOGGER.debug("requestcenter.buyOutQuotePopup request.getParameter('clientOdometer'):"
				+ request.getParameter("clientOdometer") + " request.getParameter('adminFee'):"
				+ request.getParameter("adminFee") + " request.getParameter('salesTax'):"
				+ request.getParameter("salesTax") + " request.getParameter('fmValue'):"
				+ request.getParameter("fmValue") + " request.getParameter('zip'):" + request.getParameter("zip")
				+ " request.getParameter('clientNo'):" + request.getParameter("clientNo")
				+ " request.getParameter('usedUnitNo'):" + request.getParameter("usedUnitNo"));
		LOGGER.debug("request.getParameter('overNightHandlingFee'):" + request.getParameter("overNightHandlingFee")
				+ " request.getParameter('purchaseType'):" + request.getParameter("purchaseType"));
		LOGGER.debug("request.getParameter('requestedBy')=" + request.getParameter("requestedBy"));
		// return "requestcenter.buyOutQuotePopup";
		ModelAndView modelview = new ModelAndView();

		modelview.addObject("clientOdometer", request.getParameter("clientOdometer"));
		modelview.addObject("adminFee", request.getParameter("adminFee"));
		modelview.addObject("salesTax", request.getParameter("salesTax"));
		modelview.addObject("fmValue", request.getParameter("fmValue"));
		modelview.addObject("zip", request.getParameter("zip"));
		modelview.addObject("clientNo", request.getParameter("clientNo"));
		modelview.addObject("usedUnitNo", request.getParameter("usedUnitNo"));
		modelview.addObject("overNightHandlingFee", request.getParameter("overNightHandlingFee"));
		modelview.addObject("purchaseType", request.getParameter("purchaseType"));
		modelview.addObject("requestedBy", request.getParameter("requestedBy"));

		modelview.setViewName("requestcenter.buyOutQuotePopup");
		return modelview;
	}
	// AC_FSP CHANGES END

}