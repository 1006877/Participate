<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<sec:authentication property="principal" var="user" />
<c:set var="internalUser" value="${user.internalUser}" />


<div class="client-sale-wrapper1 container-fluid no-padding"
	id="contClientWrap">
	<%-- <div class="comnDiagHeaher1 col-md-11 pull-right" style='display:none;'>
			  <ul>
				 <li id="copyButton" style="padding-right: 2px;">
				 	<a href="javascript:copyThisDialog('contClientWrap');" style="font-

size:9pt;"><spring:message code="label_copyF" text="Copy" /></a>
					<a href="javasscript:copyThisDialog('contClientWrap');"><img title="Print" 

src="images/copy.gif" class="printIcon"></a>&nbsp;&nbsp;
				 </li>
				 <li style="padding-right: 2px;">
				 	<a href="javascript:printThisDialog('contClientSaleReqWrapper1');"style="font-

size:9pt;"><spring:message code="label_print" text="Print" /></a>
				 	<a href="javascript:printThisDialog('contClientSaleReqWrapper1');"><img 

class="Capt-com-Images"src="images/print.gif"  border="0"></a>&nbsp;&nbsp;
				 </li>
				 <li style="padding-right: 2px;">
				 	<a href="javascript:captureThisDialog('contClientSaleReqWrapper1');"style="font-

size:9pt;"><spring:message code="label_capture" text="Capture" /></a>
				 	<a href="javascript:captureThisDialog('contClientSaleReqWrapper1');"><img 

class="Capt-com-Images"src="images/capture.gif"  border="0"></a>
				 </li>
				 <li style="padding-right: 2px;">
				 	<a href="javaScript:void(0);" id='requestGeneralClose' style="font-

size:9pt;"><spring:message code="label_close" text="Close" /></a>
				 </li>
			 </ul>
	</div> ><!-- End of comnDiagHeaher--> --%>
	<div class="comnDiagHeaher1 col-md-4 text-right" style="display: none;">
		<div class="row margin-bottom-24">
			<div class="col-md-12">
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs4 text-right">
					<a href="javascript:printThisDialog('contClientSaleReqWrapper1');"
						title="Print" style="cursor: pointer;" class="screen-print"><spring:message
							code="label_print" text="Print" /></a> <a
						href="javascript:printThisDialog('contClientSaleReqWrapper1');"><img
						src="images/global/icon_print_blue.png" alt="Print Icon"
						class="popup_icon"></a>
				</div>
				<div
					class="col-lg-4 col-md-4 col-sm-4 col-xs-4 text-right closeLink">
					<a href="javascript:captureThisDialog('capPrintDetails');"
						title="Capture" style="cursor: pointer;" class="screen-capture"><spring:message
							code="label_capture" text="Capture" /></a> <a
						href="javascript:captureThisDialog('capPrintDetails');"><img
						src="images/global/icon_capture_blue.png" alt="Capture Icon"
						class="popup_icon"></a>
				</div>
				<div
					class="col-lg-3 col-md-3 col-sm-3 col-xs-3 text-right closeButton">
					<a title="Close" style="cursor: pointer;" class="screen-capture"
						id="requestGeneralClose"><spring:message code="label_close"
							text="Close" /> <img src="images/global/close.png"
						alt="Capture Icon" height="16px" width="16px"
						class="iconTextStyle"> </a>

				</div>
			</div>
		</div>

	</div>
	<div class="capturePrintReqDetails">
		<div id="contClientSaleReqWrapper1"
			class="capture-req-details1 col-md-12 clearfix no-padding margin-auto boxPaddingDiv">
			<div
				class="client-sale-search-first-section col-xs-12  margin-bottom-24">
				<fieldset class="Section box-border">
					<div class="col-xs-12 sectionHeading text-left">
						<span>1.</span> <span><spring:message
								code="label_vehicInfor" text="Vehicle Information" /></span>:
					</div>
					<div class="boxPaddingDiv col-xs-12 no-padding">
						<span class="field col-sm-4 col-md-4 col-xs-4"> <label
							class="clsForLabel pull-left"><spring:message code=""
									text="Client Number" />:</label><input name="dspCliNo"
							class=" disabled inputborderNone backgroundNone margin-top-9 margin-left-5"
							value="" readonly="" size="5">
						</span> <span class="field col-sm-4 col-md-4 col-xs-4"><label
							class="clsForLabel pull-left"><spring:message
									code="label_usedUnitNo" text="Used Unit No" />:</label> <input
							name="dspUnitNo"
							class="disabled  inputborderNone backgroundNone margin-top-9 margin-left-5"
							value="" readonly="" size="10"> </span> <span
							class="field col-sm-4 col-md-4 col-xs-4"> <label
							class="clsForLabel pull-left"><spring:message
									code="label_clientAssetIdNo" text="Client Asset ID No" />:</label> <input
							name="dspAssetNo" value="DRIVER/LAGNA   "
							class="disabled inputborderNone backgroundNone margin-top-9 margin-left-5"
							readonly="" size="10"></span><br>
						<div class="clearfix col-xs-12">
							<span
								class="field clearfix  pull-left col-sm-8 col-md-8 col-xs-8 no-padding margin-bottom-10">
								<label class="clsForLabel pull-left col-sm-2 col-md-2 col-xs-2"><spring:message
										code="label_clientName" text="Client Name" />:</label> <label
								name="dspCliName" value=""
								class="col-sm-9 col-md-9 col-xs-9 disabled inputborderNone backgroundNone margin-top-9 margin-left-5 labelFontWeight"></label>
							</span> <span class="field  col-sm-4 col-md-4 col-xs-4 "> <label
								for="crf203" class="clsForLabel paddingTop5 pull-left"><spring:message
										code="label_odometer" text="Odometer" />:<sup
									class="clsForRedNote">*</sup></label> <input type="text"
								id="clientOdometer" name="crf203" size="10" maxlength="6"
								value="" class="formControlInput boxPadding"></span><br>
						</div>
						<div class="clearfix col-xs-12 ">
							<span
								class="clearfix pull-left col-sm-3 col-md-3 col-xs-3 no-padding"><label
								class="clsForLabel pull-left no-padding"><spring:message
										code="label_year" text="Year" />:</label> <input name="dspModelYr"
								class=" disabled inputborderNone backgroundNone pull-left no-padding textAlignCenter"
								value="" readonly=""></span> <span
								class="field pull-left col-sm-3 col-md-3 col-xs-3 no-padding"><label
								class="clsForLabel pull-left no-padding col-sm-3 col-md-3 col-xs-3"><spring:message
										code="label_make" text="Make" />:</label> <label name="dspMake"
								value="    "
								class="disabled inputborderNone pull-left backgroundNone labelFontWeight col-sm-8 col-md-8 col-xs-8"></label>
							</span> <span class="field pull-left col-sm-3 col-md-3 col-xs-3"><label
								class="clsForLabel pull-left no-padding col-sm-3 col-md-3 col-xs-3"><spring:message
										code="" text="" />Model:</label> <label name="dspModel" value=" "
								class="disabled inputborderNone pull-left backgroundNone labelFontWeight col-sm-8 col-md-8 col-xs-8"></label></span>
							<span
								class="field pull-left col-sm-3 col-md-3 col-xs-3 no-padding"><label
								class="clsForLabel pull-left no-padding col-sm-3 col-md-3 col-xs-3"><spring:message
										code="" text="" />VIN:</label> <label name="dspVin" value=" "
								class="disabled inputborderNone pull-left backgroundNone labelFontWeight col-sm-8 col-md-8 col-xs-8"></label></span>
						</div>
					</div>
					<!-- End of boxPadding -->
					<!-- 	<hr noshade="">  -->

					<div
						class="sep margin-top-10 margin-bottom-10 paddingRight10 paddingLeft10"></div>
					<div class="col-md-12">
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
							<br>940
							<spring:message code="label_ridgebrook" text="Ridgebrook Rd" />
							<br>
							<spring:message code="label_SparksMd" text="Sparks, MD" />
							21152
						</div>
					</div>
					<!-- End of HideDiveOnY -->
				</fieldset>
			</div>
			<!--End of client-sale-search-first-section -->
			<div
				class="client-sale-search-second-section col-md-12 col-xs-12 pull-left clearfix no-padding margin-bottom-24">
				<div
					class="client-sale-search-sub-section col-sm-6 col-md-6 col-xs-6 pull-left">
					<div class="Section box-border">
						<div class="payInstLineHeight col-xs-12 sectionHeading text-left">
							<span>2. <span><spring:message
										code="label_mthdOfPayment" text="Method of Payment" /></span>:<sup
								class="clsForRedNote">*</sup></span>
						</div>
						<!--End of payInstLineHeight  -->

						<div class="payInstLineHeight boxPaddingDiv pull-left">
							<div class="pull-left">
								<input name="methodOfSale" id="checkMail1"
									class="method-Of-Sale checkboxSelected" type="radio" value="">
								<label id="checkMailedLabel1"
									class="selectedSpan font-weight-300"></label>
							</div>
							<div class="pull-left clearfix">
								<input name="methodOfSale" id="wireTransfer1"
									class="method-Of-Sale checkboxSelected" type="radio" value="">
								<label id="wireTransferLabel1"
									class="selectedSpan font-weight-300"></label>
							</div>
							<div class="pull-left clearfix">
								<input name="checklessClientSale" id="checklessClientSale1"
									type="radio" value="" class="checkboxSelected"> <label
									id="checklessClientSaleLabel1"
									class="selectedSpan font-weight-300"></label>
							</div>
						</div>
						<!-- End of payInstLineHeight -->
						<div class="clear-fix"></div>
						<div id="saleInstructions">
							<div
								class="payment-Instructions-cont payment-Instructions payInstLineHeight text-left margin-left-15"
								id="client">
								<div class="sep margin-top-10 margin-bottom-10"></div>
								<spring:message code="label_mailCertifiedPayable"
									text="MAIL THIS FORM WITH CERTIFIED OR BANK CHECK PAYABLE TO" />
								<strong><spring:message code="label_phhFundingCapital"
										text="PHH FUNDING, LLC" /></strong>
								<spring:message code="label_toCaps" text="TO" />
								:
								<div class="payment-Instructions-main-div row">
									<div
										class="payment-Instructions-client-div payment-Instructions col-md-6 pull-left"
										style="font-size: 8pt;">
										<spring:message code="" text="" />
										First Class Mail:<br> <strong><spring:message
												code="label_phhFundingsmall" text="PHH Funding, LLC" /><br>
											<spring:message code="label_collectCenterDrive"
												text="16346 Collections Center Drive" /><br> <spring:message
												code="label_chicagoL" text="Chicago, IL 60693" /></strong><br>
									</div>
									<div
										class="payment-Instructions-client-div payment-Instructions col-md-6 pull-right">
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
							<div
								class="payment-Instructions-cont payment-Instructions payInstLineHeight text-left margin-left-15"
								id="wireTransfer">
								<div class="sep margin-top-10 margin-bottom-10"></div>
								<spring:message code="label_wireTransfInst"
									text="WIRE TRANSFER INSTRUCTIONS" />
								:
								<div class="payment-Instructions-main-div">
									<div
										class="payment-Instructions-wire-first-div payment-Instructions">
										<spring:message code="" text="" />
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
										class="payment-Instructions-wire-second-div payment-Instructions clsForLabel">
										<spring:message code="" text="" />
										<spring:message code="label_bankAmericaStreetNy"
											text="Bank of America, 100 West 33rd Street, New York, NY 10001" />
										<br>
										<spring:message code="label_chesapeakeFinanceHold"
											text="Chesapeake Finance Holding # 8188902291" />
										<br>026009593<br>
										<spring:message code="label_remarketingDept"
											text="Remarketing Department" />
									</div>
									<label class="ClientInfoLabelName1 margin-left-5"><spring:message
											code="label_includePurchaserName"
											text="Include purchaser's name and client/unit # with wire" /></label>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div
					class="client-sale-search-sub-section col-sm-6 col-md-6 col-xs-6 pull-left">
					<div
						class="Section col-md-12 pull-left margin-bottom-24 no-padding box-border">
						<div class="sectionHeading no-padding text-left">
							<span>3. <span><spring:message
										code="label_vehIsCurrent" text="Vehicle is currently" /></span>:<sup
								class="clsForRedNote">*</sup></span>
						</div>
						<div class="radiobuttonpadding">
							<div class="col-md-6 col-xs-6 text-left">
								<span class="col-md-12 col-xs-12 col-sm-12"><input
									id="leased1" name="leaseType"
									class="lease-Type checkboxSelected col-md-2 col-xs-2 col-sm-2"
									type="radio" value="" disabled=""> <label
									id="leasedThroughElement1"
									class="clientInfoLabelName1 clsForLabelClientSale selectedSpan col-md-10 col-xs-10 col-sm-10"></label></span>
							</div>
							<div class="col-md-6 col-xs-6 text-right">
								<span><input id="company1" name="leaseType"
									class="lease-Type checkboxSelected pull-left" type="radio"
									value="" disabled="" checked=""> <label
									id="CompanyNonLeased1"
									class="clientInfoLabelName1 clsForLabelClientSale selectedSpan"></label></span>
							</div>
						</div>
					</div>
					<!--End of Section col-md-12 pull-left  -->
					<fieldset class="Section col-md-12 pull-left no-padding">
						<div class="col-xs-12  box-border no-padding">
							<div class="sectionHeading no-padding text-left">
								<span>4. <span><spring:message
											code="label_saleType" text="Sale Type" /></span>:<sup
									class="clsForRedNote">*</sup></span><br>
							</div>
							<div class="radiobuttonpadding row">
								<div
									class="radio-button-div payInstLineHeight text-left col-md-6 col-xs-5 margin-left-10 no-padding">
									<span class="pull-left clearfix"><input name="saleType"
										id="business1" class="getFMV lookupTaxes checkboxSelected"
										type="radio" value=""> <label id="individualBusiness1"
										class="selectedSpan font-weight-300"></label></span> <span
										class="pull-left clearfix"><input name="saleType"
										id="auction1" class="getFMV lookupTaxes checkboxSelected"
										type="radio" value=""> <label id="dealerAuction1"
										class="selectedSpan font-weight-300"></label></span> <span
										class="pull-left clearfix"><input name="saleType"
										id="damageUnit1" class="getFMV lookupTaxes checkboxSelected"
										type="radio" value=""> <label id="wreckedDamaged1"
										class="selectedSpan font-weight-300"></label></span>
									<!-- AC_FSP CHANGES START -->
									<span class="text-left clearfix"><input name="saleType"
										id="client1" class="getFMV lookupTaxes checkboxSelected"
										type="radio" value="7"> <label id="clientLabel1"
										class="selectedSpan font-weight-300"></label></span> <span
										class="text-left clearfix"><input name="saleType"
										id="bank1" class="getFMV lookupTaxes checkboxSelected"
										type="radio" value="8"> <label id="bankLabel1"
										class="selectedSpan font-weight-300"></label></span>
									<!-- AC_FSP CHANGES END -->
								</div>
								<!--End of radio-button-div  -->
								<div
									class="radio-button-div payInstLineHeight col-md-5 col-xs-6 text-right no-padding margin-bottom-10">
									<span class="pull-left clearfix"><input name="saleType"
										id="stolen1" class="hideTaxInfo checkboxSelected" type="radio"
										value=""> <label id="stolenLabel1"
										class=" no-padding selectedSpan font-weight-300"></label></span> <span
										class="pull-left clearfix"><input name="saleType"
										id="totalLoss1" class="lookupTaxes checkboxSelected"
										type="radio" value=""> <label id="totalLossLabel1"
										class=" no-padding selectedSpan font-weight-300"></label></span> <span
										class="pull-left"><input name="saleType"
										id="motorCompany1" class="lookupTaxes checkboxSelected"
										type="radio" value=""> <label id="motorCompanyLabel1"
										class=" no-padding selectedSpan font-weight-300"></label></span>
									<!-- AC_FSP CHANGES START -->
									<span class="pull-left"><input name="saleType"
										id="competitor1" class="lookupTaxes checkboxSelected"
										type="radio" value="9"> <label id="competitorLabel1"
										class=" no-padding selectedSpan font-weight-300"></label></span>
									<!-- AC_FSP CHANGES END -->
								</div>
							</div>
							<!-- End of radiobuttonpadding -->
						</div>
					</fieldset>
				</div>
			</div>
			<!-- End of client-sale-search-second-section -->
			<div
				class="client-sale-search-third-section col-md-12  col-xs-12 pull-left clearfix no-padding">
				<div
					class="client-sale-search-sub-section col-md-6 col-xs-6 pull-left">
					<fieldset
						class="Section transferDoc col-xs-12 box-border no-padding margin-bottom-24 text-left">
						<div class="sectionHeading text-left">
							<span>5. <span><spring:message
										code="label_titleTransferDoc" text="Title Transfer Documents" /></span>:<sup
								id="shippingRequired" class="clsForRedNote">*</sup></span>
						</div>
						<div class="boxPaddingDiv">
							<div class="client-sale-transfer-doc">

								<div class="payInstLineHeight margin-top-10"
									style="overflow: hidden;">
									<div
										class="radio-button-div col-md-4 col-xs-12 pull-left no-padding"
										style="width: 43%;">
										<div>
											<span><input name="titleTransfer" id="federaltwo1"
												class="shippingType checkboxSelected" type="radio" value=""
												disabled> <label id="federalExpressLabel1"
												class="clientInfoLabelName1 no-padding selectedSpan"></label></span>
										</div>
										<div>
											<span><input name="titleTransfer" id="uspsTwo1"
												class="shippingType checkboxSelected" type="radio" value=""
												disabled> <label id="USPSLabel1"
												class="clientInfoLabelName1 no-padding selectedSpan"></label></span>
										</div>
									</div>
									<div
										class="radio-button-div col-md-8 col-xs-12 pull-right no-padding"
										style="width: 57%;">
										<div>
											<span><input name="titleTransfer" id="upsTwo1"
												class="shippingType checkboxSelected" type="radio" value=""
												disabled> <label id="upsLabel1"
												class="clientInfoLabelName1 no-padding selectedSpan"></label></span>
										</div>
										<div>
											<span><input name="titleTransfer" id="overnighttwo1"
												class="shippingType checkboxSelected" type="radio" value=""
												checked="" disabled><label id="elementOverLabel1"
												class="clientInfoLabelName1  selectedSpan"></label></span>
										</div>
									</div>
								</div>
								<!--End of payInstLineHeight  -->
								<div id="radioButtonTrueFalse" class="margin-left-5"
									style="overflow: hidden;">


									<spring:message code="" text="" />
									Is this a Special Power of Attorney sale? <sup
										class="clsForRedNote">*</sup> <label
										class="clientInfoLabelName1 margin-left-5">Yes</label> <input
										type="radio" id="specialPSaleYes" value="1"
										class="powerofattorney margin-left-10 checkboxSelected"
										style="vertical- align: sub" disabled="" tabindex="-1">
									<label class=" clientInfoLabelName1 margin-left-5">No</label> <input
										type="radio" id="specialPSaleNo" value="0"
										class="powerofattorney checkboxSelected"
										style="vertical-align: sub" disabled="" tabindex="-1">
								</div>
								<!-- End of radioButtonTrueFalse -->

							</div>
							<div id="shippingServiceDetails"
								class="margin-bottom-20 hideOnStolen payInstLineHeight col-xs-12">

								<div class="shippingInstructions " id="fedex"
									style="display: none;">
									<div class="sep margin-top-10 margin-bottom-10"></div>
									<spring:message code="label_pleaseProAccNumBelow"
										text="Please provide an account number below." />
									<div class="margin-top-10 col-md-12 no-padding">
										<label for="fedexAcctNumber"
											class="clasForLabel col-md-5 no-padding"><spring:message
												code="label_fedexAct" text="FEDEX Acct" /> #:</label>
										<div class="col-md-7">
											<input id="fedexAcctNo" name="CRF437" value=""
												class="boxPadding pull-right formControlInput">
										</div>
									</div>
								</div>
								<!-- End of  shippingInstructions-->
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
									<div class="notes">
										<spring:message code="label_povAccNumBillingZipCode"
											text="Please provide an account number and include billing account zip code below" />
										.
									</div>
									<div class="margin-top-10 col-md-12 no-padding">
										<label for="upsAcctNumber"
											class="clasForLabel no-padding col-md-5"><spring:message
												code="label_upsAcct" text="UPS Acct" /> #:</label><input
											id="upsAcctNo" name="CRF438" value=""><br>
										<div class="margin-top-10 margin-top-24 col-md-12">
											<label for="upsAcctZipCode"
												class="clasForLabel no-padding col-md-5"><spring:message
													code="label_billingAcctZipCode"
													text="Billing Acct Zip Code" />:</label>
											<div class="col-md-7">
												<input id="upsAcctZipCode" name="CRF439" value=""
													style="width: 100px" maxlength="5"
													class="boxPadding formControlInput pull-right">
											</div>
										</div>
										<br>
									</div>
								</div>
								<!--End of shippingInstructions  -->
								<div
									class="shippingInstructions col-xs-12 notes no-padding no-margin"
									id="phh">
									<div class="sep margin-top-10 margin-bottom-10"></div>
									<spring:message code="label_feeElementOverPack"
										text="A $15 fee has been added for Element handling of the overnight packaging." />
								</div>

							</div>
							<!--End of shippingServiceDetails  

