<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<sec:authentication property="principal.internalUser" var="internalUser" />
<sec:authentication property="principal.firstName" var="firstName" />
<sec:authentication property="principal.lastName" var="lastName" />


<input type="hidden" name="internalUser" id="internalUserClientSale"
	value="${internalUser}" />
<input type="hidden" name="firstName" id="firstNameClientSale"
	value="${firstName}" />
<input type="hidden" name="lastName" id="lastNameClientSale"
	value="${lastName}" />

<sec:authentication property="principal" var="user" />
<div
	class="client-sale-wrapper container-fluid row scroll modal fade main-container modalBackground lineheight no-padding"
	id="clientSaleNoticeDailog" role="dialog">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header clientBrkPop captureModalHeader">
				<h3
					class="text-center primary-color capturePopupHeader modalcaptureheader">
					<spring:message code="label_clientSaleNotice"
						text="Client Sale Notice" />
					<a title="Client Number and Breakdown Selections"
						href="javascript:void(0);" id="modalclosebtn"
						class="closeBtn closeClientBrk" data-dismiss="modal"></a>
				</h3>

			</div>
			<div class='modal-body modalPopupBody'>
				<div class="comnDiagHeaher col-md-11 pull-right">
					<div class="comnDiagHeaher ">
						<div class="row margin-bottom-12">
							<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 pull-right">
								<div class="col-lg-5 col-md-4 col-sm-4 col-xs4 text-right">
									<a
										href="javascript:printThisDialog('contClientSaleReqWrapper');"
										title="Print" style="cursor: pointer;" class="screen-print"><spring:message
											code="label_print" text="Print" /></a> <a
										href="javascript:printThisDialog('contClientSaleReqWrapper');"><img
										src="images/global/icon_print_blue.png" alt="Print Icon"
										class="popup_icon"></a>
								</div>
								<div
									class="col-lg-4 col-md-4 col-sm-4 col-xs-4 text-right clientsalecap">
									<a
										href="javascript:captureThisDialog('contClientSaleReqWrapper');"
										title="Capture" style="cursor: pointer;"
										class="screen-capture"><spring:message
											code="label_capture" text="Capture" /></a> <a
										href="javascript:captureThisDialog('contClientSaleReqWrapper');"><img
										src="images/global/icon_capture_blue.png" alt="Capture Icon"
										class="popup_icon"></a>
								</div>
								<div class="col-lg-3 col-md-4 col-sm-4 col-xs-4 text-right">
									<a title="Close" style="cursor: pointer;"
										class="screen-capture" id="clientSaleNoticeClose"><spring:message
											code="label_close" text="Close" /> <img
										src="images/global/close.png" alt="Capture Icon" height="16px"
										width="16px" class="iconTextStyle"> </a>

								</div>
							</div>
						</div>
					</div>
					<%--  <ul>
				 <li id="copyButton" style="padding-right: 2px;">
				 	<a href="javascript:copyThisDialog('clientSaleNoticeDailog');" style="font-size:9pt;"><spring:message code="label_copyF" text="Copy" />
				 	</a>
					<a href="javasscript:copyThisDialog('clientSaleNoticeDailog');"><img title="Print" src="images/copy.gif" class="printIcon"></a>&nbsp;&nbsp;
				 </li>
				 <li style="padding-right: 2px;">
				 	<a href="javascript:printThisDialog('contClientSaleReqWrapper');"style="font-size:9pt;" class="printClientInner"><spring:message code="label_print" text="Print" /></a>
				 	<a href="javascript:printThisDialog('contClientSaleReqWrapper');"><img class="Capt-com-Images"src="images/print.gif"  border="0"></a>&nbsp;&nbsp;
				 </li>
				 <li style="padding-right: 2px;">
				 	<a href="javascript:captureThisDialog('contClientSaleReqWrapper');"style="font-size:9pt;"><spring:message code="label_capture" text="Capture" /></a>
				 	<a href="javascript:captureThisDialog('contClientSaleReqWrapper');"><img class="Capt-com-Images"src="images/capture.gif"  border="0"></a>
				 </li>
				 <li style="padding-right: 2px;">
				 	<a href="javaScript:void(0);" id='clientSaleNoticeClose' style="font-size:9pt; float:left; margin-top:3px"><spring:message code="label_close" text="Close" /></a>
				 </li>
			 </ul> --%>
				</div>
				<!-- End of comnDiagHeaher-->
				<div id="contClientSaleReqWrapper"
					class="col-md-12 col-xs-12 clearfix no-padding margin-auto boxPaddingDiv">
					<div class="client-sale-search-heading col-md-12">
						<h1 class="pageTitle hide">
							<spring:message code="label_clientSaleNotice"
								text="Client Sale Notice" />
						</h1>
					</div>
					<div
						class="client-sale-search-cancle-sav-div col-md-12 col-xs-12 pull-left margin-bottom-12">
						<input id="clientSalecancle1" type="button" class="btnSecondary"
							value="<spring:message code="label_cancel" text="Cancel" />"
							href="javascript:void(0);"> <input id="saveClientSale"
							type="button" class="btnPrimary pull-right"
							value="<spring:message code="label_saveF" text="Save" />"
							href="javascript:void(0);">
					</div>
					<%-- <div class="client-sale-search-cancle-sav-div col-md-12">
						<input id="clientSalecancle1" type="button" value="Cancel" href="javascript:void(0);" class=" clearfix no-padding">
						<input id="saveClientSale" class=" clearfix no-padding" type="button" value="<spring:message code="label_saveF" text="Save"/>" href="javascript:void(0);">
					</div> --%>
					<div
						class="client-sale-request-div margin-bottom-12 margin-left-10">
						<span> <label for="onBehalfOfName" class="clsForLabel"><spring:message
									code="label_requestedBy" text="Requested by" />:</label> <input
							name="onBehalfOfName" id="onBehalfOfName"
							class=" formControlInput" type="text" value="">
						</span>
					</div>
					<div
						class="client-sale-search-first-section col-xs-12  margin-bottom-12">
						<fieldset class="Section  box-border">
							<div class="col-xs-12 sectionHeading">
								<span>1.</span> <span><spring:message
										code="label_vehicInfor" text="Vehicle Information" /></span>:
							</div>
							<div class="boxPaddingDiv col-xs-12">
								<span class="field col-md-4 col-xs-4"><label
									class="clsForLabel"><spring:message
											code="label_clientNumber" text="Client Number" />:</label> <input
									type="text" name="dspCliNo" class="disabled inputborderNone"
									value="" readonly=""></span> <span
									class="field col-md-4 col-xs-4"><label
									class="clsForLabel"><spring:message
											code="label_usedUnitNo" text="Used Unit No" />:</label> <input
									type="text" name="dspUnitNo" class="disabled  inputborderNone"
									value="00004" readonly=""></span> <span
									class="field col-md-4 col-xs-4"><label
									class="clsForLabel"><spring:message
											code="label_clientAssetIdNo" text="Client Asset ID No" />:</label> <input
									type="text" name="dspAssetNo" value="DRIVER/LAGNA"
									class="disabled inputborderNone client-asset-width" readonly=""></span>
								<div class="clearfix col-xs-12">
									<span
										class="field clearfix  pull-left col-md-8 col-xs-12 no-padding"><label
										class="clsForLabel"><spring:message
												code="label_clientName" text="Client Name" />:</label> <input
										type="text" name="dspCliName" style="width: 300px" value=""
										class="disabled inputborderNone" readonly=""></span> <span
										class="field col-md-4 col-xs-4"><label for="crf203"
										class="clsForLabel"><spring:message
												code="label_odometer" text="Odometer" />:<sup
											class="clsForRedNote">*</sup></label> <input type="text"
										id="clientOdometer" name="crf203" maxlength="6" value=""
										class="formControlInput boxPadding"></span><br>
								</div>
								<div class="clearfix col-xs-12 ">
									<span
										class="field clearfix pull-left col-md-3 col-xs-3 no-padding"><label
										class="clsForLabel"><spring:message code="label_year"
												text="Year" />:</label> <input type="text" name="dspModelYr"
										class=" disabled inputborderNone" value="" readonly=""></span>
									<span class="field col-md-3 col-xs-3"><label
										class="clsForLabel"><spring:message code="label_make"
												text="Make" />:</label> <input type="text" name="dspMake" value=""
										style="width: 100px;" class="disabled inputborderNone"
										readonly=""></span> <span class="field col-md-3 col-xs-3"><label
										class="clsForLabel"><spring:message code="label_model"
												text="Model" />:</label> <input type="text" name="dspModel"
										style="width: 133px;" value=""
										class="disabled inputborderNone" readonly=""></span> <span
										class="field col-md-3 col-xs-3 no-padding"><label
										class="clsForLabel"><spring:message
												code="label_vinSngl" text="VIN" />:</label> <input type="text"
										name="dspVin" value="" style="width: 150px;"
										class="disabled inputborderNone" readonly=""></span>
								</div>
							</div>
							<!-- End of boxPadding -->
							<!-- <hr noshade="">  -->
							<div class="HideDiveOnY">
								<div
									class="sep margin-top-10 margin-bottom-10 paddingRight10 paddingLeft10"></div>
								<div class="col-md-12 col-xs-12">
									<div class=" clearfix pull-left" style="float: left;">
										<spring:message code="label_pleaseMailVehTitle"
											text="Please mail this vehicle's title to" />
										:
									</div>
									<div class="pull-left text-align-left"
										style="display: inline-block; padding-left: 20px;">
										<spring:message code="label_elementFleetManagement"
											text="Element Fleet Management" />
										<br>
										<spring:message code="label_attn" text="Attn" />
										:
										<spring:message code="label_titleSupportOperation"
											text="Title Support Operations" />
										<br> 940
										<spring:message code="label_ridgebrook" text="Ridgebrook Rd" />
										<br>
										<spring:message code="label_SparksMd" text="Sparks, MD" />
										21152
									</div>
								</div>
							</div>
						</fieldset>
					</div>
					<!-- End of client-sale-search-first-section -->
					<div
						class="client-sale-search-second-section  col-md-12 col-xs-12 pull-left clearfix margin-bottom-12">
						<div
							class="client-sale-search-sub-section col-md-6 col-xs-6 pull-left">
							<fieldset class="Section box-border col-md-12 no-padding">
								<div class="col-xs-12 sectionHeading">
									<span>2. <span id="methodPaymentOptions"><spring:message
												code="label_mthdOfPayment" text="Method of Payment" /></span>:<sup
										class="clsForRedNote">*</sup></span>
								</div>
								<div class="boxPaddingDivMethod">
									<div style="padding-left: 15px;">
										<input name="methodOfSale" id="checkMail2"
											class="method-Of-Sale checkboxSelected" type="radio" value=""><input
											type="hidden" value="" id="checkMailHidden"> <label
											id="checkMailedLabel"
											class="clientInfoLabelName1 selectedSpan"></label>
									</div>
									<div style="padding-left: 15px;">
										<input name="methodOfSale" id="wireTransfer2"
											class="method-Of-Sale checkboxSelected" type="radio" value="">
										<input type="hidden" value="" id="wireTransferHidden"><label
											id="wireTransferLabel"
											class="clientInfoLabelName1 selectedSpan"></label>
									</div>
									<span style="display: none"><input
										name="checklessClientSale" id="checklessClientSale2"
										type="radio" value=""><input type="hidden" value=""
										id="checklessClientSaleHidden"> <label
										id="checklessClientSaleLabel"
										class="clientInfoLabelName1 margin-top-5 margin-left-5"></label></span>




									<div id="saleInstructions col-md-12">

										<div
											class="payment-Instructions-cont payment-Instructions payInstLineHeight text-left margin-left-15"
											id="client">
											<div class="sep margin-top-10 margin-bottom-10"></div>
											<spring:message code="label_mailCertifiedPayable"
												text="MAIL THIS FORM WITH CERTIFIED OR BANK CHECK PAYABLE TO" />
											<strong><spring:message
													code="label_phhFundingCapital" text="PHH FUNDING, LLC" /></strong>
											<spring:message code="label_toCaps" text="TO" />
											:
											<div class="payment-Instructions-main-div row">
												<div
													class="payment-Instructions-client-div payment-Instructions col-md-6 col-xs-6 pull-left"
													style="font-size: 8pt;">
													<spring:message code="" text="" />
													First Class Mail:<br> <strong><spring:message
															code="label_phhFundingsmall" text="PHH Funding, LLC" /><br>
														<spring:message code="label_collectCenterDrive"
															text="16346 Collections Center Drive" /><br> <spring:message
															code="label_chicagoL" text="Chicago, IL 60693" /></strong><br>
												</div>
												<div
													class="payment-Instructions-client-div payment-Instructions col-md-6 col-xs-6 pull-right">
													<spring:message code="label_overnight" text="Overnight" />
													:<br> <strong><spring:message
															code="label_bankAmericaLockboxServ"
															text="Bank of America Lockbox Services" /><br> <spring:message
															code="label_collectCenterDrive"
															text="16346 Collections Center Drive" /><br> <spring:message
															code="label_chicagoL" text="Chicago, IL 60693" /></strong>
												</div>
												<label class=" margin-left-5 font-weight-300"><spring:message
														code="label_includeClientUnitCheck"
														text="Include client/unit # on the check" />.</label>
											</div>
										</div>
										<%-- <div class="payment-Instructions-cont payment-Instructions col-md-12 margin-bottom-12" id="client">
										<!-- <hr noshade="">	 -->					
										<div><spring:message code="label_mailCertifiedPayable" text="MAIL THIS FORM WITH CERTIFIED OR BANK CHECK PAYABLE TO"/></div>
										<div><spring:message code="label_phhFundingCapital" text="PHH FUNDING, LLC"/></div>
										<div>TO:</div>
										 <div class="payment-Instructions-main-div ">
											<div class="payment-Instructions-client-div payment-Instructions">
												<div><spring:message code="label_firstClassMail" text="First Class Mail"/> :</div>
												<div><spring:message code="label_phhFundingCapital" text="PHH FUNDING, LLC"/></div>
												<div><spring:message code="label_collectCenterDrive" text="16346 Collections Center Drive"/></div>
												<div><spring:message code="label_chicagoL" text="Chicago, IL 60693"/></div>
											</div>
											<div class="payment-Instructions-client-div payment-Instructions">
												<div><spring:message code="label_overnight" text="Overnight"/>:</div>
												<div><spring:message code="label_bankAmericaLockboxServ" text="Bank of America Lockbox Services"/></div>
												<div><spring:message code="label_collectCenterDrive" text="16346 Collections Center Drive"/></div>
												<div><spring:message code="label_chicagoL" text="Chicago, IL 60693"/></div>
											</div>
											<label><spring:message code="label_includeClientUnitCheck" text="Include client/unit # on the check." /></label>
										</div>
									</div> --%>

										<div
											class="payment-Instructions-cont payment-Instructions payInstLineHeight text-left margin-left-15"
											id="wireTransfer">
											<div class="sep margin-top-10 margin-bottom-10"></div>
											<spring:message code="label_wireTransfInst"
												text="WIRE TRANSFER INSTRUCTIONS" />
											:
											<div class="payment-Instructions-main-div margin-top-5 row">
												<div
													class="payment-Instructions-wire-first-div payment-Instructions col-md-2 col-xs-2 pull-left">
													<spring:message code="label_wireTo" text="Wire to" />
													:<br>
													<spring:message code="label_creditAcct" text="Credit Acct" />
													:<br>
													<spring:message code="label_aba" text="ABA#" />
													:<br>
													<spring:message code="label_attention" text="Attention" />
													:<br>
												</div>
												<div
													class="payment-Instructions-wire-second-div payment-Instructions clsForLabel col-md-10 col-xs-10 pull-right">
													<spring:message code="label_bankAmericaStreetNy"
														text="Bank of America, 100 West 33rd Street, New York, NY 10001" />
													<br>
													<spring:message code="label_chesapeakeFinanceHold"
														text="Chesapeake Finance Holding # 8188902291" />
													<br> 026009593<br>
													<spring:message code="label_remarketingDept"
														text="Remarketing Department" />

												</div>
												<label class=" margin-left-5 font-weight-300"><spring:message
														code="label_includeClientUnitCheck"
														text="Include client/unit # on the check" />.</label>
											</div>
										</div>

										<%-- 
									<div class="payment-Instructions-cont payment-Instructions col-md-12 margin-bottom-12" id="wireTransfer">
										<!-- <hr noshade=""> -->
										<div><spring:message code="label_wireTransfInst" text="WIRE TRANSFER INSTRUCTIONS"/>:</div>
										<div class="payment-Instructions-main-div">
											<div class="payment-Instructions-wire-first-div payment-Instructions">
												<div><spring:message code="label_wireTo" text="Wire to"/>:</div>
												<div><spring:message code="label_creditAcct" text="Credit Acct"/>:</div>
												<div><spring:message code="label_aba" text="ABA#"/>:</div>
												<div><spring:message code="label_attention" text="Attention"/>:</div>
											</div>
											<div class="payment-Instructions-wire-second-div payment-Instructions">
												<div><spring:message code="label_bankAmericaStreetNy" text="Bank of America, 100 West 33rd Street, New York, NY 10001" /></div>
														<div><spring:message code="label_chesapeakeFinanceHold" text="Chesapeake Finance Holding # 8188902291" /></div>
														<div>026009593</div>
														<div><spring:message code="label_remarketingDept" text="Remarketing Department" /></div>
											</div>
											<label><spring:message code="label_includePurchaserName" text="Include purchaser's name and client/unit # with wire" /></label>
										</div>
									</div> --%>
									</div>
								</div>
							</fieldset>
						</div>
						<div
							class="other client-sale-search-sub-section col-md-6 col-xs-6 pull-left">
							<div
								class="Section col-md-12 col-xs-12 pull-left margin-bottom-12 no-padding">
								<div class="col-xs-12  box-border no-padding">
									<div class="sectionHeading no-padding">
										<span>3. </span><span><spring:message
												code="label_vehIsCurrent" text="Vehicle is currently" /></span>:<sup
											class="clsForRedNote">*</sup>
									</div>
									<div
										class="radiobuttonpadding other radiobuttonpadding1 col-md-12 col-xs-12">
										<div class="col-md-5 col-xs-5">
											<span><input id="leased2" name="leaseType"
												class="lease-Type checkboxSelected" type="radio" value=""
												disabled=""><input type="hidden" value=""
												id="leasedHidden"> <label id="leasedThroughElement"
												class="clientInfoLabelName1 clasForLabel selectedSpan"></label><input
												name="crf375" type="hidden" value="2"
												class="margin-left-20 inputborderNone selectedSpan"></span>
										</div>
										<div class="col-md-7 col-xs-7">
											<span><input id="company2" name="leaseType"
												class="lease-Type checkboxSelected" type="radio" value=""
												disabled="" checked=""><input type="hidden" value=""
												id="companyHidden"> <label id="CompanyNonLeased"
												class="clientInfoLabelName1 clasForLabel selectedSpan"></label></span>
										</div>
									</div>
								</div>
							</div>
							<!--End of Section col-md-12 pull-left  -->
							<div class="Section col-md-12 pull-left no-padding">
								<div class="col-xs-12  box-border no-padding">
									<div class="sectionHeading no-padding">
										<span>4. <span><spring:message
													code="label_saleType" text="Sale Type" /></span>:<sup
											class="clsForRedNote">*</sup></span><br>
									</div>
									<div class="radiobuttonpadding">
										<div class="radio-button-div col-md-6 col-xs-6 pull-left">
											<div>
												<input name="saleType" id="business2"
													class="getFMV lookupTaxes checkboxSelected" type="radio"
													value=""><input type="hidden" value=""
													id="businessHidden"> <label id="individualBusiness"
													class="clientInfoLabelName1 clasForLabel selectedSpan"></label>
											</div>
											<div>
												<input name="saleType" id="auction2"
													class="getFMV lookupTaxes checkboxSelected" type="radio"
													value=""><input type="hidden" value=""
													id="auctionHidden"> <label id="dealerAuction"
													class="clientInfoLabelName1 clasForLabel selectedSpan"></label>
											</div>
											<div>
												<input name="saleType" id="damageUnit2"
													class="getFMV lookupTaxes checkboxSelected" type="radio"
													value=""><input type="hidden" value=""
													id="damageUnitHidden"> <label id="wreckedDamaged"
													class="clientInfoLabelName1 clasForLabel selectedSpan"></label>
											</div>
											<!-- AC_FSP CHANGES START -->
											<div>
												<input name="saleType" id="client1"
													class="getFMV lookupTaxes checkboxSelected" type="radio"
													value="7"><input type="hidden" value=""
													id="clientHidden"> <label id="clientLabel"
													class="clientInfoLabelName1 clasForLabel selectedSpan"><spring:message
														code="label_Client1" text="Client" /></label>
											</div>
											<div>
												<input name="saleType" id="bank1"
													class="getFMV lookupTaxes checkboxSelected" type="radio"
													value="8"><input type="hidden" value=""
													id="bankHidden"> <label id="bankLabel"
													class="clientInfoLabelName1 clasForLabel selectedSpan"><spring:message
														code="label_Bank1" text="Bank" /></label>
											</div>
											<!-- AC_FSP CHANGES END -->
										</div>
										<div class="radio-button-div col-md-6 col-xs-6 pull-left">
											<div>
												<input name="saleType" id="stolen2"
													class="hideTaxInfo checkboxSelected" type="radio" value=""><input
													type="hidden" value="" id="stolenHidden"> <label
													id="stolenLabel"
													class="clientInfoLabelName1 no-padding selectedSpan"></label>
											</div>
											<div>
												<input name="saleType" id="totalLoss2"
													class="lookupTaxes checkboxSelected" type="radio" value=""><input
													type="hidden" value="" id="totalLossHidden"> <label
													id="totalLossLabel"
													class=" clientInfoLabelName1 no-padding selectedSpan"></label>
											</div>
											<div>
												<input name="saleType" id="motorCompany2"
													class="lookupTaxes checkboxSelected" type="radio" value=""><input
													type="hidden" value="" id="saleTypeHidden"> <label
													id="motorCompanyLabel"
													class="clientInfoLabelName1 no-padding selectedSpan"></label>
											</div>
											<!-- AC_FSP CHANGES START -->
											<div>
												<input name="saleType" id="competitor1"
													class="lookupTaxes checkboxSelected" type="radio" value="9"><input
													type="hidden" value="" id="competitorHidden"> <label
													id="competitorLabel"
													class="clientInfoLabelName1 no-padding selectedSpan"><spring:message
														code="label_Competitor1" text="Competitor" /></label>
											</div>
											<!-- AC_FSP CHANGES END -->
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- End of client-sale-search-sub-section -->
					</div>
					<!-- End of client-sale-search-second-section -->
					<div
						class="client-sale-search-third-section col-md-12  col-xs-12 pull-left clearfix no-padding margin-bottom-12">
						<div
							class="client-sale-search-sub-section col-md-6 col-xs-6 pull-left">
							<div
								class="Section transferDoc col-md-12 col-xs-12 box-border no-padding paddingBottom10 margin-bottom-12">
								<div class="client-sale-transfer-doc">
									<div class="sectionHeading">
										<span>5. <span><spring:message
													code="label_titleTransferDoc"
													text="Title Transfer Documents" /></span>:<sup
											id="shippingRequired" class="hideOnStolen clsForRedNote">*</sup></span>
									</div>
									<div class="boxPaddingDiv">
										<div class="radio-button-div col-md-5 col-xs-5 pull-left">
											<div>
												<input name="titleTransfer" id="federaltwo2"
													class="shippingType checkboxSelected" type="radio"
													value="1"><input type="hidden" value=""
													id="federaltwoHidden"> <label
													id="federalExpressLabel"
													class="clientInfoLabelName1 no-padding selectedSpan"></label>
											</div>
											<div>
												<input name="titleTransfer" id="uspsTwo2"
													class="shippingType checkboxSelected" type="radio"
													value="2"> <input type="hidden" value=""
													id="uspsTwoHidden"><label id="USPSLabel"
													class="clientInfoLabelName1 no-padding selectedSpan"></label>
											</div>
										</div>
										<div
											class="radio-button-div col-md-7 col-xs-7 pull-right no-padding">
											<div>
												<input name="titleTransfer" id="upsTwo2"
													class="shippingType checkboxSelected" type="radio" value=""><input
													type="hidden" value="" id="upsTwoHidden"> <label
													id="upsLabel"
													class="clientInfoLabelName1 no-padding selectedSpan"></label>
											</div>
											<div>
												<input name="titleTransfer" id="overnighttwo2"
													class="shippingType checkboxSelected" type="radio" value=""
													checked=""><input type="hidden" value=""
													id="overnighttwoHidden"> <label
													id="elementOverLabel"
													class="clientInfoLabelName1 no-padding selectedSpan"></label>
											</div>

										</div>
									</div>
								</div>
								<!--client-sale-transfer-doc  -->
								<div id="shippingServiceDetails" class="hideOnStolen col-xs-12">
									<div class="boxPaddingDivFifthBlock">
										<div class="shippingInstructions" id="fedex"
											style="display: none;">
											<div class="sep margin-top-10 margin-bottom-10 row"></div>
											<spring:message code="label_pleaseProAccNumBelow"
												text="Please provide an account number below." />
											<div class="margin-top-10 col-md-12 no-padding">
												<label for="fedexAcctNumber"
													class=" clasForLabel col-md-5 no-padding"><spring:message
														code="label_fedexAct" text="FEDEX Acct" /> #:</label>
												<div class="col-md-7">
													<input type="text" id="fedexAcctNo" name="CRF437" value=""
														class="boxPadding pull-right formControlInput">
												</div>
											</div>
										</div>
										<div class="shippingInstructions notes" id="usps"
											style="display: none;">
											<div class="sep margin-top-10 margin-bottom-10"></div>
											<spring:message code="label_plAttachUspsAirbill"
												text="Please attach a USPS airbill or choose another shipping service above" />
											.
										</div>
										<div class="shippingInstructions col-xs-12" id="ups"
											style="display: none;">
											<div class="sep margin-top-10 margin-bottom-10"></div>
											<div class="notes no-margin textindent">
												<spring:message code="label_povAccNumBillingZipCode"
													text="Please provide an account number and include billing account zip code below" />
												.
											</div>
											<div class="margin-top-10 col-md-12 no-padding">
												<label for="upsAcctNumber textindent"
													class="clasForLabel no-padding col-md-5"><spring:message
														code="label_upsAcct" text="UPS Acct" /> #:</label>
												<div class="col-md-7">
													<input type="text" id="upsAcctNo" name="CRF438" value=""
														class="boxPadding formControlInput pull-right">
												</div>
												<div
													class="margin-top-10 margin-top-24 col-md-12 no-padding textindent">
													<label for="upsAcctZipCode"
														class="clasForLabel no-padding col-md-5 textindent"><spring:message
															code="label_billingAcctZipCode"
															text="Billing Acct Zip Code" />:</label>
													<div class="col-md-7">
														<input type="text" id="upsAcctZipCode" name="CRF439"
															value="" style="width: 100px" maxlength="5"
															class="boxPadding formControlInput pull-right">
													</div>
												</div>
											</div>
										</div>
										<div class="shippingInstructions col-xs-12 notes" id="phh">
											<div class="sep margin-top-10 margin-bottom-10"></div>
											<div>
												<spring:message code="label_feeElementOverPack"
													text="A $15 fee has been added for Element handling of the overnight packaging." />
											</div>
										</div>
									</div>
								</div>
								<!--End of shippingServiceDetails  -->
							</div>
							<!--End of Section transferDoc col-xs-12 box-border no-padding  -->
							<div
								class="Section lienInfoClient col-xs-12 no-padding margin-bottom-12">
								<div class="box-border">
									<div class="sectionHeading">
										<span>7. <span><spring:message
													code="label_lienInformation" text="Lien Information" /></span>: (<spring:message
												code="label_lienWillBePlaced" text="if lien will be placed" />)
										</span>
									</div>
									<div class="radiobuttonpadding">
										<div class="field col-xs-12 margin-top-10">
											<spring:message code="label_lienPlacedNewTitle"
												text="Does lien need to be placed on the NEW title" />
											? </span><span class="clientSaleCss"><label
												style="padding-right: 10px;"
												class="clientInfoLabelName1 selectedSpan"><spring:message
														code="label_yes" text="Yes" /></label><input type="radio"
												id="yes" value="Yes" name="lien"
												class="margin-left-10 checkboxSelected" checked><label
												class="clientInfoLabelName1 margin-left-10 selectedSpan"><spring:message
														code="label_no" text="No" /></label> <input type="radio"
												name="lien" id="no" class="noLienHolder checkboxSelected"
												value="No"></span>
										</div>
										<div class="field col-xs-12 margin-bottom-12">
											<label for="mailToLienholderClient"
												class="clsForLabel no-padding selectedSpan"><spring:message
													code="label_mailTitleLienHolder"
													text="Mail title to the Lien holder?" /></label> <input
												type="checkbox" id="mailToLienholderClient" name="CRF453"
												tabindex="0" class="checkboxSelected"> <em
												class="verticalalign selectedSpan"
												style="vertical-align: super"><spring:message
													code="label_PoBoxNtAllowed" text="PO Box not allowed" /></em>
										</div>
										<div class="field col-xs-12 margin-bottom-12">
											<label class=" purchaser clsForLabel col-md-3 col-xs-3"><spring:message
													code="label_lienHolder" text="Lien Holder" />:</label>
											<div class="col-md-9  col-xs-9">
												<input type="text" name="CRF421" id="lienHolder" value=""
													class="address FillPopUpFinl margin-bottom-12 formControlInput pull-right"
													tabindex="0">
											</div>
										</div>
										<div class="field col-xs-12 margin-bottom-12">
											<label class=" purchaser clsForLabel col-md-3 col-xs-3"><spring:message
													code="label_attn" text="Attn" />:</label>
											<div class="col-md-9 col-xs-9">
												<input type="text" name="CRF384" value="" id="attn"
													class="address  formControlInput FillPopUpFinl margin-bottom-12  pull-right"
													tabindex="0">
											</div>
										</div>
										<div class="field col-xs-12 margin-bottom-12">
											<label class=" purchaser clsForLabel col-md-3 col-xs-3"><spring:message
													code="label_address" text="Address" />:</label>
											<div class="col-md-9 col-xs-9">
												<input type="text" name="CRF385" value="" id="address"
													class="address FillPopUpFinl margin-bottom-12 formControlInput pull-right"
													tabindex="0">
											</div>
										</div>
										<div class="field col-xs-12 margin-bottom-12">
											<span class="col-md-4 no-padding"><label
												class=" clsForLabel "><spring:message
														code="label_City" text="City" />:</label> <input type="text"
												name="CRF386" id="cityClient" value="" style="width: 60%"
												tabindex="0"></span> <span class="col-md-5 no-padding"><label
												class=" clsForLabel "><spring:message
														code="label_State" text="State" />:</label> <select
												id="reqStateUp" name="CRF387" tabindex="0"
												class="lRPadding reqStateInner boxPadding formControlSmlDrpDwn">

											</select> </span> <span class="col-md-3 no-padding"><span
												class="pull-right"><label class="clsForLabel"><spring:message
															code="label_zip" text="Zip" />:</label> <input type="text"
													name="CRF388" id="zipCodeUp" value="" style="width: 60%"
													maxlength="10" tabindex="0"></span></span>
										</div>
									</div>
								</div>
							</div>

							<fieldset
								class="Section mail-title clearfix col-xs-12 no-padding margin-bottom-12"
								id="section8">
								<div class="box-border">
									<div class="sectionHeading">
										8. <span class="sectionHeader"><spring:message
												code="label_mailTitleTo" text="Mail title to" /></span>: (
										<spring:message code="label_onlyDiffPurchaser"
											text="only if different than purchaser" />
										)
									</div>
									<div class="radiobuttonpadding">
										<div class="field margin-bottom-10 col-xs-12 ">
											<div class="col-xs-12">
												<label class=" purchaser col-md-3 col-xs-3 clsForLabel"><spring:message
														code="label_businessCaps" text="Business" />:</label>
												<div class="col-md-9 col-xs-9">
													<input type="text" id="businessClient" name="CRF424"
														value=""
														class="address FillPopUpFinl formControlInput  margin-bottom-12 pull-right"
														tabindex="0">
												</div>
											</div>
											<div class="field col-xs-12">
												<label class=" purchaser clsForLabel col-md-3 col-xs-3"><spring:message
														code="label_attn" text="Attn" />:</label>
												<div class="col-md-9 col-xs-9">
													<input type="text" id="attnClient" name="CRF390" value=""
														class="address FillPopUpFinl formControlInput pull-right margin-bottom-12"
														tabindex="0">
												</div>
											</div>
											<div class="field margin-bottom-10 col-xs-12">
												<label class=" purchaser clsForLabel col-md-3 col-xs-3"><spring:message
														code="label_address" text="Address" />:</label>
												<div class="col-md-9 col-xs-9">
													<input type="text" id="addressClient" name="CRF391"
														value=""
														class="address FillPopUpFinl formControlInput  margin-bottom-12 pull-right"
														tabindex="0"><br>
													<div
														class="alignWithInput notesindiacte col-md-12 margin-bottom-12">
														<spring:message code="label_PoBoxNtAllowed"
															text="PO Box not allowed" />
													</div>
												</div>
												<div class="field col-xs-12">
													<span class="col-md-4 no-padding"><label
														class="clsForLabel"><spring:message
																code="label_City" text="City" />:</label> <input type="text"
														name="CRF392" id="cityClientSale" value=""
														style="width: 60%" tabindex="0" class=""></span> <span
														class="col-md-5 no-padding"><label
														class="clsForLabel"><spring:message
																code="label_State" text="State" />:</label><select
														id="reqStateDwn" name="CRF393" tabindex="0"
														class="lRPadding reqStateInner formControlSmlDrpDwn"
														style="width: 60%"></select></span> <span
														class="col-md-3 no-padding"><label
														class="clsForLabel"><spring:message
																code="label_zip" text="Zip" />:</label> <input type="text"
														id="zipCodeDwn" name="CRF394" value="" style="width: 60%"
														maxlength="10" tabindex="0" class=""></span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</fieldset>
							<!--End of Section mail-title clearfix col-xs-12 no-padding  -->
							<div
								class="Section col-xs-12 no-padding box-border margin-bottom-12"
								style="height: auto; min-height: 150px;">
								<div class="sectionHeading ">
									<span>10. <span><spring:message
												code="label_specialInfo" text="Special Information" /></span>:
									</span>
								</div>
								<div class="special-information radiobuttonpadding col-xs-12"
									id="specialInstructions">
									<ul>


									</ul>
									<div id="respondIn48" style="display: none" class="notes">
										<spring:message code="label_weWillRespond"
											text="We will respond within 48 hours." />
									</div>
								</div>
							</div>
							<!-- End of Section col-xs-12 no-padding -->
							<div class="Section col-xs-12 no-padding box-border">
								<div class="sectionHeading ">
									<span>11. <span><spring:message
												code="label_uploadDoc" text="Upload Documents" /></span>:
									</span>
								</div>
								<div id="uploadDocuments"
									style="min-height: 100px; width: 100%;"
									class="radiobuttonpadding">
									<div>
										<div class="csnDocs attachment col-md-12">
											<label class="required clsForLabel col-md-6"><spring:message
													code="label_attachDoc" text="Attach Documents" />:<br>
												<span class="note no-bold"></span></label>
											<form id="fileuploadFormClientSale"
												class="formClass col-md-6"
												action="ClientSaleMultipleDocsUpload" method="POST"
												enctype="multipart/form-data">
												<sec:csrfInput />
												<a href="javascript:void(0);" id="get_file_clientsale"
													class="fileCLass"> <spring:message code="label_addFile"
														text="add file" /><img src="images/file_icon.png"
													alt="mandatory-image"
													class="clientsale-Image iconTextStyle">
												</a> <input type="file" id="my_file_clientsale"
													class="formInput1" name="fileName1" style="display: none;"
													multiple=""> <input type="hidden" id="setFileName"
													class="formInput2" name="setFileName" value=""
													style="display: none;"> <input type="hidden" id=""
													class="formInput3 setRequestId" name="requestId" value=""
													style="display: none;" /> <input type="hidden"
													id="delFile" class="formInput4" name="delFile1" value=""
													style="display: none;">
												<div class="file-details get_file_clientsale"
													style="display: none"></div>
												<!-- <div class="file-progress get_file_clientsale" style="display:none"></div> -->
											</form>
										</div>
										<div style="margin-left: 120px; padding-left: 15px;"
											class="csnDocs attachment">
											<span id="fileuploader"><span id="csnDocsUploader"></span></span>
											<div class="attachCsnDocs"></div>
										</div>
										<p></p>
									</div>
								</div>
							</div>
						</div>
						<!--End of client-sale-search-sub-section-->
						<div
							class="commonLeftsection col-md-6 col-xs-6 pull-left margin-bottom-12">
							<div
								class="client-sale-search-sub-section col-md-12 pull-right no-padding">
								<div class="Section box-border" id="">
									<div class="sectionHeading">
										6. <span><spring:message code="label_purchaser"
												text="Purchaser" /></span>:<span class="superscript clsForRedNote">*</span>
										(
										<spring:message code="label_nameAppearTitle"
											text="name as it will appear on title" />
										)
									</div>
									<div class="boxPaddingDivFifthBlockAll">
										<div class="field col-xs-12">
											<label class=" purchaser clsForLabel col-md-3 col-xs-3"><spring:message
													code="label_purchaser" text="Purchaser" />:</label>
											<div class="col-md-9 col-xs-9">
												<input type="text" id="purchaserName" name="CRF418" value=""
													class="FillPopUpFinl address  margin-bottom-12 formControlInput pull-right ">
											</div>
										</div>
										<div class="field col-xs-12">
											<label class=" purchaser clsForLabel col-md-3 col-xs-3"><spring:message
													code="label_co" text="C/O" />:</label>
											<div class="col-md-9 col-xs-9">
												<input type="text" name="CRF417" value=""
													class="address margin-bottom-12 FillPopUpFinl formControlInput pull-right">
											</div>
										</div>
										<div class="field col-xs-12">
											<label class=" purchaser clsForLabel col-md-3 col-xs-3"><spring:message
													code="label_address" text="Address" />:</label>
											<div class="col-md-9 col-xs-9">
												<input type="text" name="CRF377" value=""
													class="address noPOBox  FillPopUpFinl margin-bottom-12 formControlInput pull-right">
												<br>
												<div
													class="alignWithInput alignWithInput notes col-md-12 margin-bottom-12 client-po-box">
													<spring:message code="label_PoBoxNtAllowed"
														text="PO Box not allowed" />
												</div>
											</div>
										</div>
										<div class="field col-md-12 col-xs-12 margin-bottom-10">
											<span class="col-md-3 col-xs-3 no-padding"><label
												class=" clsForLabel"><spring:message
														code="label_City" text="City" />:</label> <input type="text"
												name="CRF378" value="" style="width: 71%"
												class="lookupTaxes disabled client-font-size-zip"
												readonly="" tabindex="-1"></span> <span
												class="col-md-3 col-xs-3"><label class=" clsForLabel"><spring:message
														code="label_State" text="State" />:</label> <input name="CRF379"
												type="text" value="" style="width: 60%"
												class="lookupTaxes disabled client-font-size-zip"
												readonly="" tabindex="-1"></span> <span
												class="col-md-3 col-xs-3"><label class="clsForLabel"><spring:message
														code="label_zip" text="Zip" />:</label> <input type="text"
												name="CRF380" id="clientZipValue" value=""
												style="width: 71%" maxlength="10"
												class="lookupTaxes client-font-size-zip"></span>
											</button>
											<span class="col-md-3 col-xs-3"><button
													id="prefillCityStateCounty" value="Find"
													class="clientother-find-button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary btnPrimary margin-bottom-12"
													role="button" aria-disabled="false">
													<span
														class="ui-button-icon-primary ui-icon ui-icon-search req-find-search"></span><span
														class="ui-button-text req-find-txt">Find</span></span>
										</div>
										<div class="field col-xs-12">
											<label class=" purchaser clsForLabel  col-md-5 col-xs-5"><spring:message
													code="label_county" text="County" />:</label>
											<div class="col-md-7 col-xs-7">
												<input name="CRF381" value="" type="text"
													class="address lookupTaxes disabled boxPadding margin-bottom-12 formControlInput pull-right"
													readonly="" tabindex="-1">
											</div>
										</div>
										<div class="field col-xs-12">
											<label class=" clsForLabel   col-md-6 col-xs-6"><spring:message
													code="label_purchaserEmailAddr:"
													text="Purchaser Email Address" />:</label>
											<div class="col-md-6 col-xs-6">
												<input name="CRF382" value="" type="text"
													class="email pull-right boxPadding margin-bottom-12 formControlInput ">
											</div>
										</div>
										<div class="field col-xs-12">
											<label class=" clsForLabel  col-md-5 col-xs-5"><spring:message
													code="label_purchaserTelephone:" text="Purchaser Telephone" />:</label>
											<div class="col-md-7 col-xs-7">
												<input name="CRF383" type="text" value=""
													class="pull-right  margin-bottom-12 boxPadding  formControlInput ">
											</div>
										</div>
									</div>
								</div>
							</div>
							<div
								class="client-sale-search-sub-section col-md-12 pull-left margin-top-10 no-padding">
								<fieldset class="Section box-border" id="">
									<div class="cost-table-div">
										<div class="cost-table-row">
											<div class="cost-Description">
												<input id="fmValue" name="CRF410" value="N/A"
													class="clientSatePurchase disabled pull-right" readonly="">
												<div class="sectionHeading">
													9. <span><spring:message code="label_fairMarketVal"
															text="Fair Market Value" />:</span>
												</div>
											</div>
										</div>
										<div class="radiobuttonpadding">
											<%-- <div class="ask-for-FMV class-xs-12"><input name="askForFMV" type="checkbox" id="askForFMV" class="askForFMV checkForSubmit checkboxSelected"><span class="selectedSpan margin-left-5 margin-bottom-12"><spring:message code="label_askElemRshFmv" text="Ask Element to research the Fair Market Value" /></span></div>  --%>
											<!-- <div class="cost-Amount col-xs-12" id="fairMarketVal">
														<span id="fmvPrefix" style="display:none;">$</span>
														<input id="fmValue" name="CRF410" value="N/A" class="disabled formControlInput pull-right" readonly="">
													</div> -->
											<div
												class="cost-table-row col-xs-12 margin-top-24 margin-bottom-12"
												id="salePrice">
												<div class="cost-Description col-md-7 col-xs-7 clsForLabel">
													<div>
														9a. <span class=""><spring:message
																code="label_salePrice" text="Sale Price" /><sup
															class=" hideOnStolen showIfNotZero clsForRedNote">*</sup>:</span>
														<div class="stolen-vehicle-price"
															id="salePriceInstructions"></div>

													</div>
												</div>
												<div
													class="cost-Amount total-amt sale-price-input col-md-5 col-xs-12">
													$<input name="" id="sale" value="" type="text"
														maxlength="10"
														class="sale lookupTaxes boxPadding textAlignClientSale pull-right">
												</div>
											</div>
											<div class="cost-table-row col-xs-12" id="salesTaxRow">

												<div class="cost-Description col-md-7 col-xs-7 clsForLabel">
													<div>
														9b. <span class=""><spring:message
																code="label_saleTax" text="Sales Tax" /> <span
															class="superscript hideOnStolen showIfNotZero clsForRedNote">*</span>:</span>
													</div>
												</div>
												<div class="cost-Amount total-amt col-md-5 col-xs-5">
													$<input id="salesTax" type="text" name="CRF397" value=""
														title=""
														class="disabled salesTax boxPadding textAlignClientSale margin-bottom-12 pull-right"
														readonly="" tabindex="-1">
												</div>
											</div>
											<div class="cost-table-row col-md-12 col-xs-12 " id="">
												<div class="cost-Description col-md-7 col-xs-7 clsForLabel">
													<div>
														9c. <span class=""><spring:message
																code="label_eleAdminFee"
																text="Element Administrative Fee" />:</span>
													</div>
												</div>
												<div class="cost-Amount total-amt col-md-5 col-xs-5">
													$<input id="adminFee" name="CRF397" type="text"
														value="0.00" title=""
														class="disabled salesTax boxPadding textAlignClientSale margin-bottom-12 pull-right"
														readonly="" tabindex="-1">
												</div>
											</div>
											<div class="cost-table-row col-xs-12" id="">
												<div class="cost-Description col-md-7 col-xs-7 clsForLabel">
													<div>
														9d. <span class=""><spring:message
																code="label_overNightFee" text="Overnight Handling Fee" />:</span>
													</div>
												</div>
												<div class="cost-Amount total-amt col-md-5 col-xs-5">
													$<input type="text" name="CRF400" value="15.00"
														class="disabled boxPadding textAlignClientSale margin-bottom-12 pull-right"
														readonly="" tabindex="-1">
												</div>
											</div>
											<div class="cost-table-row col-md-12 col-xs-12" id="">
												<div class="cost-Description col-md-7 col-xs-7 clsForLabel">
													<div>
														9e. <span class=""><spring:message
																code="label_totalAmount" text="Total Amount" />:</span>
													</div>
												</div>
												<div class="cost-Amount total-amt col-md-5 col-xs-5">
													$<input type="text" name="total" value="  15.00"
														id="totalAmount"
														class="disabled calcWhatsOwed boxPadding textAlignClientSale margin-bottom-12 pull-right"
														readonly="" tabindex="-1">
												</div>
											</div>
											<div class="cost-table-row col-md-12 col-xs-12"
												id="checkAmount">
												<div class="cost-Description col-md-7 col-xs-7 clsForLabel">
													<div>
														9f. <span class=""><spring:message
																code="label_paymentAmount" text="Payment Amount" /> <sup
															class=" hideOnStolen showIfNotZero clsForRedNote">*</sup>:</span>
													</div>
												</div>
												<div class="cost-Amount total-amt col-md-5 col-xs-5">
													$<input type="text" name="payment" value="" maxlength="10"
														class="calcWhatsOwed boxPadding textAlignClientSale margin-bottom-12 pull-right"
														id="payAmount">
												</div>
											</div>
											<div class="cost-table-row col-md-12 col-xs-12"
												id="remainingBalance">
												<div class="cost-Description col-md-7 col-xs-7 firstColumn">
													<div>
														<span class="clsForLabel">9g.</span> <span
															class="clsForLabel"><spring:message
																code="label_remainBal:" text="Remaining Balance:" /></span>
														<div id="willBeBilled"
															class="notes col-md-12 no-padding no-margin clearfix">
															<spring:message code="label_amntBillToCmpny"
																text="This amount will be billed to your company." />
														</div>
													</div>

												</div>
												<div class="cost-Amount total-amt col-md-5 col-xs-5">
													$<input name="" id="remainBal" value="  15.00"
														class="disabled boxPadding textAlignClientSale margin-bottom-12 pull-right"
														readonly="" tabindex="-1">
												</div>
											</div>
										</div>
									</div>
									<!-- End cost-table-div -->
								</fieldset>
								<fieldset
									class="Section col-xs-12 no-padding box-border margin-top-10"
									id="section11">
									<div class="approver-info">
										<div class="sectionHeading">
											12. <span><spring:message code="label_approvInfo"
													text="Approver Information" /></span><sup class="clsForRedNote">*</sup>:
										</div>
										<div class="radiobuttonpadding">
											<div class="col-xs-12 notes col-xs-12 margin-bottom-12"
												style="margin-left: 0">
												<spring:message code="label_typBelowAgreeAndAffirm"
													text="By typing a name below, you agree and affirm (i) that you are typing your own name, and (ii) that 
														you and your company intend to be bound by the representations and certification set forth above." />
												<span class="font-Weigth-Bold"><spring:message
														code="label_typNameBelowRepCerti"
														text="Typing your name below will result in you and your company becoming bound by the representations and certification set forth above." /></span>
											</div>
											<!-- End of col-xs-12 notes col-xs-12 -->
											<div class="margin-bottom-12 col-md-12">
												<div class="col-md-12 no-padding">
													<input type="checkbox"
														class="check required checkboxSelected" name="CRF449">
													<span style="vertical-align: super" class=""><spring:message
															code="label_chckBoxAcknStatement"
															text="By checking this box, I acknowledge reading the above statement." /></span>
												</div>
											</div>
											<div class="field col-md-12 col-xs-12">
												<label class="clsForLabel col-md-5 col-xs-5">12a. <spring:message
														code="label_approvSign:" text="Approver Signature:" /></label>
												<div class="col-md-7 col-xs-7">
													<input type="text" name="signature"
														id="sigClientSaleNotice" value=""
														class="disabled boxPadding formControlInput margin-bottom-12 pull-right"
														readonly="">
												</div>
											</div>
											<div class="field col-md-12 col-xs-12">
												<label class="clsForLabel col-md-5 col-xs-5">12b. <spring:message
														code="label_nameF" text="Name" />:
												</label>
												<div class="col-md-7 col-xs-7">
													<input type="text" name="name" id="nameClientSaleNotice"
														value=""
														class="disabled boxPadding formControlInput margin-bottom-12 pull-right"
														readonly="">
												</div>
												<div class="field col-md-12 col-xs-12 no-padding">
													<label class="clsForLabel col-md-5 col-xs-5">12c. <spring:message
															code="label_approvDate" text="Approval Date" />:
													</label>
													<div class="col-md-7 col-xs-7">
														<input type="text" name="approvalDate"
															id="approvalDateClientSaleNotice" value=""
															class="disabled boxPadding formControlInput margin-bottom-12 pull-right"
															readonly="">
													</div>
													<div class="field col-md-12 col-xs-12">
														<label class="clsForLabel col-md-5 col-xs-5 row">12d.
															<spring:message code="label_telephoneNumber"
																text="Telephone Number" />:
														</label>
														<div class="col-md-7 col-xs-7 no-padding pull-right">
															<input type="text" name="telePhone"
																id="telePhoneClientSaleNotice" value=""
																class="disabled boxPadding formControlInput margin-bottom-12 pull-right"
																readonly="">
														</div>
														<div class="field col-md-12 col-xs-12 no-padding">
															<label class="clsForLabel col-md-5 col-xs-5 row">12e.
																<spring:message code="label_email" text="Email" />:
															</label>
															<div class="col-md-7 col-xs-7 no-padding pull-right">
																<input name="email" id="emailClientSaleNotice"
																	type="text" value=""
																	class="disabled boxPadding formControlInput margin-bottom-12  pull-right"
																	readonly="">
															</div>
														</div>
														<!-- End of radiobuttonpadding -->
													</div>
													<!--End of approver-info  -->
								</fieldset>
							</div>
						</div>
						<!-- End of commonLeftsection -->
					</div>
					<!--End of  client-sale-search-third-section -->
					<div class="div-Additional-Tasks col-md-12 pull-left no-padding">
						<span class="col-xs-12 no-padding margin-bottom-12 margin-top-24">
							<label class="clientInfoLabelName1 notes"><strong><spring:message
										code="label_noticeToClient"
										text="NOTICE TO CLIENT: Upon submission of this sale request, please save a copy of this request from Request Center and email to the purchaser for their reference." /></strong></label>
						</span> <span class="col-xs-12 no-padding"> <label
							class="clientInfoLabelName1 notes"><strong><spring:message
										code="label_noticeToPurchaser"
										text="NOTICE TO PURCHASER: The vehicle you are purchasing may be equipped with a telematics (data tracking) device. Element has not independently verified (and will not independently verify) the presence, absence or inactivity of any device in the vehicle. For more information, you should contact the manufacturer or distributor identified on the device (if any). Or, you may choose to have the device removed by an automotive service shop subsequent to purchase." /></strong></label>
						</span>
					</div>
					<div class="client-sale-notes col-md-12 pull-left margin-bottom-12">
						<sup class=" clsForRedNote">*</sup><label
							class="clsForLabel fontWeightNormal"><spring:message
								code="label_marksReqField" text="marks required fields" /></label>
						<div class="blackline"></div>
					</div>
					<div
						class="client-sale-search-cancle-sav-div col-md-12 pull-left margin-bottom-12">
						<input id="clientSalecancle1" type="button" class="btnSecondary"
							value="<spring:message code="label_cancelF" text="Cancel" />"
							href="javascript:void(0);"> <input
							id="saveClientSaleOther" type="button"
							class="btnPrimary pull-right"
							value="<spring:message code="label_saveF" text="Save" />"
							href="javascript:void(0);">
					</div>
				</div>
				<!-- End of contClientSaleReqWrapper -->
				<div id="saveClientSaleloadingdialog" class="col-md-12 clearfix"
					style="display: none; height: 100px;">
					<table align="center" width="100%" height="100%" cellpadding="0"
						cellspacing="0">
						<tbody>
							<tr>
								<td align="center" width="100%"><img
									src="images/working2.gif" hspace="5"
									style="vertical-align: middle; margin-top: 35px"
									align="absmiddle"></td>
							</tr>
							<tr>
								<td align="center"><spring:message
										code="label_savingChanges" text="Saving changes" />... <spring:message
										code="label_pleaseWait" text="Please wait" />...</td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- End of saveClientSaleloadingdialog -->
			</div>
		</div>
	</div>
