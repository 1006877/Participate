<?xml version="1.0" encoding="ISO-8859-1" ?>
<!DOCTYPE tiles-definitions PUBLIC
       "-//Apache Software Foundation//DTD Tiles Configuration 3.0//EN"
       "http://tiles.apache.org/dtds/tiles-config_3_0.dtd">
<tiles-definitions>


	<definition name="layout.basic.wave2.requestCenter" extends="layout.basic.wave2">
		<put-attribute name="navigation"
			value="/WEB-INF/views/requestCenter/common/navigationRequestCenter.jsp" />
		<put-attribute name="body" value="" />
		<put-list-attribute name="stylesheets">
			<add-attribute value="css/requestcenter/requestCenter.css" />
		</put-list-attribute>
		<put-list-attribute name="customScript">
			<add-attribute value="js/lib/jquery-1.11.0.min.js" />
			<add-attribute value="js/requestCenter-main.js" />
		</put-list-attribute>
	</definition>



	<definition name="layout.basic.wave2.routing"
		template="/WEB-INF/views/tiles/layout/layoutRequestCenter.jsp">
		<put-attribute name="title" value="label_interactive" />
		<put-list-attribute name="stylesheets">
			<!-- <add-attribute value="css/serviceCard/serviceCard.css" /> -->
		</put-list-attribute>
	</definition>

	<definition name="requestCenter.home" extends="layout.basic.wave2.requestCenter">
		<put-attribute name="body"
			value="/WEB-INF/views/requestCenter/home/requestCenterRedirection.jsp" />
		<put-attribute name="bodyTitle" value="label_driverSummary" />
	</definition>

	<!-- Wave2 layout starts -->

	<definition name="requestDetail.basic"
		template="/WEB-INF/views/tiles/layout/printlayout2.jsp">
		<put-attribute name="title" value="Interactive" />
		<put-attribute name="header" value="" />
		<put-attribute name="body"
			value="/WEB-INF/views/common/printScreenShot.jsp" />
		<put-attribute name="footer" value="" />
		<put-list-attribute name="stylesheets">
		</put-list-attribute>
		<put-list-attribute name="customScript">
		</put-list-attribute>
	</definition>

	<definition name="layout.popup.wave2"
		template="/WEB-INF/views/tiles/layout/popuplayout2.jsp">
		<put-attribute name="title" value="label_interactive" />
		<put-list-attribute name="stylesheets">
			<add-attribute
				value="${pageContext.request.contextPath}/css/app/global.css" />
		</put-list-attribute>
	</definition>

	<definition name="requestCenter.layout.wave2" extends="layout.basic.wave2">
		<put-attribute name="body" value="" />
		<put-list-attribute name="stylesheets">
			<add-attribute value="css/requestcenter/requestCenter.css" />
		</put-list-attribute>
		<put-list-attribute name="customScript">
		</put-list-attribute>
	</definition>


	<definition name="request.layout.breakdown" extends="layout.basic.breakdown">
		<put-list-attribute name="stylesheets">
			<add-attribute value="css/requestcenter/requestCenter.css" />
		</put-list-attribute>
		<put-list-attribute name="customScript">
			<add-attribute value="js/requestCenter/requestCenterbreakdown.js" />
		</put-list-attribute>
	</definition>


	<definition name="requestcenter.homepage" extends="layout.basic.wave2.routing">
		<put-attribute name="bodyTitle" value="label_requestCenter" />
		<put-attribute name="bkdnEnableGroupSelection" value="Y"
			cascade="true" />
		<put-attribute name="bkdnEnableBreakdownSelection"
			value="N" cascade="true" />
		<put-attribute name="body"
			value="/WEB-INF/views/requestCenter/home/requestCenterHome.jsp" />
		<put-attribute name="quickLinksId" value="51" />
	</definition>


	<definition name="requestcenter.additionalVehicleRequestAddPopup"
		extends="layout.popup.wave2">
		<put-list-attribute name="stylesheets">
			<add-attribute value="css/requestcenter/requestCenter.css" />
		</put-list-attribute>
		<put-list-attribute name="customScript">
		</put-list-attribute>
	</definition>



	<definition name="requestcenter.generalInquiryRequest"
		extends="requestDetail.common">
		<put-attribute name="bodyTitle" value="label_interactive" />
		<put-attribute name="body"
			value="/WEB-INF/views/requestCenter/home/requestDetailsGeneralInquiry.jsp" />
	</definition>

	<definition name="requestcenter.confirmNetworkRequest"
		extends="requestDetail.common">
		<put-attribute name="bodyTitle" value="label_interactive" />
		<put-attribute name="body"
			value="/WEB-INF/views/requestCenter/home/requestDetailsNetworkOrder.jsp" />
	</definition>

	<definition name="requestcenter.addVehicleRequest" extends="requestDetail.common">
		<put-attribute name="bodyTitle" value="label_interactive" />
		<put-attribute name="body"
			value="/WEB-INF/views/requestCenter/home/requestDetailsAddVehicle.jsp" />
	</definition>

	<definition name="requestcenter.clientSaleNotice" extends="requestDetail.common">
		<put-attribute name="bodyTitle" value="label_interactive" />
		<put-attribute name="body"
			value="/WEB-INF/views/requestCenter/home/requestDetailsClientSaleNotice.jsp" />
	</definition>

	<definition name="requestcenter.bulkClientSaleNotice"
		extends="requestDetail.common">
		<put-attribute name="bodyTitle" value="label_interactive" />
		<put-attribute name="body"
			value="/WEB-INF/views/requestCenter/home/requestDetailsBulkClientSaleNotice.jsp" />
	</definition>

	<definition name="requestcenter.additionalVehicleRequest"
		extends="requestDetail.common">
		<put-attribute name="bodyTitle" value="label_interactive" />
		<put-attribute name="body"
			value="/WEB-INF/views/requestCenter/home/requestDetailsAdditionalVehicle.jsp" />
	</definition>

	<definition name="requestcenter.vehicleChangeRequest"
		extends="requestDetail.common">
		<put-attribute name="bodyTitle" value="label_interactive" />
		<put-attribute name="body"
			value="/WEB-INF/views/requestCenter/home/requestDetailsVehicleChange.jsp" />
	</definition>

	<definition name="requestcenter.defaultPage" extends="requestDetail.common">
		<put-attribute name="bodyTitle" value="label_interactive" />
		<put-attribute name="body"
			value="/WEB-INF/views/requestCenter/home/requestDetailsDefault.jsp" />
	</definition>

	<definition name="requestcenter.driverRequest" extends="requestDetail.common">
		<put-attribute name="bodyTitle" value="label_interactive" />
		<put-attribute name="body"
			value="/WEB-INF/views/requestCenter/home/requestDetailsDriver.jsp" />
	</definition>
	<definition name="requestcenter.layout" extends="layout.basic">
		<put-list-attribute name="stylesheets">
			<add-attribute value="css/requestcenter/requestCenter.css" />
		</put-list-attribute>
	</definition>
	<definition name="requestcenter.breakdown.basic" extends="popup.basic">

	</definition>

	<definition name="popupAddEdit.basic"
		template="/WEB-INF/views/tiles/layout/pcmAddEditLayout.jsp">
		<put-attribute name="title" value="Interactive" />
		<put-attribute name="header" value="" />
		<put-attribute name="bodyTitle" value="label_interactive" />
		<put-attribute name="body" value="" />
		<put-attribute name="footer" value="" />
		<put-list-attribute name="stylesheets">
		</put-list-attribute>
		<put-list-attribute name="customScript">
		</put-list-attribute>
	</definition>

	<definition name="request.layout.breakdown" extends="layout.basic.breakdown">
		<put-list-attribute name="stylesheets">
			<add-attribute value="css/requestcenter/requestCenter.css" />
		</put-list-attribute>
		<put-list-attribute name="customScript">
			<add-attribute value="js/requestCenter/requestCenterbreakdown.js" />
		</put-list-attribute>
	</definition>

	<definition name="requestcenter.vehicleSearchRequestPopup"
		extends="popup.basic">
		<put-list-attribute name="stylesheets">
			<add-attribute value="css/requestcenter/requestCenter.css" />
		</put-list-attribute>
	</definition>

	<!-- <definition name="requestcenter.additionalVehicleRequestAddPopup" extends="popup.basic"> 
		<put-list-attribute name="stylesheets"> <add-attribute value="css/requestcenter/requestCenter.css" 
		/> </put-list-attribute> </definition> </definition> -->

	<definition name="requestcenter.additionalVehicleRequestAddPopupAddEdit"
		extends="popupAddEdit.basic">
		<put-list-attribute name="stylesheets">
			<add-attribute value="css/requestcenter/requestCenter.css" />
		</put-list-attribute>
		<put-list-attribute name="customScript">
		</put-list-attribute>
	</definition>

	<!-- <definition name="requestcenter.findZipCodePopup" extends="popup.basic"> 
		<put-list-attribute name="stylesheets"> <add-attribute value="css/requestcenter/requestCenter.css" 
		/> </put-list-attribute> </definition> -->

	<definition name="requestcenter.findZipCodePopup" extends="layout.popup.wave2">
		<put-list-attribute name="stylesheets">
			<add-attribute value="css/requestcenter/requestCenter.css" />
		</put-list-attribute>
	</definition>

	<!-- <definition name="requestcenter.homepage" extends="request.layout.breakdown"> 
		<put-attribute name="bodyTitle" value="label_requestCenter" /> <put-attribute 
		name="bkdnEnableGroupSelection" value="Y" cascade="true"/> <put-attribute 
		name="bkdnEnableBreakdownSelection" value="N" cascade="true" /> <put-attribute 
		name="body" value="/WEB-INF/views/requestCenter/home/requestCenterHome.jsp" 
		/> <put-attribute name="quickLinksId" value="51" /> </definition> -->

	<definition name="requestcenter.confirmOrderPopup" extends="popup.basic">
		<put-list-attribute name="stylesheets">
			<add-attribute value="css/requestcenter/requestCenter.css" />
		</put-list-attribute>
	</definition>

	<definition name="requestcenter.common" extends="printlayout.basic">
		<put-list-attribute name="stylesheets">
			<add-attribute value="css/requestcenter/requestCenter.css" />
		</put-list-attribute>
		<put-list-attribute name="customScript">
			<add-attribute value="js/lib/datatable/input.js" />
		</put-list-attribute>
	</definition>



	<definition name="requestDetail.common" extends="requestDetail.basic">
		<put-list-attribute name="stylesheets">

		</put-list-attribute>
		<put-list-attribute name="customScript">

		</put-list-attribute>
	</definition>


	<!-- commented because getting error while loading login page -->
	<!-- <definition name="requestcenter11.common" extends="popup11.basic"> 
		<put-list-attribute name="stylesheets"> <add-attribute value="css/requestcenter/requestCenter.css" 
		/> </put-list-attribute> <put-list-attribute name="customScript"> <add-attribute 
		value="js/lib/datatable/input.js" /> </put-list-attribute> </definition> -->
	<!--Request details jsp mapping -->
	<!-- <definition name="requestcenter.driverRequest" extends="requestcenter.common"> 
		======= <definition name="requestcenter.driverRequest" extends="requestcenter11.common"> 
		>>>>>>> refs/heads/requestcenter-web_SIT_RC <put-attribute name="body" value="/WEB-INF/views/requestCenter/home/requestDetailsDriver.jsp" 
		/> </definition> -->

	<!-- <definition name="requestcenter.generalInquiryRequest" extends="requestcenter.common"> 
		======= <definition name="requestcenter.generalInquiryRequest" extends="requestcenter11.common"> 
		>>>>>>> refs/heads/requestcenter-web_SIT_RC <put-attribute name="body" value="/WEB-INF/views/requestCenter/home/requestDetailsGeneralInquiry.jsp" 
		/> </definition> -->

	<!-- <definition name="requestcenter.confirmNetworkRequest" extends="requestcenter.common"> 
		======= <definition name="requestcenter.confirmNetworkRequest" extends="requestcenter11.common"> 
		>>>>>>> refs/heads/requestcenter-web_SIT_RC <put-attribute name="body" value="/WEB-INF/views/requestCenter/home/requestDetailsNetworkOrder.jsp" 
		/> <<<<<<< HEAD </definition> -->
	<!-- <definition name="requestcenter.addVehicleRequest" extends="requestcenter.common"> 
		======= </definition> <definition name="requestcenter.addVehicleRequest" 
		extends="requestcenter11.common"> >>>>>>> refs/heads/requestcenter-web_SIT_RC 
		<put-attribute name="body" value="/WEB-INF/views/requestCenter/home/requestDetailsAddVehicle.jsp" 
		/> <<<<<<< HEAD </definition> -->
	<!-- <definition name="requestcenter.clientSaleNotice" extends="requestcenter.common"> 
		======= </definition> <definition name="requestcenter.clientSaleNotice" extends="requestcenter11.common"> 
		>>>>>>> refs/heads/requestcenter-web_SIT_RC <put-attribute name="body" value="/WEB-INF/views/requestCenter/home/requestDetailsClientSaleNotice.jsp" 
		/> </definition> -->

	<!-- <definition name="requestcenter.bulkClientSaleNotice" extends="requestcenter.common"> 
		======= <definition name="requestcenter.bulkClientSaleNotice" extends="requestcenter11.common"> 
		>>>>>>> refs/heads/requestcenter-web_SIT_RC <put-attribute name="body" value="/WEB-INF/views/requestCenter/home/requestDetailsBulkClientSaleNotice.jsp" 
		/> </definition> -->

	<!-- <definition name="requestcenter.vehicleChangeRequest" extends="requestcenter.common"> 
		======= <definition name="requestcenter.vehicleChangeRequest" extends="requestcenter11.common"> 
		>>>>>>> refs/heads/requestcenter-web_SIT_RC <put-attribute name="body" value="/WEB-INF/views/requestCenter/home/requestDetailsVehicleChange.jsp" 
		/> <<<<<<< HEAD </definition> -->
	<!-- <definition name="requestcenter.additionalVehicleRequest" extends="requestcenter.common"> 
		<put-attribute name="body" value="/WEB-INF/views/requestCenter/home/requestDetailsAdditionalVehicle.jsp" 
		/> </definition> -->
	<!-- commented because getting error while loading login page -->
	<!-- <definition name="requestcenter.additionalVehicleRequest" extends="requestcenter11.common"> 
		<put-attribute name="body" value="/WEB-INF/views/requestCenter/home/requestDetailsAdditionalVehicle.jsp" 
		/> </definition> -->

	<!-- <definition name="requestcenter.defaultPage" extends="requestcenter.common"> 
		======= <definition name="requestcenter.defaultPage" extends="requestcenter11.common"> 
		>>>>>>> refs/heads/requestcenter-web_SIT_RC <put-attribute name="body" value="/WEB-INF/views/requestCenter/home/requestDetailsDefault.jsp" 
		/> </definition> -->
	<!-- ends here -->

	<definition name="requestcenter.networkorder" extends="requestcenter.confirmOrderPopup">
		<put-attribute name="body"
			value="/WEB-INF/views/requestCenter/home/confirmNetworkOrder.jsp" />
	</definition>

	<definition name="requestcenter.requestCenterBreakdown"
		extends="layout.popup.wave2">
		<put-attribute name="bodyTitle" value="label_clientAndBreakdown" />
		<put-attribute name="body"
			value="/WEB-INF/views/common/clientBreakdown.jsp" />
		<put-list-attribute name="customScript">
			<add-attribute value="js/requestCenter/requestCenterbreakdown.js" />
		</put-list-attribute>

	</definition>

	<definition name="requestcenter.vehicleSearchRequest"
		extends="layout.popup.wave2">
		<put-attribute name="bodyTitle" value="label_vehiclesearch" />
		<put-attribute name="body"
			value="/WEB-INF/views/requestCenter/home/vehicleSearchPopupWindow.jsp" />
	</definition>

	<!-- <definition name="requestcenter.findZipCode" extends="requestcenter.findZipCodePopup"> 
		<put-attribute name="bodyTitle" value="label_cityStateAndCounty" /> <put-attribute 
		name="body" value="/WEB-INF/views/requestCenter/home/findZipCode.jsp" /> 
		</definition> -->

	<definition name="requestcenter.findZipCode" extends="requestcenter.findZipCodePopup">
		<put-attribute name="bodyTitle" value="label_interactive" />
		<put-attribute name="body"
			value="/WEB-INF/views/requestCenter/home/findZipCode.jsp" />
	</definition>

	<definition name="requestcenter.addDriverRequest" extends="requestcenter.vehicleSearchRequestPopup">
		<put-attribute name="bodyTitle" value="label_requestDriverUpdate" />
		<put-attribute name="body"
			value="/WEB-INF/views/requestCenter/home/vehicleAddDriver.jsp" />
	</definition>


	<definition name="requestcenter.vehicleSearchRequestVDD"
		extends="requestcenter.vehicleSearchRequestVDD">
		<put-attribute name="body"
			value="/WEB-INF/views/requestCenter/home/vehicleChangeRequest.jsp" />
	</definition>

	<definition name="requestcenter.commonDriverSearchRequest"
		extends="requestcenter.additionalVehicleRequestAddPopup">
		<put-attribute name="bodyTitle" value="label_driverSearch" />
		<put-attribute name="body"
			value="/WEB-INF/views/requestCenter/home/commonDriverSearchRequest.jsp" />
	</definition>

	<definition name="requestcenter.AdditionalDriver"
		extends="requestcenter.additionalVehicleRequestAddPopup">
		<put-attribute name="bodyTitle" value="label_requestDriverUpdate" />
		<put-attribute name="body"
			value="/WEB-INF/views/requestCenter/home/additionalVehDriverUpdateReq.jsp" />
	</definition>

	<definition name="requestcenter.driverSearchAditionalVehicleRequest"
		extends="requestcenter.additionalVehicleRequestAddPopup">
		<put-attribute name="bodyTitle" value="label_driverSearch" />
		<put-attribute name="body"
			value="/WEB-INF/views/requestCenter/home/commonAdditionalDriverSearch.jsp" />
	</definition>


	<definition name="requestcenter.additionalVehicleSearchPopUpWindow"
		extends="requestcenter.additionalVehicleRequestAddPopup">
		<put-attribute name="bodyTitle" value="label_vehiclesearch" />
		<put-attribute name="body"
			value="/WEB-INF/views/requestCenter/home/additionalVehicleSearchPopUpWindow.jsp" />
	</definition>


	<definition name="driver.pcmdrivertest"
		extends="requestcenter.additionalVehicleRequestAddPopup">
		<put-attribute name="subheader"
			value="/WEB-INF/views/driver/manage/pcmdriversubheader.jsp" />
		<put-attribute name="title" value="label_driverInformation" />
		<put-attribute name="bodyTitle" value="label_driverInformation" />
		<put-attribute name="body"
			value="/WEB-INF/views/driver/manage/pcmtest.jsp" />
		<put-attribute name="footer" value="/WEB-INF/views/common/footer.jsp" />
	</definition>

	<!-- <definition name="driver.pcmeditdriver" extends="popup.basic"> <put-attribute 
		name="bodyTitle" value="label_requestDriverUpdate" /> <put-attribute name="body" 
		value="/WEB-INF/views/requestCenter/home/pcmaddeditdriver.jsp" /> </definition> -->
	<!-- commented because getting error while loading login page -->
	<definition name="requestcenter.driverUpdateChange"
		extends="requestcenter.additionalVehicleRequestAddPopupAddEdit">
		<put-attribute name="bodyTitle" value="label_requestDriverUpdate" />
		<put-attribute name="body"
			value="/WEB-INF/views/requestCenter/home/pcmaddeditdriver.jsp" />
	</definition>

	<definition name="driver.dspsearchedzipresultpopup" extends="layout.popup.wave2">
		<put-attribute name="title" value="label_cityStateAndCounty" />
		<put-attribute name="title" value="label_interactive" />
		<put-attribute name="header" value="" />
		<put-attribute name="bodyTitle" value="label_cityStateAndCounty" />
		<put-attribute name="body"
			value="/WEB-INF/views/driver/manage/zipcoderesultpopup.jsp" />
		<put-attribute name="footer" value="" />
		<put-list-attribute name="stylesheets">
			<add-attribute value="css/requestcenter/requestCenter.css" />
		</put-list-attribute>
		<put-list-attribute name="customScript">
		</put-list-attribute>
	</definition>

	<definition name="pcm.addVehicle">
		<put-attribute name="bodyTitle" value="label_requestDriverUpdate" />
		<put-attribute name="body"
			value="/WEB-INF/views/requestCenter/home/additionalVehicleRequest.jsp" />
	</definition>

	<definition name="requestcenter.NoRequest" extends="printlayout.basic">
		<put-attribute name="body"
			value="/WEB-INF/views/requestCenter/home/noRequestFound.jsp" />
	</definition>

	<definition name="driver.reqpcmeditdriver" extends="layout.popup.wave2">
		<put-attribute name="bodyTitle" value="label_requestDriverUpdate" />
		<put-attribute name="body"
			value="/WEB-INF/views/requestCenter/home/pcmaddeditdriver.jsp" />
	</definition>

	<!-- AC_FSP CHANGES START -->
	<definition name="requestcenter.buyOutQuotePopupWindow"
		extends="layout.popup.wave2">
		<put-list-attribute name="stylesheets">
			<add-attribute value="css/requestcenter/requestCenter.css" />
		</put-list-attribute>
	</definition>

	<definition name="requestcenter.buyOutQuotePopup" extends="requestcenter.buyOutQuotePopupWindow">
		<put-attribute name="bodyTitle" value="label_buyOutQuote" />
		<put-attribute name="body"
			value="/WEB-INF/views/requestCenter/home/buyOutQuoteNew.jsp" />
	</definition>
	<!-- AC_FSP CHANGES END -->
</tiles-definitions>