-->
						</div>
					</fieldset>
					<fieldset
						class="Section lienInfo payInstLineHeight col-xs-12 no-padding margin-bottom-24 text-left">
						<div class="box-border">
							<div class="sectionHeading">
								7. <span><spring:message code="label_lienInformation"
										text="Lien Information" /></span>: (
								<spring:message code="label_lienWillBePlaced"
									text="if lien will be placed" />
								)
							</div>
							<div class="radiobuttonpadding">
								<div class="field col-xs-12 margin-bottom-24">
									<spring:message code="label_lienPlacedNewTitle"
										text="Does lien need to be placed on the NEW title" />
									? <label class="clientInfoLabelName1 margin-left-10"><spring:message
											code="label_yes" text="Yes" /></label><input type="radio"
										class="noLienHolder margin-left-10 checkboxSelected" id="yes"
										value="Yes" name="lien" checked="" style="vertical-align: sub"><label
										class="clientInfoLabelName1 margin-left-5"><spring:message
											code="label_no" text="No" /></label> <input type="radio" name="lien"
										id="no" class="noLienHolder checkboxSelected" value="No"
										style="vertical- align: sub">
								</div>
								<div class="field col-xs-12 margin-bottom-24">
									<label for="mailToLienholder"
										class="col-xs-6 clsForLabel no-padding selectedSpan"><spring:message
											code="label_mailTitleLienHolder"
											text="Mail title to the Lien holder?" /></label>
									<div class="col-md-6">
										<input type="checkbox" id="mailToLienholder" name="CRF453"
											tabindex="0" class="checkboxSelected"> <em
											class="verticalalign selectedSpan"
											style="vertical-align: super"><spring:message
												code="label_PoBoxNtAllowed" text="PO Box not allowed" /></em>
									</div>
								</div>
								<div class="field col-xs-12 margin-bottom-24">
									<label
										class=" purchaser clsForLabel paddingTop5 col-md-6 col-xs-6"><spring:message
											code="label_lienHolder" text="Lien Holder" />:</label>
									<div class="col-md-6 col-xs-6">
										<input name="CRF421" id="lienHolder" value=""
											class="address disabled boxPadding formControlInput pull-right"
											tabindex="0">
									</div>
								</div>
								<div class="field col-xs-12 margin-bottom-24">
									<label
										class=" purchaser clsForLabel paddingTop5 col-md-6 col-xs-6"><spring:message
											code="label_attn" text="Attn" />:</label>
									<div class="col-md-6 col-xs-6">
										<input name="CRF384" value="" id="attn"
											class="address disabled boxPadding formControlInput pull-right"
											tabindex="0">
									</div>
								</div>
								<div class="field col-xs-12 margin-bottom-24">
									<label
										class=" purchaser clsForLabel paddingTop5 col-md-6 col-xs-6"><spring:message
											code="label_address" text="Address" />:</label>
									<div class="col-md-6 col-xs-6">
										<input name="CRF385" value="" id="address"
											class="address disabled boxPadding formControlInput pull-right"
											tabindex="0">
									</div>
								</div>
								<div class="field col-xs-12 margin-bottom-24">
									<span class="col-md-4 col-xs-4 no-padding"><label
										class="col-md-3 col-xs-3 clsForLabel"><spring:message
												code="label_city" text="City" />:</label>
										<div class="col-md-9 col-xs-9 customPaddingClientSale">
											<input name="CRF386" class="disabled" id="city" value=""
												style="width: 80px" tabindex="0">
										</div></span> <span class="col-md-4 col-xs-4 no-padding"> <label
										class=" col-md-3 col-xs-3 clsForLabel"><spring:message
												code="label_state" text="State" />:</label>
										<div class="col-md-9 col-xs-9 customPaddingClientSale">
											<select name="CRF387" id='reqSelect387' tabindex="0"
												class="reqStateInnerSelect formControlSmlDrpDwn backgroundNone customWidthSelectClient"
												readonly="true" tabindex="-1" disabled="">
												<option value="">Select State</option>
												<option value="AK">AK</option>
												<option value="AL">AL</option>
												<option value="AR">AR</option>
												<option value="AZ">AZ</option>
												<option value="CA">CA</option>
												<option value="CO">CO</option>
												<option value="CT">CT</option>
												<option value="DC">DC</option>
												<option value="DE">DE</option>



												<option value="FL">FL</option>



												<option value="GA">GA</option>



												<option value="GU">GU</option>



												<option value="HI">HI</option>



												<option value="IA">IA</option>



												<option value="ID">ID</option>



												<option value="IL">IL</option>



												<option value="IN">IN</option>



												<option value="KS">KS</option>



												<option value="KY">KY</option>



												<option value="LA">LA</option>



												<option value="MA">MA</option>



												<option value="MD">MD</option>



												<option value="ME">ME</option>



												<option value="MI">MI</option>



												<option value="MN">MN</option>



												<option value="MO">MO</option>



												<option value="MS">MS</option>



												<option value="MT">MT</option>



												<option value="NC">NC</option>



												<option value="ND">ND</option>



												<option value="NE">NE</option>



												<option value="NH">NH</option>



												<option value="NJ">NJ</option>



												<option value="NM">NM</option>



												<option value="NV">NV</option>



												<option value="NY">NY</option>



												<option value="OH">OH</option>



												<option value="OK">OK</option>



												<option value="OR">OR</option>



												<option value="PA">PA</option>



												<option value="PR">PR</option>



												<option value="RI">RI</option>



												<option value="SC">SC</option>



												<option value="SD">SD</option>



												<option value="TN">TN</option>



												<option value="TX">TX</option>



												<option value="UT">UT</option>



												<option value="VA">VA</option>



												<option value="VI">VI</option>



												<option value="VT">VT</option>



												<option value="WA">WA</option>



												<option value="WI">WI</option>



												<option value="WV">WV</option>



												<option value="WY">WY</option>
											</select>
										</div></span> <span class="col-md-4 col-xs-4 no-padding"> <span><label
											class="clsForLabel col-md-3 col-xs-3"><spring:message
													code="label_zip" text="Zip" />:</label>
											<div class="col-md-9 col-xs-9 customPaddingClientSale">
												<input name="CRF388" value="" style="width: 70px"
													maxlength="10" tabindex="0" class="disabled">
											</div></span></span>
								</div>
							</div>
						</div>
						<!-- End of box-border -->
					</fieldset>

					<fieldset
						class="Section mail-title payInstLineHeight clearfix col-xs-12 no-padding text-left"
						id="section8">
						<div class="box-border">
							<div class="sectionHeading">
								8. <span><spring:message code="label_mailTitleTo"
										text=" Mail title to" /></span>: (
								<spring:message code="label_onlyDiffPurchaser"
									text="only if different than purchaser" />
								)
							</div>
							<div class="radiobuttonpadding">
								<div class="field margin-bottom-10 col-xs-12">
									<div class="field col-xs-12 no-padding">
										<label class="purchaser col-md-6 col-xs-6 clsForLabel"><spring:message
												code="label_business" text="Business" />:</label>
										<div class="col-md-6 col-xs-6">

											<input name="CRF424" value="" tabindex="0"
												class="address boxPadding boxPadding margin-bottom-24 formControlInput pull-right ">
										</div>
									</div>
									<!--End of field col-xs-12  -->
									<div class="field col-xs-12 no-padding">
										<label class=" purchaser clsForLabel col-md-6 col-xs-6"><spring:message
												code="label_attn" text="Attn" />:</label>
										<div class="col-md-6 col-xs-6">

											<input name="CRF390" value=""
												class="address boxPadding margin-bottom-24 formControlInput pull-right"
												tabindex="0">
										</div>
									</div>
									<!--End of field  -->
									<div class="field margin-bottom-10 col-xs-12 no-padding">
										<label class=" purchaser clsForLabel col-md-6 col-xs-6"><spring:message
												code="label_address" text="Address" />:</label>
										<div class="col-md-6 col-xs-6">
											<input name="CRF391" value=""
												class="address boxPadding formControlInput margin-bottom-24 pull-right"
												tabindex="0">
											<div class="alignWithInput notes col-md-12 margin-bottom-24"
												style="margin- left: 47px">
												<spring:message code="label_PoBoxNtAllowed"
													text="PO Box not allowed" />
											</div>
										</div>
										<div class="field col-xs-12">


											<span class="col-md-4 col-xs-4 no-padding"> <label
												class="col-md-3 col-xs-3 clsForLabel"><spring:message
														code="label_city" text="City" />:</label>
												<div class="col-md-9 col-xs-9 customPaddingClientSale">
													<input name="CRF392" value="" style="width: 80px"
														tabindex="0" class="">
												</div>
											</span> <span class="col-md-4 col-xs-4 no-padding"> <label
												class="col-md-3 col-xs-3 clsForLabel"><spring:message
														code="label_state" text="State" />:</label>
												<div class="col-md-9 col-xs-9 customPaddingClientSale">
													<select name="CRF393" id='reqSelect393'
														class="reqStateInnerSelect formControlSmlDrpDwn backgroundNone customWidthSelectClient"
														tabindex="-1" disabled="" readonly>



														<option value="">Select State</option>






														<option value="AK">AK</option>



														<option value="AL">AL</option>



														<option value="AR">AR</option>



														<option value="AZ">AZ</option>



														<option value="CA">CA</option>



														<option value="CO">CO</option>



														<option value="CT">CT</option>



														<option value="DC">DC</option>



														<option value="DE">DE</option>



														<option value="FL">FL</option>



														<option value="GA">GA</option>



														<option value="GU">GU</option>



														<option value="HI">HI</option>



														<option value="IA">IA</option>



														<option value="ID">ID</option>



														<option value="IL">IL</option>



														<option value="IN">IN</option>



														<option value="KS">KS</option>



														<option value="KY">KY</option>



														<option value="LA">LA</option>



														<option value="MA">MA</option>



														<option value="MD">MD</option>



														<option value="ME">ME</option>



														<option value="MI">MI</option>



														<option value="MN">MN</option>



														<option value="MO">MO</option>



														<option value="MS">MS</option>



														<option value="MT">MT</option>



														<option value="NC">NC</option>



														<option value="ND">ND</option>



														<option value="NE">NE</option>



														<option value="NH">NH</option>



														<option value="NJ">NJ</option>



														<option value="NM">NM</option>



														<option value="NV">NV</option>



														<option value="NY">NY</option>



														<option value="OH">OH</option>



														<option value="OK">OK</option>



														<option value="OR">OR</option>



														<option value="PA">PA</option>



														<option value="PR">PR</option>



														<option value="RI">RI</option>



														<option value="SC">SC</option>



														<option value="SD">SD</option>



														<option value="TN">TN</option>



														<option value="TX">TX</option>



														<option value="UT">UT</option>



														<option value="VA">VA</option>



														<option value="VI">VI</option>



														<option value="VT">VT</option>



														<option value="WA">WA</option>



														<option value="WI">WI</option>



														<option value="WV">WV</option>



														<option value="WY">WY</option>



													</select>
												</div></span> <span class="col-md-4 col-xs-4 no-padding"> <label
												class="col-md-3 col-xs-3 clsForLabel"><spring:message
														code="label_zip" text="Zip" />:</label>
												<div class="col-md-9 col-xs-9 customPaddingClientSale">
													<input name="CRF394" value="" style="width: 70px"
														maxlength="10" tabindex="0" class="">
												</div></span>
										</div>
									</div>
								</div>
							</div>
							<!-- End of radiobuttonpadding -->
						</div>
					</fieldset>
					<!--End of Section mail-title clearfix col-xs-12 no-padding  -->
					<div class="Section col-xs-12 no-padding box-border margin-top-24"
						style="height: auto; min-height: 150px;">
						<div class="sectionHeading ">
							<span>10. <span><spring:message
										code="label_specialInfo" text="Special Information" /></span>:
							</span>
						</div>
						<div class="special-information radiobuttonpadding col-xs-12"
							id="specialInstructions">
							<ul>
								<li class="pull-left"></li>


							</ul>
							<div id="respondIn48" style="display: none" class="notes">
								<spring:message code="label_weWillRespond"
									text="We will respond within 48 hours." />
							</div>
						</div>
						<!-- End of special-information -->
					</div>
					<!-- End of Section col-xs-12 no-padding box-border margin-top-10 -->
					<div class="Section col-xs-12 no-padding box-border margin-top-24">
						<div class="sectionHeading">
							<span>11. <span><spring:message
										code="label_uploadDoc" text="Upload Documents" /></span>:
							</span>
						</div>

					</div>
				</div>
				<div
					class="client-sale-search-sub-section col-md-6 col-xs-6 pull-right text-left">
					<fieldset class="Section box-border" id="">
						<div class="sectionHeading">
							6. <span><spring:message code="label_purchaser"
									text="Purchaser" /></span>:<sup class="clsForRedNote">*</sup> (
							<spring:message code="label_nameAppearTitle"
								text="name as it will appear on title" />
							)
						</div>
						<div class="boxPaddingDivFifthBlockAll margin-top-15">
							<div class="field col-xs-12 no-padding">
								<label class="purchaser clsForLabel col-md-6 col-xs-6"><spring:message
										code="label_purchaser" text="Purchaser" />:</label>
								<div class="col-md-6 col-xs-6">

									<input id="purchaserName" name="CRF418" value=""
										class="address boxPadding margin-bottom-24 formControlInput pull-right">
								</div>
							</div>
							<div class="field col-xs-12 no-padding">
								<label class="purchaser clsForLabel col-md-6 col-xs-6"><spring:message
										code="label_co" text="C/O" />:</label>
								<div class="col-md-6 col-xs-6">
									<input name="CRF417" id="purchaserCO" value=""
										class="address boxPadding margin-bottom-24 formControlInput pull-right">
								</div>
							</div>
							<div class="field col-xs-12 no-padding">
								<label class="purchaser clsForLabel col-md-6 col-xs-6"><spring:message
										code="label_address" text="Address" />:</label>
								<div class="col-md-6 col-xs-6">
									<input name="CRF377" value=""
										class="address noPOBox boxPadding margin-bottom-24 formControlInput pull-right"
										id="purchaserAddress">
									<div
										class="alignWithInput alignWithInput notes  margin-bottom-24"
										style="margin- left: 50px">
										<spring:message code="label_PoBoxNtAllowed"
											text="PO Box not allowed" />
									</div>
								</div>
							</div>
							<div class="field col-xs-12">
								<span class="col-md-4 col-xs-4 no-padding"><label
									class="clsForLabel col-md-3 col-xs-3"><spring:message
											code="label_city" text="City" />:</label>
									<div class="col-md-9 col-xs-9 customPaddingClientSale">
										<input name="CRF378" value="" style="width: 90px"
											id="purchaserCity" class="lookupTaxes disabled" readonly=""
											tabindex="-1">
									</div> </span> <span class="col-md-4 col-xs-4"><label
									class=" clsForLabel col-md-5 col-xs-5"><spring:message
											code="label_state" text="State" />:</label>
									<div class="col-md-7 col-xs-7 customPaddingClientSale">
										<input name="CRF379" value="" style="width: 50px"
											id="purchaserState" class="lookupTaxes disabled" readonly=""
											tabindex="-1">
									</div> </span> <span class="col-md-4 col-xs-4 margin-bottom-24"><label
									class="clsForLabel col-md-5 col-xs-5"><spring:message
											code="label_zip" text="Zip" />:</label>
									<div class="col-md-7 col-xs-7 customPaddingClientSale">
										<input name="CRF380" value="" style="width: 69px"
											maxlength="10" id="purchaserZip" class="lookupTaxes">
									</div> </span>
								<button id="prefillCityStateCounty" value="Find" class=""
									disabled="" tabindex="-1" style="display: none;">
									<spring:message code="" text="" />
									Find
								</button>
							</div>
							<div class="field col-xs-12">
								<label class=" purchaser clsForLabel  col-md-6 col-xs-6"><spring:message
										code="" text="" />County:</label>
								<div class="col-md-6 col-xs-6">
									<input name="CRF381" value=""
										class="address lookupTaxes disabled boxPadding margin-bottom-24 formControlInput pull-right"
										id="purchaserCounty" readonly="" tabindex="-1">
								</div>
							</div>
							<div class="field col-xs-12">
								<label class=" clsForLabel  col-md-6 col-xs-6"><spring:message
										code="" text="" />Purchaser Email Address:</label>
								<div class="col-md-6 col-xs-6">
									<input name="CRF382" id="purchaserEmailId" value=""
										class="email boxPadding margin-bottom-24 formControlInput pull-right">
								</div>
							</div>
							<div class="field col-xs-12">
								<label class=" clsForLabel  col-md-6 col-xs-6"><spring:message
										code="" text="" />Purchaser Telephone:</label>
								<div class="col-md-6 col-xs-6">
									<input name="CRF383" value="" id="purchaserTelephone"
										class="boxPadding margin-bottom-24 formControlInput pull-right">
								</div>
							</div>
						</div>
						<!--End of boxPaddingDivFifthBlockAll  -->
					</fieldset>
				</div>
				<div
					class="client-sale-search-sub-section col-md-6 col-xs-6 pull-right margin-top-24">
					<fieldset class="Section box-border" id="">
						<div class="cost-table-div">
							<div class="cost-table-row">
								<div class="cost-Description">
									<div class="sectionHeading text-align-left">
										9. <span><spring:message code="" text="" />Fair Market
											Value</span>:
									</div>
								</div>

							</div>

							<div class="cost-table-row" id="salePrice">
								<div class="radiobuttonpadding class-xs-12 text-left">
									<div class="class-xs-12 text-left">
										<div class="ask-for-FMV col-xs-9">
											<input name="askForFMV" type="checkbox" id="askForFMV"
												class="askForFMV checkForSubmit checkboxSelected pull-left"><span
												class="selectedSpan"><spring:message code="" text="" />Ask
												Element to research the Fair Market Value?</span>
										</div>
										<div class="cost-Amount col-xs-3 margin-bottom-24"
											id="fairMarketVal">
											<span id="fmvPrefix" style="display: none;">$</span> <input
												id="fmValue" name="CRF410" value="   N/A"
												class="disabled pull-right" style="width: 70px" readonly="">
										</div>
									</div>
									<div class="cost-table-row col-xs-12 margin-bottom-15" id="">
										<div
											class="cost-Description col-md-6 col-xs-6 clsForLabel no-padding"
											style='height: auto;'>
											<div style="height: auto;" class="clsForLabel no-padding">
												9a. <span class=""><spring:message code="" text="" />Sale
													Price<sup class="clsForRedNote hideOnStolen showIfNotZero">*</sup>:</span>


												<label class="stolen-vehicle-price"
													id="salePriceInstructions"></label>
											</div>
										</div>
										<div
											class="cost-Amount total-amt sale-price-input  col-md-6 col-xs-6">
											$<input name="" id="sale" value=""
												class="clientSaleDollar lookupTaxes boxPadding formControlInput pull-right"
												maxlength="10">
										</div>
									</div>

									<div class="cost-table-row col-xs-12 margin-bottom-15"
										id="salesTaxRow">
										<div
											class="cost-Description col-md-6 col-xs-6 clsForLabel no-padding"
											style='height: auto;'>
											<div style="height: auto;" class="clsForLabel no-padding">
												9b. <span class="" style='text-decoration: none;'><spring:message
														code="" text="" />Sales Tax<sup
													class="hideOnStolen showIfNotZero clsForRedNote">*</sup>:</span>
												<div class="saleTaxInstructions"
													style='margin-top: 3px; font-size: 10pt; font-weight: normal; height: auto;'></div>
											</div>
										</div>
										<div class="cost-Amount total-amt col-md-6 col-xs-6"
											style="height: auto;">
											$<input id="salesTax" name="CRF397" value="" title=""
												class="disabled salesTax boxPadding formControlInput pull-right"
												readonly="" tabindex="-1">
										</div>
									</div>
									<div class="cost-table-row col-xs-12 margin-bottom-15" id="">
										<div
											class="cost-Description col-md-6 col-xs-6 clsForLabel no-padding">
											<div class="clsForLabel no-padding">
												9c. <span class=""><spring:message code="" text="" />Element
													Administrative Fee:</span>
											</div>
										</div>
										<div class="cost-Amount total-amt  col-md-6 col-xs-6">
											$<input id="adminFee" name="CRF397" value="   0.00" title=""
												class="disabled salesTax boxPadding formControlInput pull-right"
												readonly="" tabindex="-1">
										</div>
									</div>
									<div
										class="cost-table-row col-md-12 col-xs-12 margin-bottom-15"
										id="">
										<div
											class="cost-Description col-md-6 col-xs-6 clsForLabel no-padding">
											<div class="clsForLabel no-padding">
												9d. <span class=""><spring:message code="" text="" />Overnight
													Handling Fee:</span>
											</div>
										</div>
										<div class="cost-Amount total-amt col-md-6 col-xs-6">
											$<input name="CRF400" value="15.00"
												class="disabled  margin-to-24 salesTax boxPadding formControlInput pull-right pull-right"
												readonly="" tabindex="-1">
										</div>
									</div>
									<div
										class="cost-table-row col-md-12 col-xs-12 margin-bottom-15"
										id="">
										<div
											class="cost-Description col-md-6 col-xs-6 clsForLabel no-padding">
											<div class="clsForLabel no-padding">
												9e. <span class=""><spring:message code="" text="" />Total
													Amount:</span>
											</div>
										</div>
										<div class="cost-Amount total-amt col-md-6 col-xs-6">
											$<input name="total" value="  15.00" id="totalAmount"
												class="disabled pull-right calcWhatsOwed boxPadding formControlInput pull-right"
												readonly="" tabindex="-1">
										</div>
									</div>
									<div
										class="cost-table-row col-md-12 col-xs-12 margin-bottom-15"
										id="checkAmount">
										<div
											class="cost-Description col-md-6 col-xs-6 clsForLabel no-padding">
											<div class="clsForLabel no-padding">
												9f. <span class=""><spring:message code="" text="" />Payment
													Amount<sup class="clsForRedNote hideOnStolen showIfNotZero">*</sup>:</span>
											</div>

											<div class="clearfix pull-left"
												style='text-decoration: none;'>
												<div class="paymentAmountInstructions"></div>
											</div>

										</div>
										<div class="cost-Amount total-amt col-md-6 col-xs-6">
											$<input name="payment" value="   " maxlength="10"
												class="clientSaleDollar calcWhatsOwed boxPadding formControlInput pull-right"
												id="payAmount">
										</div>
									</div>
									<div
										class="cost-table-row col-md-12 col-xs-12 margin-bottom-15"
										id="remainingBalance">
										<div
											class="cost-Description col-md-6 col-xs-6 clsForLabel no-padding">
											<div class="clsForLabel no-padding">
												9g. <span class=""><spring:message code="" text="" />Remaining
													Balance:</span> <label id="willBeBilled"><spring:message
														code="" text="" />This amount will be billed to your
													company.</label>
											</div>

										</div>
										<div class="cost-Amount total-amt  col-md-6 col-xs-6 ">
											$<input name="" id="remainBal" value="  15.00"
												class="disabled boxPadding pull-right formControlInput"
												readonly="" tabindex="-1">
										</div>
									</div>
								</div>
							</div>
						</div>
					</fieldset>
					<!-- End of cost 