</div>
<!--  Main Container close-->

<script>
	$(document)
			.ready(
					function() {

						$(".clientsalecap").on("click", function() {
							$("#capture-popup a").addClass("caplink");
							$(".caplink").on("click", function() {
								$(".modal-backdrop").remove();
							})
						});
						$('#yes').prop('checked', true);
						$(
								'#clientSaleNoticeClose,#clientSalecancle1,#clientSalecancle2,#clientSaleNoticeClose')
								.click(function() {
									/* $('#clientSaleNoticeDailog').dialog('close'); */

									$("#clientSaleNoticeDailog").modal("hide");
								});

						var internalUserClientSale = $(
								'#internalUserClientSale').val();

						if ((internalUserClientSale == 0)) {
							userNameBulk = $('#firstNameClientSale').val()
									+ " " + $('#lastNameClientSale').val();
							var phoneNumber = '${user.contact.phoneNumber}';
							var emailAddress = '${user.contact.emailAddress}';
							$('#nameClientSaleNotice').val(userNameBulk);
							$('#sigClientSaleNotice').removeClass('disabled');
							$('#telePhoneClientSaleNotice').removeClass(
									'disabled');
							$('#emailClientSaleNotice').removeClass('disabled');
							$('#sigClientSaleNotice').removeClass('disabled');
							//$('#emailClientSaleNotice').css('width','200px');
							$('#telePhoneClientSaleNotice').val(phoneNumber);
							$('#emailClientSaleNotice').val(emailAddress);
							$('#sigClientSaleNotice').removeAttr('readonly');
							$('#emailClientSaleNotice').removeAttr('readonly');
							$('#emailClientSaleNotice').removeAttr('readonly');
						} else {
							$('#sigClientSaleNotice').addClass('disabled');
							$('#telePhoneClientSaleNotice')
									.addClass('disabled');
							$('#emailClientSaleNotice').addClass('disabled');
							$('#sigClientSaleNotice').addClass('disabled');
							$('#sigClientSaleNotice').attr('readonly',
									'readonly');
							$('#telePhoneClientSaleNotice').attr('readonly',
									'readonly');
							$('#emailClientSaleNotice').attr('readonly',
									'readonly');
						}

						//PO box radio button change function starts
						$('#contClientSaleReqWrapper').click(
								function() {

									if ($("#mailToLienholderClient").prop(
											"checked") == true) {
										$('#businessClient').val(
												$('#lienHolder').val());
										$('#attnClient').val($('#attn').val());
										$('#addressClient').val(
												$('#address').val());
										$('#cityClientSale').val(
												$('#cityClient').val());
										$('#zipCodeDwn').val(
												$('#zipCodeUp').val());
										$('#reqStateDwn').val(
												$('#reqStateUp').val());
									} else {
										$('#businessClient').val('');
										$('#attnClient').val('');
										$('#addressClient').val('');
										$('#cityClientSale').val('');
										$('#zipCodeDwn').val('');
										$('#reqStateDwn').val(0);
									}
								});
						$(document)
								.on(
										"click",
										"#mailToLienholderClient",
										function() {
											if ($(this).is(":checked")) {
												$("#mailToLienholderClient")
														.prop("checked", true);
												$('#businessClient').attr(
														"disabled", "disabled");
												$('#attnClient').attr(
														"disabled", "disabled");
												$('#addressClient').attr(
														"disabled", "disabled");
												$('#cityClientSale').attr(
														"disabled", "disabled");
												$('#zipCodeDwn').attr(
														"disabled", "disabled");
												$('#businessClient').prop(
														"readonly", true);
												$('#attnClient').prop(
														"readonly", true);
												$('#addressClient').prop(
														"readonly", true);
												$('#cityClientSale').prop(
														"readonly", true);
												$('#zipCodeDwn').prop(
														"readonly", true);
												$('#businessClient').val(
														$('#lienHolder').val());
												$('#attnClient').val(
														$('#attn').val());
												$('#addressClient').val(
														$('#address').val());
												$('#cityClientSale').val(
														$('#cityClient').val());
												$('#zipCodeDwn').val(
														$('#zipCodeUp').val());
												$('#reqStateDwn').val(
														$('#reqStateUp').val());
												$('#businessClient').css(
														"border", "none");
												$('#attnClient').css("border",
														"none");
												$('#addressClient').css(
														"border", "none");
												$('#cityClientSale').css(
														"border", "none");
												$('#zipCodeDwn').css("border",
														"none");
												$('#businessClient').css(
														"border-bottom",
														"1px solid #E0E0E0");
												$('#attnClient').css(
														"border-bottom",
														"1px solid #E0E0E0");
												$('#addressClient').css(
														"border-bottom",
														"1px solid #E0E0E0");
												$('#cityClientSale').css(
														"border-bottom",
														"1px solid #E0E0E0");
												$('#zipCodeDwn').css(
														"border-bottom",
														"1px solid #E0E0E0");
												$('#businessClient').css(
														"background", "#fff");
												$('#attnClient').css(
														"background", "#fff");
												$('#addressClient').css(
														"background", "#fff");
												$('#cityClientSale').css(
														"background", "#fff");
												$('#zipCodeDwn').css(
														"background", "#fff");
											} else {
												$("#mailToLienholderClient")
														.prop("checked", false);
												$('#businessClient')
														.removeAttr("disabled");
												$('#businessClient').prop(
														"readonly", false);
												$('#attnClient').removeAttr(
														"disabled");
												$('#attnClient').prop(
														"readonly", false);
												$('#addressClient').removeAttr(
														"disabled");
												$('#addressClient').prop(
														"readonly", false);
												$('#cityClientSale')
														.removeAttr("disabled");
												$('#cityClientSale').prop(
														"readonly", false);
												$('#zipCodeDwn').removeAttr(
														"disabled");
												$('#zipCodeDwn').prop(
														"readonly", false);
												$('#businessClient')
														.css("border-bottom",
																"none");
												$('#attnClient')
														.css("border-bottom",
																"none");
												$('#addressClient')
														.css("border-bottom",
																"none");
												$('#cityClientSale')
														.css("border-bottom",
																"none");
												$('#zipCodeDwn')
														.css("border-bottom",
																"none");
												$('#businessClient').css(
														"border",
														"1px solid #aaaaaa");
												$('#attnClient').css("border",
														"1px solid #aaaaaa");
												$('#addressClient').css(
														"border",
														"1px solid #aaaaaa");
												$('#cityClientSale').css(
														"border",
														"1px solid #aaaaaa");
												$('#zipCodeDwn').css("border",
														"1px solid #aaaaaa");
												$('#businessClient').val('');
												$('#attnClient').val('');
												$('#addressClient').val('');
												$('#cityClientSale').val('');
												$('#zipCodeDwn').val('');
												$('#reqStateDwn').val(0);
											}
										});
						//PO box radio button change function ends

						var saleTypeRadio = "", methodOfSale = "", leaseType = "", titleTransfer = "", noLienHolder = "";
						var mailToState = '';

						var newDate = new Date();

						var month1 = newDate.getMonth() + 1;
						var day1 = newDate.getDate();
						var year1 = newDate.getFullYear();
						var newApprovalDate = month1 + '/' + day1 + '/' + year1;
						$('input[name="approvalDate"]').val(newApprovalDate);
						window.CallParent = function(data) {
							responseData = $.parseJSON(data);

							$('input[name="CRF378"]')
									.val(responseData.cityName);
							$('input[name="CRF379"]').val(responseData.state);
							$('input[name="CRF381"]').val(responseData.country);
						}
						var zipFlagClient = true;
						$('#clientZipValue').keydown(function(e) {
							var keyCode = e.keyCode || e.which;
							var value = $("#clientZipValue").val();
							if (value != '') {
								zipFlagClient = false;
							}
							if (keyCode == 9 && zipFlagClient == false) {
								$(".clientother-find-button").trigger('click');
							}
						});

						$(".clientother-find-button")
								.on(
										'click',
										function() {

											$('input[name="CRF378"]').val("");
											$('input[name="CRF379"]').val("");
											$('input[name="CRF381"]').val("");
											var zipCode = $("#clientZipValue")
													.val();

											var mapForm = document
													.createElement("form");
											mapForm.setAttribute('method',
													"POST");
											mapForm
													.setAttribute('action',
															"${pageContext.request.contextPath}/requestCenterHomefindZipCode");
											mapForm.setAttribute('target',
													"Map");
											var mapInput = document
													.createElement("input");
											mapInput.setAttribute('type',
													"hidden");
											mapInput.setAttribute('name',
													"zipCode");
											mapInput.setAttribute('value',
													zipCode);
											mapForm.appendChild(mapInput);
											// document.body.appendChild(mapForm); 
											map = window
													.open(
															"",
															"Map",
															"height=500,width=500,top=100, left=150, status=yes , toolbar=no , menubar=no , location=no");
											document.body.appendChild(mapForm);
											mapForm.submit();
										});

						$('input:radio')
								.change(
										function() {
											var radioval = $(this).attr('name')
													+ '-' + $(this).val();
											$(
													'.transferDoc input[type="radio"], .lienInfoClient input[type="radio"]')
													.prop('disabled', false);

											switch (radioval) {

											case 'methodOfSale-1':

												$(
														'.payment-Instructions-cont[id="client"]')
														.show();
												$(
														'.payment-Instructions-cont[id="wireTransfer"]')
														.hide();
												break;

											case 'methodOfSale-2':

												$(
														'.payment-Instructions-cont[id="wireTransfer"]')
														.show();
												$(
														'.payment-Instructions-cont[id="client"]')
														.hide();
												break;

											case 'titleTransfer-1':

												//code
												$(
														".shippingInstructions[id='fedex']")
														.show();
												$(
														".shippingInstructions[id='phh']")
														.css('display', 'none');
												$(
														".shippingInstructions[id='usps']")
														.hide();
												$(
														".shippingInstructions[id='ups']")
														.hide();
												var saleType = $(
														'input[name="saleType"]')
														.val();
												var saleType4 = $('input[name="saleType"][value="4"]');
												var saleType6 = $('input[name="saleType"][value="6"]');
												if (saleType == '1'
														|| saleType == '2'
														|| saleType == '5') {
													$('#specialInstructions ul')
															.html('');
												}
												if (saleType4.is(':checked')) {
													$('#specialInstructions ul')
															.html(
																	'<li id="otherInstructions" class="">Claim number and Insurance Documents must be attached. The purchaser must be insurance company or client.</li>');
												} else if (saleType6
														.is(':checked')) {
													$('#specialInstructions ul')
															.html(
																	'<li id="otherInstructions" class="">Motor Company buy-back documents must be attached. The purchaser must be motor company.</li>');
												}
												break;

											case 'titleTransfer-2':

												//code
												$(
														".shippingInstructions[id='fedex']")
														.hide();
												$(
														".shippingInstructions[id='usps']")
														.show();
												$(
														".shippingInstructions[id='phh']")
														.hide();
												$(
														".shippingInstructions[id='ups']")
														.hide();
												var saleType4 = $('input[name="saleType"][value="4"]');
												var saleType6 = $('input[name="saleType"][value="6"]');
												if (saleType4.is(':checked')) {
													$('#specialInstructions ul')
															.html(
																	'<li id="researchFMV" class="">A USPS Airbill is required. Please upload.</li><li id="otherInstructions" class="">Stolen Police Incident Report must be attached. No title paperwork will be mailed. Purchaser must be client.</li>');
												} else if (saleType6
														.is(':checked')) {
													$('#specialInstructions ul')
															.html(
																	'<li id="researchFMV" class="">A USPS Airbill is required. Please upload.</li><li id="otherInstructions" class="">Motor Company buy-back documents must be attached. The purchaser must be motor company.</li>');
												} else
													$('#specialInstructions ul')
															.html(
																	'<li id="researchFMV" class="">A USPS Airbill is required. Please upload.</li>');
												break;

											case 'titleTransfer-3':

												//code
												$(
														".shippingInstructions[id='fedex']")
														.hide();
												$(
														".shippingInstructions[id='usps']")
														.hide();
												$(
														".shippingInstructions[id='phh']")
														.hide();
												$(
														".shippingInstructions[id='ups']")
														.show();
												var saleType = $(
														'input[name="saleType"]')
														.val();
												var saleType4 = $('input[name="saleType"][value="4"]');
												var saleType6 = $('input[name="saleType"][value="6"]');
												if (saleType == '1'
														|| saleType == '2'
														|| saleType == '5') {
													$('#specialInstructions ul')
															.html('');
												}
												if (saleType4.is(':checked')) {
													$('#specialInstructions ul')
															.html(
																	'<li id="otherInstructions" class="">Claim number and Insurance Documents must be attached. The purchaser must be insurance company or client.</li>');
												} else if (saleType6
														.is(':checked')) {
													$('#specialInstructions ul')
															.html(
																	'<li id="otherInstructions" class="">Motor Company buy-back documents must be attached. The purchaser must be motor company.</li>');
												}
												break;

											case 'titleTransfer-4':

												//code
												$(
														".shippingInstructions[id='fedex']")
														.hide();
												$(
														".shippingInstructions[id='phh']")
														.show();
												$(
														".shippingInstructions[id='usps']")
														.hide();
												$(
														".shippingInstructions[id='ups']")
														.hide();
												var saleType = $(
														'input[name="saleType"]')
														.val();
												var saleType6 = $('input[name="saleType"][value="6"]');
												if (saleType == '1'
														|| saleType == '2'
														|| saleType == '5') {
													$('#specialInstructions ul')
															.html('');
												}

												if (saleType4.is(':checked')) {
													$('#specialInstructions ul')
															.html(
																	'<li id="otherInstructions" class="">Claim number and Insurance Documents must be attached. The purchaser must be insurance company or client.</li>');
												} else if (saleType6
														.is(':checked')) {
													$('#specialInstructions ul')
															.html(
																	'<li id="otherInstructions" class="">Motor Company buy-back documents must be attached. The purchaser must be motor company.</li>');
												}
												break;

											case 'titleTransfer-6':

												//code
												$('#specialInstructions ul')
														.html('');
												break;

											case 'saleType-1':

												var chkval = $('input[name="titleTransfer"][value="4"]');
												var chkval3 = $('input[name="titleTransfer"][value="3"]');
												var chkval1 = $('input[name="titleTransfer"][value="1"]');
												if (chkval.is(':checked')
														|| chkval3
																.is(':checked')
														|| chkval1
																.is(':checked')) {
													$('#specialInstructions ul')
															.html('');
												}
												$('.mail-title input')
														.removeClass('disabled');
												$(
														'.mail-title input, .mail-title select')
														.prop('disabled', false);
												$('.ask-for-FMV').show();
												$(
														'.cost-Amount[id="fairMarketVal"]')
														.css('padding-bottom',
																'22px');
												$('#askForFMV')
														.change(
																function() {
																	if ($(
																			'#askForFMV')
																			.is(
																					':checked')) {
																		$(
																				'#fmValue')
																				.val(
																						'TBD');
																	} else {
																		$(
																				'#fmValue')
																				.val(
																						'N/A');
																	}

																});
												if ($('#askForFMV').is(
														':checked')) {
													$('#fmValue').val('TBD');
												} else {
													$('#fmValue').val('N/A');
												}

												$('.cost-Amount input').prop(
														'disabled', false);
												$(
														'input[name="CRF400"] , input[name="total"] , input[id="remainBal"]')
														.val('15.00');
												$('#sale , #payAmount')
														.removeClass('disabled');

												break;

											case 'saleType-2':

												var chkval = $('input[name="titleTransfer"][value="4"]');
												var chkval1 = $('input[name="titleTransfer"][value="1"]');
												if (chkval.is(':checked')
														|| chkval1
																.is(':checked')) {
													$('#specialInstructions ul')
															.html('');
												}
												$('.mail-title input')
														.removeClass('disabled');
												$(
														'.mail-title input, .mail-title select')
														.prop('disabled', false);
												$('.ask-for-FMV').show();
												$(
														'.cost-Amount[id="fairMarketVal"]')
														.css('padding-bottom',
																'22px');
												$('#askForFMV')
														.change(
																function() {
																	if ($(
																			'#askForFMV')
																			.is(
																					':checked')) {
																		$(
																				'#fmValue')
																				.val(
																						'TBD');
																	} else {
																		$(
																				'#fmValue')
																				.val(
																						'N/A');
																	}

																});
												if ($('#askForFMV').is(
														':checked')) {
													$('#fmValue').val('TBD');
												} else {
													$('#fmValue').val('N/A');
												}
												$('#sale , #payAmount')
														.removeClass('disabled');
												$('#sale').val('0.00');
												$('.cost-Amount input').prop(
														'disabled', false);
												$(
														'input[name="CRF400"] , input[name="total"] , input[id="remainBal"]')
														.val('15.00');

												break;

											case 'saleType-3':

												//code
												$("#shippingServiceDetails")
														.css('display', 'none');
												var chkval = $('input[name="titleTransfer"][value="2"]');

												$('#specialInstructions ul')
														.html(
																'<li id="otherInstructions" class="">Stolen Police Incident Report must be attached. No title paperwork will be mailed. Purchaser must be client.</li>');
												$('.lienInfoClient input')
														.addClass('disabled');
												$('.mail-title input')
														.addClass('disabled');
												$(
														'.transferDoc input[type="radio"], .lienInfoClient input[type="radio"], .lienInfoClient input[type="checkbox"], .lienInfoClient input, .mail-title input, .mail-title select, .lienInfoClient select')
														.prop('disabled', true);
												$(
														'.lienInfoClient input[name="lien"][value="No"]')
														.prop('checked', true);

												$('.stolen-vehicle-price')
														.show();
												$(
														'.cost-Amount[id="fairMarketVal"]')
														.css('padding-bottom',
																'3px');
												$('.ask-for-FMV').hide();
												$(
														'input[name="CRF400"] , input[name="total"] , input[id="remainBal"]')
														.val('0.00');
												$('#salePriceInstructions')
														.html(
																'Stolen vehicles must have a sale price of $0.00.');
												$('.cost-Amount input').prop(
														'disabled', true);
												$('#sale , #payAmount')
														.addClass('disabled');
												$('#sale , #payAmount').val(
														'0.00');
												$('#fmValue').val('N/A');

												break;

											case 'saleType-4':

												var chkval = $('input[name="titleTransfer"][value="2"]');
												if (chkval.is(':checked')) {
													$('#specialInstructions ul')
															.html(
																	'<li id="uspsAirbill" docid="6" class="docRequired hideOnStolen" style="">A USPS Airbill is required.  Please upload.</li><li id="otherInstructions" class="">Claim number and Insurance Documents must be attached. The purchaser must be insurance company or client.</li>');
												}

												else
													$('#specialInstructions ul')
															.html(
																	'<li id="otherInstructions" class="">Claim number and Insurance Documents must be attached. The purchaser must be insurance company or client.</li>');
												$('.mail-title input')
														.removeClass('disabled');
												$(
														'.mail-title input, .mail-title select')
														.prop('disabled', false);
												$('#salePriceInstructions')
														.html(
																'Sale price must be $0.00 or amount of insurance check.  Claim no. and insurance documents must be attached.');
												$('#sale , #payAmount')
														.removeClass('disabled');
												$('.ask-for-FMV').hide();
												$(
														'.cost-Amount[id="fairMarketVal"]')
														.css('padding-bottom',
																'3px');
												$('#sale , payAmount').val(
														'0.00');
												$('.cost-Amount input').prop(
														'disabled', false);
												$(
														'input[name="CRF400"] , input[name="total"] , input[id="remainBal"]')
														.val('15.00');
												$('#fmValue').val('N/A');
												break;

											case 'saleType-5':

												var chkval4 = $('input[name="titleTransfer"][value="4"]');
												var chkval3 = $('input[name="titleTransfer"][value="3"]');
												var chkval2 = $('input[name="titleTransfer"][value="2"]');
												var chkval1 = $('input[name="titleTransfer"][value="1"]');
												if (chkval4.is(':checked')
														|| chkval3
																.is(':checked')
														|| chkval1
																.is(':checked')) {
													$('#specialInstructions ul')
															.html('');
												}

												else if (chkval2.is(':checked')) {
													$('#specialInstructions ul')
															.html(
																	'<li id="uspsAirbill" docid="6" class="docRequired hideOnStolen" style="">A USPS Airbill is required.  Please upload.</li>');
												} else
													$('#specialInstructions ul')
															.html(
																	'<li id="otherInstructions" class="">Claim number and Insurance Documents must be attached. The purchaser must be insurance company or client.</li>');
												$('.mail-title input')
														.removeClass('disabled');
												$(
														'.mail-title input, .mail-title select')
														.prop('disabled', false);

												$('.ask-for-FMV').show();
												$(
														'.cost-Amount[id="fairMarketVal"]')
														.css('padding-bottom',
																'22px');
												$('#askForFMV')
														.change(
																function() {
																	if ($(
																			'#askForFMV')
																			.is(
																					':checked')) {
																		$(
																				'#fmValue')
																				.val(
																						'TBD');
																	} else {
																		$(
																				'#fmValue')
																				.val(
																						'N/A');
																	}

																});
												if ($('#askForFMV').is(
														':checked')) {
													$('#fmValue').val('TBD');
												} else {
													$('#fmValue').val('N/A');
												}
												$('#sale , #payAmount')
														.removeClass('disabled');
												$('#sale').val('0.00');
												$('.cost-Amount input').prop(
														'disabled', false);
												$(
														'input[name="CRF400"] , input[name="total"] , input[id="remainBal"]')
														.val('15.00');
												break;

											case 'saleType-6':

												var chkval = $('input[name="titleTransfer"][value="2"]');
												if (chkval.is(':checked')) {
													$('#specialInstructions ul')
															.html(
																	'<li id="uspsAirbill" docid="6" class="docRequired hideOnStolen" style="">A USPS Airbill is required.  Please upload.</li><li id="otherInstructions" class="">Motor Company buy-back documents must be attached. The purchaser must be motor company.</li>');
												} else
													$('#specialInstructions ul')
															.html(
																	'<li id="otherInstructions" class="">Motor Company buy-back documents must be attached. The purchaser must be motor company.</li>');
												$('.mail-title input')
														.removeClass('disabled');
												$(
														'.mail-title input, .mail-title select')
														.prop('disabled', false);
												$('#salePriceInstructions')
														.html(
																'Sale price must be in the amount of the check from the motor company.');
												$('#sale , #payAmount')
														.removeClass('disabled');
												$('.ask-for-FMV').hide();
												$(
														'.cost-Amount[id="fairMarketVal"]')
														.css('padding-bottom',
																'3px');
												$('#sale').val('0.00');
												$('#fmValue').val('N/A');
												break;

											//AC_FSP CHANGES START 
											case 'saleType-7':
												openBuyOutQuotePopup('Client');
												break;
											case 'saleType-8':
												openBuyOutQuotePopup('Bank');
												break;
											case 'saleType-9':
												openBuyOutQuotePopup('Competitor');
												break;
											//AC_FSP CHANGES END

											case 'lien-Yes':
												$('.lienInfoClient input')
														.removeClass('disabled');
												$(
														'.lienInfoClient input, .lienInfoClient input[type="checkbox"], .lienInfoClient select')
														.prop('disabled', false);

												break;

											case 'lien-No':
												$(
														'.lienInfoClient input[type="text"] , .lienInfoClient input[type="checkbox"]')
														.addClass('disabled');
												$(
														'.lienInfoClient select, .lienInfoClient input[type="text"], .lienInfoClient input[type="checkbox"]')
														.prop('disabled', true);
												$("input[name=lien]").prop(
														'disabled', false);
												$("input[name=lien]")
														.removeClass('disabled');
												break;

											}
										});

						var NewTotalAmt1 = 0;
						var totalAmt = $('#totalAmount').val();
						var remainBal = $('#remainBal').val();

						$("#sale , #payAmount")
								.blur(
										function() {

											var salePrice = $('#sale').val();
											if (salePrice != '') {
												$('#sale').val(
														parseFloat(salePrice)
																.toFixed(2));
											}
											var payAmount = $('#payAmount')
													.val();
											if (payAmount != '') {
												$('#payAmount').val(
														parseFloat(payAmount)
																.toFixed(2));
											}

											if (payAmount == '') {
												NewTotalAmt1 = parseFloat(salePrice)
														+ parseFloat(totalAmt);
												$('#totalAmount')
														.val(
																NewTotalAmt1
																		.toFixed(2));
												var NewTotalAmt2 = NewTotalAmt1 - 0;
												$('#remainBal')
														.val(
																NewTotalAmt2
																		.toFixed(2));

											} else {

												NewTotalAmt1 = parseFloat(salePrice)
														+ parseFloat(totalAmt);
												$('#totalAmount')
														.val(
																NewTotalAmt1
																		.toFixed(2));

												var NewTotalAmt3 = parseFloat(NewTotalAmt1)
														- parseFloat(payAmount);
												$('#remainBal')
														.val(
																NewTotalAmt3
																		.toFixed(2));

											}
											if (payAmount == ''
													&& salePrice == '') {
												$('#totalAmount').val(totalAmt);

												$('#remainBal').val(remainBal);

											}
										});

						$('input[name="saleType"]').on('click', function() {

							saleTypeRadio = $(this).val();

						});
						$('input[name="methodOfSale"]').on('click', function() {

							methodOfSale = $(this).val();

						});
						$('input[name="titleTransfer"]').on('click',
								function() {

									titleTransfer = $(this).val();

								});
						$('input[name="leaseType"]').on('click', function() {

							leaseType = $(this).val();

						});
						//yes no lien radio
						$(".noLienHolder").on('click', function() {

							noLienHolder = $(this).val();

						});

						$('#saveClientSale,#saveClientSaleOther')
								.click(
										function() {

											$(
													'#saveClientSale,#saveClientSaleOther')
													.addClass("disabledSavBtn");
											$(
													'#saveClientSale,#saveClientSaleOther')
													.prop('disabled', true);

											/* $('#saveClientSaleloadingdialog').dialog({
											autoOpen : false,
											maxHeight: 500,
											height: 500,
											draggable : false,
											bgiframe : true,
											width : 300,
											maxWidth : 400,
											modal : true,
											resizable : false,
											show : 'fade',
											hide : 'fade',
											dialogClass: 'loading-dialog'
											});
											$('#saveClientSaleloadingdialog').dialog('open');  */
											$(
													"div[aria-describedby='saveClientSaleloadingdialog'] .ui-widget-header")
													.hide();

											var clientSaleChoices = [];
											var purchaserCertificate = [];
											var saleTaxCal = [];
											var a = $("select[name='CRF393']")
													.children("option").filter(
															":selected").text();
											var methodOfSaleHidden = '';
											var saleTypeHiddenVal = '';
											var leasedTypeHidden = '';
											var titleTransferHidden = '';
											if (saleTypeRadio == 1) {
												saleTypeHiddenVal = $(
														'#businessHidden')
														.val();
											} else if (saleTypeRadio == 2) {
												saleTypeHiddenVal = $(
														'#auctionHidden').val();
											} else if (saleTypeRadio == 3) {
												saleTypeHiddenVal = $(
														'#damageUnitHidden')
														.val();
											} else if (saleTypeRadio == 4) {
												saleTypeHiddenVal = $(
														'#stolenHidden').val();
											} else if (saleTypeRadio == 5) {
												saleTypeHiddenVal = $(
														'#totalLossHidden')
														.val();
											} else if (saleTypeRadio == 6) {
												saleTypeHiddenVal = $(
														'#saleTypeHidden')
														.val();
											}

											if (methodOfSale == 1) {
												methodOfSaleHidden = $(
														'#checkMailHidden')
														.val();
											} else if (methodOfSale == 2) {
												methodOfSaleHidden = $(
														'#wireTransferHidden')
														.val();
											} else if (methodOfSale == 3) {
												methodOfSaleHidden = $(
														'#checklessClientSaleHidden')
														.val();
											}

											/* if(leaseType==1)
											{
												leasedTypeHidden=$('#leasedHidden').val();
											}
											else
											if(leaseType==2)
											{
												leasedTypeHidden=$('#companyHidden').val();
											}	 */
											var titleTransferValue = $(
													'input[name="titleTransfer"]:checked')
													.val();
											if (titleTransferValue == 1) {
												titleTransferHidden = $(
														'#federaltwoHidden')
														.val();
											} else if (titleTransferValue == 2) {
												titleTransferHidden = $(
														'#uspsTwoHidden').val();
											} else if (titleTransferValue == 3) {
												titleTransferHidden = $(
														'#upsTwoHidden').val();
											} else if (titleTransferValue == 4) {
												titleTransferHidden = $(
														'#overnighttwoHidden')
														.val();
											}
											//vehicle information params
											//radio buttons done

											var a = $(
													'input[name="leaseType"]:checked')
													.val();
											if (a == 1) {
												leasedTypeHidden = $(
														'#leasedHidden').val();
											} else if (a == 2) {
												leasedTypeHidden = $(
														'#companyHidden').val();
											}

											clientSaleChoices
													.push({
														'saletype' : saleTypeRadio,
														'methodofpayment' : methodOfSale,
														'titletransfer' : $(
																'input[name="titleTransfer"]:checked')
																.val(),
														'currentvehical' : $(
																'input[name="leaseType"]:checked')
																.val(),
														'clientRequestSaleCode' : saleTypeHiddenVal,
														'clientRequestMethodCode' : methodOfSaleHidden,
														'clientRequestTiereCode' : titleTransferHidden,
														'clientRequestLeaseCode' : leasedTypeHidden,
														'acctZipCode' : $(
																'#upsAcctZipCode')
																.val(),
														'upsacct' : $(
																'#upsAcctNo')
																.val(),
														'fedexacct' : $(
																'#fedexAcctNo')
																.val(),
													});

											purchaserCertificate
													.push({
														'purchaser_emailAddress' : $(
																"input[name='CRF382']")
																.val(),
														'purchaser_phone' : $(
																"input[name='CRF383']")
																.val(),
														'purchasername' : $(
																'#purchaserName')
																.val(),
														'purchaserCo' : $(
																"input[name='CRF417']")
																.val(),
														'purchaserAddress' : $(
																"input[name='CRF377']")
																.val(),
														'cityname' : $(
																"input[name='CRF378']")
																.val(),
														'stcode' : $(
																"input[name='CRF379']")
																.val(),
														'zip' : $(
																"input[name='CRF380']")
																.val(),
														'purchasercounty' : $(
																"input[name='CRF381']")
																.val()
													});

											//calculation
											//400 - overnight handling fees

											saleTaxCal.push({
												'fairMarktVal' : $('#fmValue')
														.val(),
												'salePrice' : $("#sale").val(),
												'salesTax' : $("#salesTax")
														.val(),
												'totalTax' : $("#totalAmount")
														.val(),
												'paymentamt' : $("#payAmount")
														.val(),
												'remaningamt' : $("#remainBal")
														.val(),
												'administrativeFee' : $(
														'#adminFee').val(),
												'handlingFee' : $(
														'input[name="CRF400"]')
														.val()

											});
											mailToState = ((($(
													"select[name='CRF393']")
													.children("option").filter(
															":selected").text())
													.replace(/(Select)/g, ''))
													.replace(/(State)/g, ''))
													.trim();

											var paramMap = {};
											paramMap.requestedBy = $(
													'#onBehalfOfName').val();
											paramMap.unitNumber = $(
													'input[name="dspUnitNo"]')
													.val();
											paramMap.clientAssetId = $(
													'input[name="dspAssetNo"]')
													.val();
											paramMap.year = $(
													'input[name="dspModelYr"]')
													.val();
											paramMap.make = $(
													'input[name="dspMake"]')
													.val();
											paramMap.model = $(
													'input[name="dspModel"]')
													.val();
											paramMap.vin = $(
													'input[name="dspVin"]')
													.val();
											paramMap.odometer = $(
													'#clientOdometer').val();
											paramMap.clientSaleChoices = clientSaleChoices;

											paramMap.purchaserCertificate = purchaserCertificate;
											paramMap.parentRequestId = $(
													'.setRequestId').val();
											paramMap.clientInformation = {
												'clientNumber' : $(
														'input[name="dspCliNo"]')
														.val(),
												'clientName' : $(
														'input[name="dspCliName"]')
														.val()
											};
											paramMap.salesTaxCalculation = saleTaxCal;

											//lien information
											paramMap.lienInformation = {
												'lienHolder' : $("#lienHolder")
														.val(),
												'attn' : $("#attn").val(),
												'addrline1' : $(
														"input[name='CRF385']")
														.val(),
												'cityname' : $(
														"input[name='CRF386'")
														.val(),
												'postalcode' : $(
														"select[name='CRF387'")
														.children("option")
														.filter(":selected")
														.text(),
												'zipcd' : $(
														"input[name='CRF388']")
														.val(),
												'mailToLienholder' : $(
														"#mailToLienholderClient")
														.val()
											};

											//Mail title to	

											paramMap.mailToInformation = {
												'buisnessholder' : $(
														"input[name='CRF424']")
														.val(),
												'attn' : $(
														"input[name='CRF390']")
														.val(),
												'addrline1' : $(
														"input[name='CRF391']")
														.val(),
												'city' : $(
														"input[name='CRF392']")
														.val(),
												'postalcode' : mailToState,
												'zipcd' : $(
														"input[name='CRF394']")
														.val()
											};
											//approval infor 
											paramMap.approve = $(
													'input[name="CRF449"]')
													.val();
											paramMap.approverSignature = $(
													'input[name="signature"]')
													.val();
											paramMap.approverName = $(
													'input[name="name"]').val();
											paramMap.approvalDate = $(
													'input[name="approvalDate"]')
													.val();
											paramMap.approvePhone = $(
													'input[name="telePhone"]')
													.val();
											paramMap.approveEmail = $(
													'input[name="email"]')
													.val();
											console.log(JSON
													.stringify(paramMap));
											s
											var clientSaleNoticeParam = JSON
													.stringify(paramMap);

											/*console.log("clientSale--clientSaleNoticeParam:" + clientSaleNoticeParam);*/

											/* $.ajax({
												type: "POST",
												url: "clientsalesave",
												contentType:"application/json",
												dataType: "json",
											    data: clientSaleNoticeParam,
												success: function(data){
													
													 $('.request-check').trigger('click');
											    	 $(".req-submitted").empty();
											    	  $(".req-submitted").show(); 
											    	 $("<span>"+"Thank You. Request  "+data.parentRequestId+" "+"has been received."+"</span>").appendTo(".req-submitted");
											    	 $('.request-check')[0].click();
											    	 setTimeout(function(){ commonFunctionAjax('Draft', sortingText, "desc",count);},4000);
												},
												error: function(e)
												{
													console.log(e);
												}
											
												}).complete(function(){
													 $(".req-submitted").show();
													$('#saveClientSaleloadingdialog').dialog('close');
													$('.ui-dialog-titlebar').css('display','block');
													$('.client-sale-wrapper input[type="text"]').val('');
													$('.client-sale-wrapper input[type=radio]').prop('checked',false);
													$('.client-sale-wrapper input[type=checkbox]').prop('checked',false);
													$('.client-sale-wrapper select').val('');
													$("#clientSaleNoticeDailog").dialog(opt).dialog("close");
												}); */
											var url = 'ClientSaleMultipleDocsUpload';
											var sendrequestId = $(
													'#fileuploadFormClientSale .setRequestId')
													.val();
											fileSubmit(url, sendrequestId,
													clientSaleNoticeParam,
													"clientSaleNotice");
										});

					});

	// AC_FSP CHANGES START 
	function openBuyOutQuotePopup(purchaseType) {
		var clientOdometer = $('input[id="clientOdometer"]').val();
		var adminFee = $('input[id="adminFee"]').val();
		var salesTax = $('input[id="salesTax"]').val();
		var fmValue = $('input[id="fmValue"]').val();
		var zip = $("input[name='CRF380']").val();
		var clientNo = $("input[name='dspCliNo']").val();
		var usedUnitNo = $("input[name='dspUnitNo']").val();
		var overNightHandlingFee = $("input[name='CRF400']").val();
		var requestedBy = $("input[id='onBehalfOfName']").val();

		var mapForm = document.createElement("form");
		mapForm.setAttribute('method', "POST");
		mapForm
				.setAttribute('action',
						"${pageContext.request.contextPath}/requestCenterHome/buyOutQuotePopup");
		mapForm.setAttribute('target', "_child");

		var name = document.createElement("input");
		name.setAttribute('type', "hidden");
		name.setAttribute('name', "clientOdometer");
		name.setAttribute('value', clientOdometer);
		mapForm.appendChild(name);

		var name = document.createElement("input");
		name.setAttribute('type', "hidden");
		name.setAttribute('name', "adminFee");
		name.setAttribute('value', adminFee);
		mapForm.appendChild(name);

		var name = document.createElement("input");
		name.setAttribute('type', "hidden");
		name.setAttribute('name', "salesTax");
		name.setAttribute('value', salesTax);
		mapForm.appendChild(name);

		var name = document.createElement("input");
		name.setAttribute('type', "hidden");
		name.setAttribute('name', "fmValue");
		name.setAttribute('value', fmValue);
		mapForm.appendChild(name);
		document.body.appendChild(mapForm);

		var name = document.createElement("input");
		name.setAttribute('type', "hidden");
		name.setAttribute('name', "zip");
		name.setAttribute('value', zip);
		mapForm.appendChild(name);

		var name = document.createElement("input");
		name.setAttribute('type', "hidden");
		name.setAttribute('name', "clientNo");
		name.setAttribute('value', clientNo);
		mapForm.appendChild(name);

		var name = document.createElement("input");
		name.setAttribute('type', "hidden");
		name.setAttribute('name', "usedUnitNo");
		name.setAttribute('value', usedUnitNo);
		mapForm.appendChild(name);

		var name = document.createElement("input");
		name.setAttribute('type', "hidden");
		name.setAttribute('name', "overNightHandlingFee");
		name.setAttribute('value', overNightHandlingFee);
		mapForm.appendChild(name);

		var name = document.createElement("input");
		name.setAttribute('type', "hidden");
		name.setAttribute('name', "purchaseType");
		name.setAttribute('value', purchaseType);
		mapForm.appendChild(name);

		var name = document.createElement("input");
		name.setAttribute('type', "hidden");
		name.setAttribute('name', "requestedBy");
		name.setAttribute('value', requestedBy);
		mapForm.appendChild(name);

		map = window
				.open(
						"",
						"_child",
						"width=850,height=550,top=50,left=300, toolbar=no , menubar=no , location=no,scrollbars=no");
		mapForm.submit();
	}
	// AC_FSP CHANGES START
</script>