-->

					<div
						class="col-xs-12 no-padding  margin-top-24 text-left approver-info payInstLineHeight">
						<fieldset class="Section  box-border" id="section11">

							<div class="sectionHeading">
								12. <span><spring:message code="" text="" />Approver
									Information</span><sup class="clsForRedNote">*</sup>:
							</div>
							<div class="radiobuttonpadding">
								<div class="col-xs-12 notes col-xs-12 margin-bottom-15">
									<spring:message code="" text="" />
									By typing a name below, you agree and affirm (i) that you are
									typing your own name, and (ii) that you and your company intend
									to be bound by the representations and certification set forth
									above.<strong>Typing your name below will result in
										you and your company becoming bound by the representations and
										certification set forth above.</strong>
								</div>
								<div class="margin-bottom-24 col-md-12">
									<div class="col-md-12 no-padding">
										<input type="checkbox" class="check required checkboxSelected"
											name="CRF449"><label
											class="font-weight-300 margin-left-10"
											style="vertical-align: text-bottom;"><spring:message
												code="" text="" />By checking this box, I acknowledge
											reading the above statement.</label>
									</div>
								</div>
								<div class="field col-md-12 col-xs-12">
									<label class="clsForLabel col-md-5 col-xs-5">12a. <spring:message
											code="" text="" />Approver Signature:
									</label>
									<div class="col-md-7 col-xs-7">
										<input name="signature" value="   "
											class="disabled pull-right" readonly="">
									</div>
								</div>
								<div class="field col-md-12 col-xs-12">
									<label class="clsForLabel col-md-5 col-xs-5">12b. <spring:message
											code="" text="" />Name:
									</label>
									<div class="col-md-7 col-xs-7">
										<input name="name" value="   " class="disabled pull-right"
											readonly="">
									</div>
								</div>
								<div class="field col-md-12 col-xs-12">
									<label class="clsForLabel col-md-5 col-xs-5">12c. <spring:message
											code="" text="" />Approval Date:
									</label>
									<div class="col-md-7 col-xs-7">

										<input name="approvalDate" value="   "
											class="disabled pull-right" readonly="">
									</div>
								</div>
								<div class="field col-md-12 col-xs-12">
									<label class="clsForLabel col-md-5 col-xs-5">12d. <spring:message
											code="" text="" />Telephone Number:
									</label>
									<div class="col-md-7 col-xs-7">
										<input name="telePhone" value="   "
											class="disabled pull-right" readonly="">
									</div>
								</div>
								<div class="field col-md-12 col-xs-12">
									<label class="clsForLabel col-md-5 col-xs-5">12e. <spring:message
											code="" text="" />Email:
									</label>
									<div class="col-md-7 col-xs-7">
										<input name="email" value="   " class="disabled pull-right"
											readonly="">
									</div>
								</div>
							</div>
						</fieldset>
					</div>

				</div>
			</div>
			<div
				class="div-Additional-Tasks1 div-Additional-Tasks col-md-11 pull-left  text-left">
				<span class="col-xs-12 no-padding margin-bottom-24 margin-top-24">
					<label class="clientInfoLabelName1 notes"><label
						class="clsForLabel no-padding"><spring:message code=""
								text="" />NOTICE TO CLIENT:</label> <spring:message code="" text="" />
						Upon submission of this sale request, please save a copy of this
						request from Request Center and email to the purchaser for their
						reference.</label>
				</span> <span class="col-xs-12 no-padding margin-bottom-24"> <label
					class="clientInfoLabelName1 notes"><label
						class="clsForLabel no-padding"><spring:message code=""
								text="" />NOTICE TO PURCHASER:</label> <spring:message code="" text="" />The
						vehicle you are purchasing may be equipped with a telematics (data
						tracking) device. Element has not independently verified (and will

						not independently verify) the presence, absence or inactivity of
						any device in the vehicle. For more information, you should
						contact the manufacturer or distributor identified on the device
						(if any). Or, you may choose to have the device removed by an
						automotive service shop subsequent to purchase.</label>
				</span>
			</div>

			<input type="hidden" id="requestDetailClientSpecialMapper"
				value='${viewRequestDetailsMap.SpecialInformationText}' />
		</div>


		<!-- End of contClientSaleReqWrapper1 -->
	</div>
</div>


<div class="commentsRequest"></div>



<script>
	$(document)
			.ready(
					function() {
						debugger;
						var finalClient = "req-check-inbox-extras-body-another"
								+ '${viewRequestDetailsMap.ServiceRequestId}';
						var ClientServiceRequestId = '${viewRequestDetailsMap.ServiceRequestId}';
						$('.' + finalClient).find('#panelPDF').attr(
								"ServiceRequestId",
								"${viewRequestDetailsMap.ServiceRequestId}");
						$('.' + finalClient).find(
								".client-sale-wrapper1 #clientOdometer").prop(
								"disabled", true);
						$('.' + finalClient)
								.find(
										".client-sale-wrapper1 .client-sale-search-sub-section input")
								.prop("disabled", true);
						$('.' + finalClient).find(
								".client-sale-wrapper1 input[type='radio']")
								.prop("disabled", true);
						$('.' + finalClient).find(
								".client-sale-wrapper1 input[type='checkbox']")
								.prop("disabled", true);

						//append values of sale price and special information
						$('.' + finalClient).find("#salePriceInstructions")
								.html('${viewRequestDetailsMap.SalePriceText}');
						$('.' + finalClient).find("#specialInstructions ul li")
								.html(
										$('#requestDetailClientSpecialMapper')
												.val());
						/*Vehicle Information*/

						$('.' + finalClient).find("input[name='dspCliNo']")
								.val('${viewRequestDetailsMap.ClientNumber}');
						$('.' + finalClient)
								.find("input[name='dspCliNo']")
								.attr('value',
										'${viewRequestDetailsMap.ClientNumber}');
						$('.' + finalClient).find("input[name='dspUnitNo']")
								.val('${viewRequestDetailsMap.UnitId}');
						$('.' + finalClient).find("input[name='dspUnitNo']")
								.attr('value',
										'${viewRequestDetailsMap.UnitId}');
						$('.' + finalClient).find("input[name='dspAssetNo']")
								.val('${viewRequestDetailsMap.ClientAssetId}');
						$('.' + finalClient)
								.find("input[name='dspAssetNo']")
								.attr('value',
										'${viewRequestDetailsMap.ClientAssetId}');
						$('.' + finalClient).find("label[name='dspCliName']")
								.text('${viewRequestDetailsMap.ClientName}');
						//$('.' + finalClient).find("input[name='dspCliName']").attr('value','${viewRequestDetailsMap.ClientName}');
						$('.' + finalClient).find("#clientOdometer").val(
								'${viewRequestDetailsMap.OdometerReading}');
						$('.' + finalClient).find("#clientOdometer").attr(
								'value',
								'${viewRequestDetailsMap.OdometerReading}');
						$('.' + finalClient).find("input[name='dspModelYr']")
								.val('${viewRequestDetailsMap.ModalYear}');
						$('.' + finalClient).find("input[name='dspModelYr']")
								.attr('value',
										'${viewRequestDetailsMap.ModalYear}');
						$('.' + finalClient).find("label[name='dspMake']")
								.text('${viewRequestDetailsMap.Make}');
						$('.' + finalClient).find("label[name='dspMake']")
								.attr('value', '${viewRequestDetailsMap.Make}');
						$('.' + finalClient).find("label[name='dspModel']")
								.text('${viewRequestDetailsMap.Model}');
						$('.' + finalClient)
								.find("label[name='dspModel']")
								.attr('value', '${viewRequestDetailsMap.Model}');
						$('.' + finalClient).find("label[name='dspVin']").text(
								'${viewRequestDetailsMap.Vin}');
						$('.' + finalClient).find("label[name='dspVin']").attr(
								'value', '${viewRequestDetailsMap.Vin}');

						/*method of payment*/

						if ('${viewRequestDetailsMap.MethodOfSale}' == '1' &&

						'${viewRequestDetailsMap.MethodOfSale}' != null) {
							$('.' + finalClient).find("#checkMail1").prop(
									'checked', true);
							$('.' + finalClient).find("#checkMail1").attr(
									'checked', true);
							$('.' + finalClient).find("#wireTransfer1").prop(
									'checked', false);
							$('.' + finalClient).find("#checklessClientSale1")
									.prop('checked', false);
							$('.' + finalClient).find("#checkMailedLabel1")
									.append("Client Sale (Check to be mailed)");
							$('.' + finalClient).find("#wireTransferLabel1")
									.append("Client Sale (Wire Transfer)");
							$('.' + finalClient).find('#checklessClientSale1')
									.show();
							$('.' + finalClient)
									.find('#checklessClientSaleLabel1')
									.append(
											"Checkless Client Sale (client approved and will be billed for sale)");

							if ($('#checkMail1').is(':checked')) {
								$('#client').show();
							}
						} else if ('${viewRequestDetailsMap.MethodOfSale}' == '2') {
							$('.' + finalClient).find("#checkMail1").prop(
									'checked', false);
							$('.' + finalClient).find("#wireTransfer1").prop(
									'checked', true);
							$('.' + finalClient).find("#wireTransfer1").attr(
									'checked', true);
							$('.' + finalClient).find("#checklessClientSale1")
									.prop('checked', false);
							$('.' + finalClient).find("#checkMailedLabel1")
									.append("Client Sale (Check to be mailed)");
							$('.' + finalClient).find("#wireTransferLabel1")
									.append("Client Sale (Wire Transfer)");
							$('.' + finalClient).find('#checklessClientSale1')
									.show();
							$('.' + finalClient)
									.find('#checklessClientSaleLabel1')
									.append(
											"Checkless Client Sale (client approved and will be billed for sale)");
							//$('.'+finalClient).find

							$(
									'#checklessClientSale1,#checklessClientSaleLabel1')
									.css('display', 'none');

							if ($('#wireTransfer1').is(':checked')) {
								$('#wireTransfer').show();
							}
						} else if ('${viewRequestDetailsMap.MethodOfSale}' == '3') {
							$('.' + finalClient).find("#checkMail1").prop(
									'checked', false);
							$('.' + finalClient).find("#wireTransfer1").prop(
									'checked', false);
							$('.' + finalClient).find("#checklessClientSale1")
									.prop('checked', true);
							$('.' + finalClient).find("#checklessClientSale1")
									.attr('checked', true);
							$('.' + finalClient).find("#checkMailedLabel1")
									.append("Client Sale (Check to be mailed)");
							$('.' + finalClient).find("#wireTransferLabel1")
									.append("Client Sale (Wire Transfer)");
							$('.' + finalClient).find("#checklessClientSale1")
									.show();
							$('.' + finalClient)
									.find('#checklessClientSaleLabel1')
									.append(
											"Checkless Client Sale (client approved and will be billed for sale)");

						} else {
							$('.' + finalClient).find("#checkMail1").prop(
									'checked', false);
							$('.' + finalClient).find("#wireTransfer1").prop(
									'checked', false);
							$('.' + finalClient).find("#checklessClientSale1")
									.prop('checked', false);
							$('.' + finalClient).find("#checkMailedLabel1")
									.append("Client Sale (Check to be mailed)");
							$('.' + finalClient).find("#wireTransferLabel1")
									.append("Client Sale (Wire Transfer)");

						}
						/*Vehicle is currently*/
						if ('${viewRequestDetailsMap.LeaseStatus}' == '1'
								&& '${viewRequestDetailsMap.LeaseStatus}' != null) {
							$('.' + finalClient).find("#leased1").prop(
									'checked', true);
							$('.' + finalClient).find("#company1").prop(
									'checked', false);
							$('.' + finalClient).find("#leasedThroughElement1")
									.append("Leased Through Element");
							$('.' + finalClient).find("#CompanyNonLeased1")
									.append("Company Owned/Non-Leased");
						} else if ('${viewRequestDetailsMap.LeaseStatus}' == '2'
								&& '${viewRequestDetailsMap.LeaseStatus}' != null) {
							$('.' + finalClient).find("#leased1").prop(
									'checked', false);
							$('.' + finalClient).find("#company1").prop(
									'checked', true);
							$('.' + finalClient).find("#leasedThroughElement1")
									.append("Leased Through Element");
							$('.' + finalClient).find("#CompanyNonLeased1")
									.append("Company Owned/Non-Leased");
						} else {
							$('.' + finalClient).find("#leased1").prop(
									'checked', false);
							$('.' + finalClient).find("#company1").prop(
									'checked', false);
							$('.' + finalClient).find("#leasedThroughElement1")
									.append("Leased Through Element");
							$('.' + finalClient).find("#CompanyNonLeased1")
									.append("Company Owned/Non-Leased");
						}

						/*Title Transfer Documents*/

						if ('${viewRequestDetailsMap.ShippingService}' == '1'
								&& '${viewRequestDetailsMap.ShippingService}' != null) {
							$('.' + finalClient).find("#federaltwo1").prop(
									'checked', true);
							$('.' + finalClient).find("#upsTwo1").prop(
									'checked', false);
							$('.' + finalClient).find("#uspsTwo1").prop(
									'checked', false);
							$('.' + finalClient).find("#overnighttwo1").prop(
									'checked', false);
							$('.' + finalClient).find("#federalExpressLabel1")
									.append("Federal Express");
							$('.' + finalClient).find("#upsLabel1").append(
									"UPS");
							$('.' + finalClient).find("#USPSLabel1").append(
									"USPS (trackable only)");
							$('.' + finalClient)
									.find("#elementOverLabel1")
									.append(
											"Element overnight carrier (fee applies)");

							$('.' + finalClient).find("#fedex").show();
							$('.' + finalClient).find("#phh").css('display',
									'none');
							$('.' + finalClient).find("#usps").hide();
							$('.' + finalClient).find("#ups").hide();

						} else if ('${viewRequestDetailsMap.ShippingService}' == '2'
								&& '${viewRequestDetailsMap.ShippingService}' != null) {
							$('.' + finalClient).find("#federaltwo1").prop(
									'checked', false);
							$('.' + finalClient).find("#upsTwo1").prop(
									'checked', false);
							$('.' + finalClient).find("#uspsTwo1").prop(
									'checked', true);
							$('.' + finalClient).find("#overnighttwo1").prop(
									'checked', false);
							$('.' + finalClient).find("#federalExpressLabel1")
									.append("Federal Express");
							$('.' + finalClient).find("#upsLabel1").append(
									"UPS");
							$('.' + finalClient).find("#USPSLabel1").append(
									"USPS (trackable only)");
							$('.' + finalClient)
									.find("#elementOverLabel1")
									.append(
											"Element overnight carrier (fee applies)");

							$('.' + finalClient).find("#fedex").hide();
							$('.' + finalClient).find("#usps").show();
							$('.' + finalClient).find("#phh").hide();
							$('.' + finalClient).find("#ups").hide();

						} else if ('${viewRequestDetailsMap.ShippingService}' == '3'
								&& '${viewRequestDetailsMap.ShippingService}' != null) {
							$('.' + finalClient).find("#federaltwo1").prop(
									'checked', false);
							$('.' + finalClient).find("#upsTwo1").prop(
									'checked', true);
							$('.' + finalClient).find("#uspsTwo1").prop(
									'checked', false);
							$('.' + finalClient).find("#overnighttwo1").prop(
									'checked', false);
							$('.' + finalClient).find("#federalExpressLabel1")
									.append("Federal Express");
							$('.' + finalClient).find("#upsLabel1").append(
									"UPS");
							$('.' + finalClient).find("#USPSLabel1").append(
									"USPS (trackable only)");
							$('.' + finalClient)
									.find("#elementOverLabel1")
									.append(
											"Element overnight carrier (fee applies)");

							$('.' + finalClient).find("#fedex").hide();
							$('.' + finalClient).find("#usps").hide();
							$('.' + finalClient).find("#phh").hide();
							$('.' + finalClient).find("#ups").show();

						} else if ('${viewRequestDetailsMap.ShippingService}' == '4'
								&& '${viewRequestDetailsMap.ShippingService}' != null) {
							$('.' + finalClient).find("#federaltwo1").prop(
									'checked', false);
							$('.' + finalClient).find("#upsTwo1").prop(
									'checked', false);
							$('.' + finalClient).find("#uspsTwo1").prop(
									'checked', false);
							$('.' + finalClient).find("#overnighttwo1").prop(
									'checked', true);
							$('.' + finalClient).find("#federalExpressLabel1")
									.append("Federal Express");
							$('.' + finalClient).find("#upsLabel1").append(
									"UPS");
							$('.' + finalClient).find("#USPSLabel1").append(
									"USPS (trackable only)");
							$('.' + finalClient)
									.find("#elementOverLabel1")
									.append(
											"Element overnight carrier (fee applies)");

							$('.' + finalClient).find("#fedex").hide();
							$('.' + finalClient).find("#usps").hide();
							$('.' + finalClient).find("#phh").show();
							$('.' + finalClient).find("#ups").hide();

						} else {
							$('.' + finalClient).find("#federaltwo1").prop(
									'checked', false);
							$('.' + finalClient).find("#upsTwo1").prop(
									'checked', false);
							$('.' + finalClient).find("#uspsTwo1").prop(
									'checked', false);
							$('.' + finalClient).find("#overnighttwo1").prop(
									'checked', false);
							$('.' + finalClient).find("#federalExpressLabel1")
									.append("Federal Express");
							$('.' + finalClient).find("#upsLabel1").append(
									"UPS");
							$('.' + finalClient).find("#USPSLabel1").append(
									"USPS (trackable only)");
							$('.' + finalClient)
									.find("#elementOverLabel1")
									.append(
											"Element overnight carrier (fee applies)");
						}

						/*Sale Type*/
						if ('${viewRequestDetailsMap.SaleType}' == '1'
								&& '${viewRequestDetailsMap.SaleType}' != null) {
							$('.' + finalClient).find("#business1").prop(
									'checked', true);
							$('.' + finalClient).find("#business1").attr(
									'checked', true);
							$('.' + finalClient).find("#auction1").prop(
									'checked', false);
							$('.' + finalClient).find("#damageUnit1").prop(
									'checked', false);
							$('.' + finalClient).find("#stolen1").prop(
									'checked', false);
							$('.' + finalClient).find("#totalLoss1").prop(
									'checked', false);
							$('.' + finalClient).find("#motorCompany1").prop(
									'checked', false);
							//AC_FSP CHANGES START
							$('.' + finalClient).find("#client1").prop(
									'checked', false);
							$('.' + finalClient).find("#bank1").prop('checked',
									false);
							$('.' + finalClient).find("#competitor1").prop(
									'checked', false);
							//AC_FSP CHANGES END
							$('.' + finalClient).find("#individualBusiness1")
									.append("Individual/Business");
							$('.' + finalClient).find("#dealerAuction1")
									.append("Dealer/Auction");
							$('.' + finalClient).find("#wreckedDamaged1")
									.append("Wrecked/Damaged Unit");
							$('.' + finalClient).find("#stolenLabel1").append(
									"Stolen");
							$('.' + finalClient).find("#totalLossLabel1")
									.append("Total Loss");
							$('.' + finalClient).find("#motorCompanyLabel1")
									.append("Motor Company Buy-Back	");
							//AC_FSP CHANGES START
							$('.' + finalClient).find("#clientLabel1").append(
									"Client");
							$('.' + finalClient).find("#bankLabel1").append(
									"Bank");
							$('.' + finalClient).find("#competitorLabel1")
									.append("Competitor");
							//AC_FSP CHANGES END

						} else if ('${viewRequestDetailsMap.SaleType}' == '2'
								&& '${viewRequestDetailsMap.SaleType}' != null) {
							$('.' + finalClient).find("#business1").prop(
									'checked', false);
							$('.' + finalClient).find("#auction1").prop(
									'checked', true);
							$('.' + finalClient).find("#auction1").attr(
									'checked', true);
							$('.' + finalClient).find("#damageUnit1").prop(
									'checked', false);
							$('.' + finalClient).find("#stolen1").prop(
									'checked', false);
							$('.' + finalClient).find("#totalLoss1").prop(
									'checked', false);
							$('.' + finalClient).find("#motorCompany1").prop(
									'checked', false);
							//AC_FSP CHANGES START
							$('.' + finalClient).find("#client1").prop(
									'checked', false);
							$('.' + finalClient).find("#bank1").prop('checked',
									false);
							$('.' + finalClient).find("#competitor1").prop(
									'checked', false);
							//AC_FSP CHANGES END
							$('.' + finalClient).find("#individualBusiness1")
									.append("Individual/Business");
							$('.' + finalClient).find("#dealerAuction1")
									.append("Dealer/Auction");
							$('.' + finalClient).find("#wreckedDamaged1")
									.append("Wrecked/Damaged Unit");
							$('.' + finalClient).find("#stolenLabel1").append(
									"Stolen");
							$('.' + finalClient).find("#totalLossLabel1")
									.append("Total Loss");
							$('.' + finalClient).find("#motorCompanyLabel1")
									.append("Motor Company Buy-Back	");
							//AC_FSP CHANGES START
							$('.' + finalClient).find("#clientLabel1").append(
									"Client");
							$('.' + finalClient).find("#bankLabel1").append(
									"Bank");
							$('.' + finalClient).find("#competitorLabel1")
									.append("Competitor");
							//AC_FSP CHANGES END

						} else if ('${viewRequestDetailsMap.SaleType}' == '3'
								&& '${viewRequestDetailsMap.SaleType}' != null) {
							$('.' + finalClient).find("#business1").prop(
									'checked', false);
							$('.' + finalClient).find("#auction1").prop(
									'checked', false);
							$('.' + finalClient).find("#damageUnit1").prop(
									'checked', false);
							$('.' + finalClient).find("#stolen1").prop(
									'checked', true);
							$('.' + finalClient).find("#stolen1").attr(
									'checked', true);
							$('.' + finalClient).find("#totalLoss1").prop(
									'checked', false);
							$('.' + finalClient).find("#motorCompany1").prop(
									'checked', false);
							//AC_FSP CHANGES START
							$('.' + finalClient).find("#client1").prop(
									'checked', false);
							$('.' + finalClient).find("#bank1").prop('checked',
									false);
							$('.' + finalClient).find("#competitor1").prop(
									'checked', false);
							//AC_FSP CHANGES END
							$('.' + finalClient).find("#individualBusiness1")
									.append("Individual/Business");
							$('.' + finalClient).find("#dealerAuction1")
									.append("Dealer/Auction");
							$('.' + finalClient).find("#wreckedDamaged1")
									.append("Wrecked/Damaged Unit");
							$('.' + finalClient).find("#stolenLabel1").append(
									"Stolen");
							$('.' + finalClient).find("#totalLossLabel1")
									.append("Total Loss");
							$('.' + finalClient).find("#motorCompanyLabel1")
									.append("Motor Company Buy-Back	");
							//AC_FSP CHANGES START
							$('.' + finalClient).find("#clientLabel1").append(
									"Client");
							$('.' + finalClient).find("#bankLabel1").append(
									"Bank");
							$('.' + finalClient).find("#competitorLabel1")
									.append("Competitor");
							//AC_FSP CHANGES END

						} else if ('${viewRequestDetailsMap.SaleType}' == '4'
								&& '${viewRequestDetailsMap.SaleType}' != null) {
							$('.' + finalClient).find("#business1").prop(
									'checked', false);
							$('.' + finalClient).find("#auction1").prop(
									'checked', false);
							$('.' + finalClient).find("#damageUnit1").prop(
									'checked', false);
							$('.' + finalClient).find("#stolen1").prop(
									'checked', false);
							$('.' + finalClient).find("#totalLoss1").prop(
									'checked', true);
							$('.' + finalClient).find("#totalLoss1").attr(
									'checked', true);
							$('.' + finalClient).find("#motorCompany1").prop(
									'checked', false);
							//AC_FSP CHANGES START
							$('.' + finalClient).find("#client1").prop(
									'checked', false);
							$('.' + finalClient).find("#bank1").prop('checked',
									false);
							$('.' + finalClient).find("#competitor1").prop(
									'checked', false);
							//AC_FSP CHANGES END
							$('.' + finalClient).find("#individualBusiness1")
									.append("Individual/Business");
							$('.' + finalClient).find("#dealerAuction1")
									.append("Dealer/Auction");
							$('.' + finalClient).find("#wreckedDamaged1")
									.append("Wrecked/Damaged Unit");
							$('.' + finalClient).find("#stolenLabel1").append(
									"Stolen");
							$('.' + finalClient).find("#totalLossLabel1")
									.append("Total Loss");
							$('.' + finalClient).find("#motorCompanyLabel1")
									.append("Motor Company Buy-Back	");
							//AC_FSP CHANGES START
							$('.' + finalClient).find("#clientLabel1").append(
									"Client");
							$('.' + finalClient).find("#bankLabel1").append(
									"Bank");
							$('.' + finalClient).find("#competitorLabel1")
									.append("Competitor");
							//AC_FSP CHANGES END

						} else if ('${viewRequestDetailsMap.SaleType}' == '5'
								&& '${viewRequestDetailsMap.SaleType}' != null) {
							$('.' + finalClient).find("#business1").prop(
									'checked', false);
							$('.' + finalClient).find("#auction1").prop(
									'checked', false);
							$('.' + finalClient).find("#damageUnit1").prop(
									'checked', false);
							$('.' + finalClient).find("#stolen1").prop(
									'checked', false);
							$('.' + finalClient).find("#totalLoss1").prop(
									'checked', false);
							$('.' + finalClient).find("#motorCompany1").prop(
									'checked', true);
							$('.' + finalClient).find("#motorCompany1").attr(
									'checked', true);
							//AC_FSP CHANGES START
							$('.' + finalClient).find("#client1").prop(
									'checked', false);
							$('.' + finalClient).find("#bank1").prop('checked',
									false);
							$('.' + finalClient).find("#competitor1").prop(
									'checked', false);
							//AC_FSP CHANGES END
							$('.' + finalClient).find("#individualBusiness1")
									.append("Individual/Business");
							$('.' + finalClient).find("#dealerAuction1")
									.append("Dealer/Auction");
							$('.' + finalClient).find("#wreckedDamaged1")
									.append("Wrecked/Damaged Unit");
							$('.' + finalClient).find("#stolenLabel1").append(
									"Stolen");
							$('.' + finalClient).find("#totalLossLabel1")
									.append("Total Loss");
							$('.' + finalClient).find("#motorCompanyLabel1")
									.append("Motor Company Buy-Back	");
							//AC_FSP CHANGES START
							$('.' + finalClient).find("#clientLabel1").append(
									"Client");
							$('.' + finalClient).find("#bankLabel1").append(
									"Bank");
							$('.' + finalClient).find("#competitorLabel1")
									.append("Competitor");
							//AC_FSP CHANGES END

						} else if ('${viewRequestDetailsMap.SaleType}' == '6'
								&& '${viewRequestDetailsMap.SaleType}' != null) {
							$('.' + finalClient).find("#business1").prop(
									'checked', false);
							$('.' + finalClient).find("#auction1").prop(
									'checked', false);
							$('.' + finalClient).find("#damageUnit1").prop(
									'checked', false);
							$('.' + finalClient).find("#stolen1").prop(
									'checked', false);
							$('.' + finalClient).find("#totalLoss1").prop(
									'checked', false);
							$('.' + finalClient).find("#motorCompany1").prop(
									'checked', true);
							$('.' + finalClient).find("#motorCompany1").attr(
									'checked', true);
							//AC_FSP CHANGES START
							$('.' + finalClient).find("#client1").prop(
									'checked', false);
							$('.' + finalClient).find("#bank1").prop('checked',
									false);
							$('.' + finalClient).find("#competitor1").prop(
									'checked', false);
							//AC_FSP CHANGES END
							$('.' + finalClient).find("#individualBusiness1")
									.append("Individual/Business");
							$('.' + finalClient).find("#dealerAuction1")
									.append("Dealer/Auction");
							$('.' + finalClient).find("#wreckedDamaged1")
									.append("Wrecked/Damaged Unit");
							$('.' + finalClient).find("#stolenLabel1").append(
									"Stolen");
							$('.' + finalClient).find("#totalLossLabel1")
									.append("Total Loss");
							$('.' + finalClient).find("#motorCompanyLabel1")
									.append("Motor Company Buy-Back	");
							//AC_FSP CHANGES START
							$('.' + finalClient).find("#clientLabel1").append(
									"Client");
							$('.' + finalClient).find("#bankLabel1").append(
									"Bank");
							$('.' + finalClient).find("#competitorLabel1")
									.append("Competitor");
							//AC_FSP CHANGES END

						}
						//AC_FSP CHANGES START
						else if ('${viewRequestDetailsMap.SaleType}' == '7'
								&& '${viewRequestDetailsMap.SaleType}' != null) {
							$('.' + finalClient).find("#business1").prop(
									'checked', false);
							$('.' + finalClient).find("#auction1").prop(
									'checked', false);
							$('.' + finalClient).find("#damageUnit1").prop(
									'checked', false);
							$('.' + finalClient).find("#stolen1").prop(
									'checked', false);
							$('.' + finalClient).find("#totalLoss1").prop(
									'checked', false);
							$('.' + finalClient).find("#motorCompany1").prop(
									'checked', false);
							$('.' + finalClient).find("#client1").prop(
									'checked', true);
							$('.' + finalClient).find("#bank1").prop('checked',
									false);
							$('.' + finalClient).find("#competitor1").prop(
									'checked', false);
							$('.' + finalClient).find("#individualBusiness1")
									.append("Individual/Business");
							$('.' + finalClient).find("#dealerAuction1")
									.append("Dealer/Auction");
							$('.' + finalClient).find("#wreckedDamaged1")
									.append("Wrecked/Damaged Unit");
							$('.' + finalClient).find("#stolenLabel1").append(
									"Stolen");
							$('.' + finalClient).find("#totalLossLabel1")
									.append("Total Loss");
							$('.' + finalClient).find("#motorCompanyLabel1")
									.append("Motor Company Buy-Back	");
							$('.' + finalClient).find("#clientLabel1").append(
									"Client");
							$('.' + finalClient).find("#bankLabel1").append(
									"Bank");
							$('.' + finalClient).find("#competitorLabel1")
									.append("Competitor");
						} else if ('${viewRequestDetailsMap.SaleType}' == '8'
								&& '${viewRequestDetailsMap.SaleType}' != null) {
							$('.' + finalClient).find("#business1").prop(
									'checked', false);
							$('.' + finalClient).find("#auction1").prop(
									'checked', false);
							$('.' + finalClient).find("#damageUnit1").prop(
									'checked', false);
							$('.' + finalClient).find("#stolen1").prop(
									'checked', false);
							$('.' + finalClient).find("#totalLoss1").prop(
									'checked', false);
							$('.' + finalClient).find("#motorCompany1").prop(
									'checked', false);
							$('.' + finalClient).find("#client1").prop(
									'checked', false);
							$('.' + finalClient).find("#bank1").prop('checked',
									true);
							$('.' + finalClient).find("#competitor1").prop(
									'checked', false);
							$('.' + finalClient).find("#individualBusiness1")
									.append("Individual/Business");
							$('.' + finalClient).find("#dealerAuction1")
									.append("Dealer/Auction");
							$('.' + finalClient).find("#wreckedDamaged1")
									.append("Wrecked/Damaged Unit");
							$('.' + finalClient).find("#stolenLabel1").append(
									"Stolen");
							$('.' + finalClient).find("#totalLossLabel1")
									.append("Total Loss");
							$('.' + finalClient).find("#motorCompanyLabel1")
									.append("Motor Company Buy-Back	");
							$('.' + finalClient).find("#clientLabel1").append(
									"Client");
							$('.' + finalClient).find("#bankLabel1").append(
									"Bank");
							$('.' + finalClient).find("#competitorLabel1")
									.append("Competitor");
						} else if ('${viewRequestDetailsMap.SaleType}' == '9'
								&& '${viewRequestDetailsMap.SaleType}' != null) {
							$('.' + finalClient).find("#business1").prop(
									'checked', false);
							$('.' + finalClient).find("#auction1").prop(
									'checked', false);
							$('.' + finalClient).find("#damageUnit1").prop(
									'checked', false);
							$('.' + finalClient).find("#stolen1").prop(
									'checked', false);
							$('.' + finalClient).find("#totalLoss1").prop(
									'checked', false);
							$('.' + finalClient).find("#motorCompany1").prop(
									'checked', false);
							$('.' + finalClient).find("#client1").prop(
									'checked', false);
							$('.' + finalClient).find("#bank1").prop('checked',
									false);
							$('.' + finalClient).find("#competitor1").prop(
									'checked', true);
							$('.' + finalClient).find("#individualBusiness1")
									.append("Individual/Business");
							$('.' + finalClient).find("#dealerAuction1")
									.append("Dealer/Auction");
							$('.' + finalClient).find("#wreckedDamaged1")
									.append("Wrecked/Damaged Unit");
							$('.' + finalClient).find("#stolenLabel1").append(
									"Stolen");
							$('.' + finalClient).find("#totalLossLabel1")
									.append("Total Loss");
							$('.' + finalClient).find("#motorCompanyLabel1")
									.append("Motor Company Buy-Back	");
							$('.' + finalClient).find("#clientLabel1").append(
									"Client");
							$('.' + finalClient).find("#bankLabel1").append(
									"Bank");
							$('.' + finalClient).find("#competitorLabel1")
									.append("Competitor");
						}
						//AC_FSP CHANGES END
						else {
							$('.' + finalClient).find("#business1").prop(
									'checked', false);
							$('.' + finalClient).find("#auction1").prop(
									'checked', false);
							$('.' + finalClient).find("#damageUnit1").prop(
									'checked', false);
							$('.' + finalClient).find("#stolen1").prop(
									'checked', false);
							$('.' + finalClient).find("#totalLoss1").prop(
									'checked', false);
							$('.' + finalClient).find("#motorCompany1").prop(
									'checked', false);
							//AC_FSP CHANGES START
							$('.' + finalClient).find("#client1").prop(
									'checked', false);
							$('.' + finalClient).find("#bank1").prop('checked',
									false);
							$('.' + finalClient).find("#competitor1").prop(
									'checked', false);
							//AC_FSP CHANGES END
							$('.' + finalClient).find("#individualBusiness1")
									.append("Individual/Business");
							$('.' + finalClient).find("#dealerAuction1")
									.append("Dealer/Auction");
							$('.' + finalClient).find("#wreckedDamaged1")
									.append("Wrecked/Damaged Unit ");
							$('.' + finalClient).find("#stolenLabel1").append(
									"Stolen");
							$('.' + finalClient).find("#totalLossLabel1")
									.append("Total Loss");
							$('.' + finalClient).find("#motorCompanyLabel1")
									.append("Motor Company Buy - Back ");
							//AC_FSP CHANGES START
							$('.' + finalClient).find("#clientLabel1").append(
									"Client");
							$('.' + finalClient).find("#bankLabel1").append(
									"Bank");
							$('.' + finalClient).find("#competitorLabel1")
									.append("Competitor");
							//AC_FSP CHANGES END
						}

						//5. for tile transfer
						/* console.log("FedexAcct--->"+'${viewRequestDetailsMap.FedexAcct}');
						console.log("UpsAccount--->"+'${viewRequestDetailsMap.UpsAccount}');
						console.log("BillingAcct--->"+'${viewRequestDetailsMap.BillingAcct}'); */
						if ($("#federaltwo1").prop('checked') == true) {
							$('.' + finalClient).find("#fedex").css('display',
									'block');
							$('.' + finalClient).find("#fedexAcctNo").val(
									'${viewRequestDetailsMap.FedexAcct}');
							$('.' + finalClient).find("#fedexAcctNo").attr(
									'value',
									'${viewRequestDetailsMap.FedexAcct}');
						} else if ($("#upsTwo1").prop('checked') == true) {
							$('.' + finalClient).find("#ups").css('display',
									'block');
							$('.' + finalClient).find("#upsAcctNo").val(
									'${viewRequestDetailsMap.UpsAccount}');
							$('.' + finalClient).find("#upsAcctNo").attr(
									'value',
									'${viewRequestDetailsMap.UpsAccount}');
							$('.' + finalClient).find("#upsAcctZipCode").val(
									'${viewRequestDetailsMap.BillingAcct}');
							$('.' + finalClient).find("#upsAcctZipCode").attr(
									'value',
									'${viewRequestDetailsMap.BillingAcct}');
						} else {
							$('.' + finalClient).find("#fedex").css('display',
									'none');
							$('.' + finalClient).find("#ups").css('display',
									'none');
						}
						/*6. Purchaser*/
						$('.' + finalClient).find("#purchaserName").val(
								"${viewRequestDetailsMap.PurchaserName}");
						$('.' + finalClient).find("#purchaserName").attr(
								'value',
								"${viewRequestDetailsMap.PurchaserName}");
						$('.' + finalClient).find("#purchaserCO").val(
								"${viewRequestDetailsMap.PurchaserName}");
						$('.' + finalClient).find("#purchaserCO").attr('value',
								"${viewRequestDetailsMap.PurchaserName}");
						$('.' + finalClient).find("#purchaserAddress").val(
								"${viewRequestDetailsMap.PurchaserAddress}");
						$('.' + finalClient).find("#purchaserAddress").attr(
								'value',
								"${viewRequestDetailsMap.PurchaserAddress}");
						$('.' + finalClient).find("#purchaserCity").val(
								"${viewRequestDetailsMap.PurchaserCity}");
						$('.' + finalClient).find("#purchaserCity").attr(
								'value',
								"${viewRequestDetailsMap.PurchaserCity}");
						$('.' + finalClient).find("#purchaserState").val(
								"${viewRequestDetailsMap.PurchaserState}");
						$('.' + finalClient).find("#purchaserState").attr(
								'value',
								"${viewRequestDetailsMap.PurchaserState}");
						$('.' + finalClient).find("#purchaserZip").val(
								"${viewRequestDetailsMap.PurchaserZip}");
						$('.' + finalClient).find("#purchaserZip").attr(
								'value',
								"${viewRequestDetailsMap.PurchaserZip}");
						$('.' + finalClient).find("#purchaserCounty").val(
								"${viewRequestDetailsMap.PurchaserCountry}");
						$('.' + finalClient).find("#purchaserCounty").attr(
								'value',
								"${viewRequestDetailsMap.PurchaserCountry}");
						$('.' + finalClient)
								.find("#purchaserEmailId")
								.val(
										"${viewRequestDetailsMap.PurchaserMailAddress}");
						$('.' + finalClient)
								.find("#purchaserEmailId")
								.attr('value',
										"${viewRequestDetailsMap.PurchaserMailAddress}");
						$('.' + finalClient).find("#purchaserTelephone").val(
								"${viewRequestDetailsMap.PurchaserTelephone}");
						$('.' + finalClient).find("#purchaserTelephone").attr(
								'value',
								"${viewRequestDetailsMap.PurchaserTelephone}");

						/*7.Lien Information*/

						if ('${viewRequestDetailsMap.LienHolder}' == 'Yes') {
							$('.' + finalClient).find('#yes').prop('checked',
									true);
							$('.' + finalClient).find('#yes').attr('checked',
									true);
							$('.' + finalClient).find("#no").prop('checked',
									false);
							$('.' + finalClient).find('#lienHolder').css(
									'background', 'rgb(235, 235, 228)');
							$('.' + finalClient).find('#attn').css(
									'background', 'rgb(235, 235, 228)');
							$('.' + finalClient).find('#address').css(
									'background', 'rgb(235, 235, 228)');
							$('.' + finalClient).find('#city').css(
									'background', 'rgb(235, 235, 228)');
							$('.' + finalClient).find("input[name='CRF388']")
									.css('background', 'rgb(235, 235, 228)');
						} else if ('${viewRequestDetailsMap.LienHolder}' == 'No') {
							$('.' + finalClient).find("#no").prop('checked',
									true);
							$('.' + finalClient).find("#no").attr('checked',
									true);
							$('.' + finalClient).find('#yes').prop('checked',
									false);
						}
						/*no values found*/

						//$("#mailToLienholder").val('${viewRequestDetailsMap.CopyLienInfo}')
						if ('${viewRequestDetailsMap.CopyLienInfo}' == 'on') {
							$("#mailToLienholder").prop('checked', true);
							$("#mailToLienholder").attr('checked', true);
						} else {
							$("#mailToLienholder").prop('checked', false);
						}

						$("#lienHolder").val(
								'${viewRequestDetailsMap.LienHolderName}');
						$("#lienHolder").attr('value',
								'${viewRequestDetailsMap.LienHolderName}');
						$("#attn").val('${viewRequestDetailsMap.LienAttn}');
						$("#attn").attr('value',
								'${viewRequestDetailsMap.LienAttn}');
						$("#address").val(
								'${viewRequestDetailsMap.LienAddress}');
						$("#address").attr('value',
								'${viewRequestDetailsMap.LienAddress}');
						/*ends*/
						$('.' + finalClient).find("#city").val(
								'${viewRequestDetailsMap.LienCity}');
						$('.' + finalClient).find("#city").attr('value',
								'${viewRequestDetailsMap.LienCity}');

						var state2 = '${viewRequestDetailsMap.LienState}';
						$("#reqSelect387 > option").each(function() {
							if (state2 == this.text) {
								$(this).attr("selected", "selected");

							}
						});

						$('.' + finalClient).find("input[name='CRF388']").val(
								'${viewRequestDetailsMap.LienZip}');
						$('.' + finalClient).find("input[name='CRF388']").attr(
								'value', '${viewRequestDetailsMap.LienZip}');
						$('.' + finalClient).find("input[name='CRF421']").val(
								'${viewRequestDetailsMap.LienHolderName}');
						$('.' + finalClient).find("input[name='CRF421']").attr(
								'value',
								'${viewRequestDetailsMap.LienHolderName}');
						$('.' + finalClient).find("input[name='CRF384']").val(
								'${viewRequestDetailsMap.LienAttn}');
						$('.' + finalClient).find("input[name='CRF384']").attr(
								'value', '${viewRequestDetailsMap.LienAttn}');

						/*8. Mail title to */

						$('.' + finalClient).find("input[name='CRF424']").val(
								'${viewRequestDetailsMap.MailTitleName}');
						$('.' + finalClient).find("input[name='CRF424']").attr(
								'value',
								'${viewRequestDetailsMap.MailTitleName}');
						$('.' + finalClient).find("input[name='CRF390']").val(
								'${viewRequestDetailsMap.MailAttn}');
						$('.' + finalClient).find("input[name='CRF390']").attr(
								'value', '${viewRequestDetailsMap.MailAttn}');
						$('.' + finalClient).find("input[name='CRF391']").val(
								'${viewRequestDetailsMap.MailAddress}');
						$('.' + finalClient).find("input[name='CRF391']")
								.attr('value',
										'${viewRequestDetailsMap.MailAddress}');
						$('.' + finalClient).find("input[name='CRF392']").val(
								'${viewRequestDetailsMap.MailCity}');
						$('.' + finalClient).find("input[name='CRF392']").attr(
								'value', '${viewRequestDetailsMap.MailCity}');

						var state1 = '${viewRequestDetailsMap.MailState}';
						$("#reqSelect393 > option").each(function() {
							if (state1 == this.text) {
								$(this).attr("selected", "selected");

							}
						});

						$('.' + finalClient).find("input[name='CRF394']").val(
								'${viewRequestDetailsMap.LienZip}');
						$('.' + finalClient).find("input[name='CRF394']").attr(
								'value', '${viewRequestDetailsMap.LienZip}');

						/*9. Fair Marker Value*/

						$('.' + finalClient).find("#sale").val(
								'${viewRequestDetailsMap.SalePrice}');
						$('.' + finalClient).find("#sale").attr('value',
								'${viewRequestDetailsMap.SalePrice}');
						var checkVal1 = '${viewRequestDetailsMap.SaleTax}';
						if (checkVal1 == '') {
							$('.' + finalClient).find("#salesTax").val('0.00');
							$('.' + finalClient).find("#salesTax").attr(
									'value', '0.00');
						} else {
							$('.' + finalClient).find("#salesTax").val(
									'${viewRequestDetailsMap.SaleTax}');
							$('.' + finalClient).find("#salesTax")
									.attr('value',
											'${viewRequestDetailsMap.SaleTax}');
						}

						console.log("AdministrativeFee------->" +

						'${viewRequestDetailsMap.AdministrativeFee}');
						console.log("OvernightHandlingFee---->" +

						'${viewRequestDetailsMap.OvernightHandlingFee}');

						$('.' + finalClient).find("#adminFee").val(
								'${viewRequestDetailsMap.AdministrativeFee}');
						$('.' + finalClient).find("#adminFee").attr('value',
								'${viewRequestDetailsMap.AdministrativeFee}');
						$('.' + finalClient)
								.find("input[name='CRF400']")
								.val(
										'${viewRequestDetailsMap.OvernightHandlingFee}');
						$('.' + finalClient)
								.find("input[name='CRF400']")
								.attr('value',
										'${viewRequestDetailsMap.OvernightHandlingFee}');
						$('.' + finalClient).find("#totalAmount").val(
								'${viewRequestDetailsMap.TotalAmount}');
						$('.' + finalClient).find("#totalAmount").attr('value',
								'${viewRequestDetailsMap.TotalAmount}');
						$('.' + finalClient).find("#payAmount").val(
								'${viewRequestDetailsMap.PaymentAmount}');
						$('.' + finalClient).find("#payAmount").attr('value',
								'${viewRequestDetailsMap.PaymentAmount}');
						$('.' + finalClient).find("#remainBal").val(
								'${viewRequestDetailsMap.RemainingBalance}');
						$('.' + finalClient).find("#remainBal").attr('value',
								'${viewRequestDetailsMap.RemainingBalance}');
						if ('${viewRequestDetailsMap.RemainingBalance}' > 0) {
							$('.' + finalClient).find('#willBeBilled').show();
						} else {
							$('.' + finalClient).find('#willBeBilled').hide();
						}
						if ('${viewRequestDetailsMap.MethodOfSale}' != null) {
							$('.' + finalClient).find(
									'.paymentAmountInstructions').empty();
							if ('${viewRequestDetailsMap.MethodOfSale}' == '1') {

								$('.' + finalClient)
										.find('.paymentAmountInstructions')
										.append(
												"<div class = 'makeCheckPayableTo' style = ' font-weight: normal;' > "
														+ "Make check payable to PHH Funding LLC. A certified or bank check is required.If the owner of this vehicle is D.L.Peterson Trust, owner has assigned its rights(but not itsobligations) to sell the vehicle(s) herein to Element Funding, LLC as part of an IRC Sec.1031 exchange."
														+ "</div>");
								$('.' + finalClient).find(
										'.saleTaxInstructions').html

								('${viewRequestDetailsMap.SalesTaxText}');
								//salePriceInstructions
							} else if ('${viewRequestDetailsMap.MethodOfSale}' == '2') {

								$('.' + finalClient)
										.find('.paymentAmountInstructions')
										.append(
												"<div class = 'checklessPayment' style = 'font-weight: normal;' > "
														+ "Make wireless payment to Chesapeake Finance Holding using the instructions above.If the owner of this vehicle is D.L.Peterson Trust, owner has assigned its rights(but not itsobligations) to sell the vehicle(s) herein to PHH Funding, LLC as part of an IRC Sec.1031 exchange."
														+ "</div>");
							} else if ('${viewRequestDetailsMap.MethodOfSale}' == '3') {

								$('.' + finalClient)
										.find('.paymentAmountInstructions')
										.append(
												"<div class = 'checklessPayment' style = 'font-weight: normal;' > "
														+ "Check-less client sale has been selected and no check will be submitted to Element.If the owner of this vehicle is D.L.Peterson Trust, owner has assigned its rights(but not its obligations) to sell the vehicle(s) herein to PHH Funding, LLC as part of an IRC Sec.1031 exchange."
														+ "</div>");

							}

						}

						/*Approver information*/
						if ('${viewRequestDetailsMap.SignatureAcknowledge}' == 'on') {
							$('.' + finalClient).find("input[name='CRF449']")
									.prop('checked', 'true');
							$('.' + finalClient).find("input[name='CRF449']")
									.attr('checked', true)
						} else {
							$('.' + finalClient).find("input[name='CRF449']")
									.prop('checked', 'false');
						}
						$('.' + finalClient)
								.find("input[name='signature']")
								.val(
										'${viewRequestDetailsMap.ApproverSignature}');
						$('.' + finalClient)
								.find("input[name='signature']")
								.attr('value',
										'${viewRequestDetailsMap.ApproverSignature}');
						$('.' + finalClient).find("input[name='name']").val(
								'${viewRequestDetailsMap.ApproverName}');
						$('.' + finalClient).find("input[name='name']").attr(
								'value',
								'${viewRequestDetailsMap.ApproverName}');
						$('.' + finalClient).find("input[name='approvalDate']")
								.val('${viewRequestDetailsMap.ApproverDate}');
						$('.' + finalClient)
								.find("input[name='approvalDate']")
								.attr('value',
										'${viewRequestDetailsMap.ApproverDate}');
						$('.' + finalClient).find("input[name='telePhone']")
								.val('${viewRequestDetailsMap.ApproverNumber}');
						$('.' + finalClient)
								.find("input[name='telePhone']")
								.attr('value',
										'${viewRequestDetailsMap.ApproverNumber}');
						$('.' + finalClient).find("input[name='email']").val(
								'${viewRequestDetailsMap.ApproverMail}');
						$('.' + finalClient).find("input[name='email']").attr(
								'value',
								'${viewRequestDetailsMap.ApproverMail}');

						if ('${viewRequestDetailsMap.PowerOfAttorney}' == '0' &&

						'${viewRequestDetailsMap.PowerOfAttorney}' != null) {
							$('.' + finalClient).find("#specialPSaleNo").prop(
									'checked', true);
							$('.' + finalClient).find("#specialPSaleNo").attr(
									'checked', true);
							$('.' + finalClient).find(".shippingInstructions")
									.hide();
						} else if ('${viewRequestDetailsMap.PowerOfAttorney}' == '1'
								&&

								'${viewRequestDetailsMap.PowerOfAttorney}' != null) {
							$('.' + finalClient).find("#specialPSaleYes").prop(
									'checked', true);
							$('.' + finalClient).find("#specialPSaleYes").attr(
									'checked', true);
							if ($('#federaltwo1').is(':checked')) {

								$('.' + finalClient).find("#fedex").show();
								$('.' + finalClient).find("#phh").css(
										'display', 'none');
								$('.' + finalClient).find("#usps").hide();
								$('.' + finalClient).find("#ups").hide();
							} else if ($('#uspsTwo1').is(':checked')) {

								$('.' + finalClient).find("#fedex").hide();
								$('.' + finalClient).find("#usps").show();
								$('.' + finalClient).find("#phh").hide();
								$('.' + finalClient).find("#ups").hide();

							} else if ($('#upsTwo1').is(':checked')) {

								$('.' + finalClient).find("#fedex").hide();
								$('.' + finalClient).find("#usps").hide();
								$('.' + finalClient).find("#phh").hide();
								$('.' + finalClient).find("#ups").show();
							} else if ($('#overnighttwo1').is(':checked')) {

								$('.' + finalClient).find("#fedex").hide();
								$('.' + finalClient).find("#usps").hide();
								$('.' + finalClient).find("#phh").show();
								$('.' + finalClient).find("#ups").hide();
							}
						} else {
							$('.' + finalClient).find("#specialPSaleNo").prop(
									'checked', false);
							$('.' + finalClient).find("#specialPSaleYes").prop(
									'checked', false);
						}

						$('.' + finalClient).find("input [name='CRF438']").val(
								'${viewRequestDetailsMap.UpsAccount}');
						$('.' + finalClient).find("input [name='CRF438']")
								.attr('value',
										'${viewRequestDetailsMap.UpsAccount}');
						$('.' + finalClient).find("input [name='CRF437']").val(
								'${viewRequestDetailsMap.FedexAccount}');
						$('.' + finalClient)
								.find("input [name='CRF437']")
								.attr('value',
										'${viewRequestDetailsMap.FedexAccount}');
						$('.' + finalClient).find("input [name='CRF439']").val(
								'${viewRequestDetailsMap.BillingAcct}');
						$('.' + finalClient).find("input [name='CRF439']")
								.attr('value',
										'${viewRequestDetailsMap.BillingAcct}');

						$('.' + finalClient)
								.find(".ui-icon-closethick")
								.click(
										function() {
											$('.' + finalClient).parent()
													.hide();
											$('.' + finalClient)
													.parent()
													.parent()
													.children()
													.eq(2)
													.children

													()
													.eq(0)
													.children()
													.toggleClass(
															'glyphicon-chevron-down');
											$('.' + finalClient)
													.parent()
													.parent()
													.find(
															".req-check-col-last-comments ")
													.show();
										});

						$(".panelPDF").click(function() {

							var serviceRequestID = ClientServiceRequestId;
							ajaxPdf(serviceRequestID, "#panelPDF");

						});
					});
</script>
