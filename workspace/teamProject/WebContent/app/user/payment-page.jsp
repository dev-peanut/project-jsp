<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 및 결제</title>
</head>
<body>
	<div id="page-container">
		<main id="main-app">
			<div id="MainWrapper_content__GZkTa">
				<div>
					<div class="PaymentLayout_paymentLayoutContainer__3Ef47">
						<!-- 주문 및 결제 -->
						<div id="PaymentLayout_paymentContainer__2T2nr">
							<h2 class="PaymentLayout_pageTitle__2MXof">주문 및 결제</h2>
							<div id="PaymentLayout_paymentLayoutContainer__3Ef47">
								<div>
									<div class="PaymentLayout_paymentNotice__1o_Hi">
										<div color="basic" class="MessageBox_messageBox__3be7S MessageBox_basic__2S29U MessageBox_vertical__2dh5G StorePaymentNotice_storePaymentNotice__1bIo9">
											<span>
												<svg viewBox="0 0 40 40" focusable="false" role="presentation" class="withIcon_icon__20lDO MessageBox_icon__RobzF" aria-hidden="true">
													<path fill="none" d="M0 0h40v40H0z"></path>
													<path d="M20 1a19 19 0 1 0 19 19A19.06 19.06 0 0 0 20 1zm1 28.6h-2v-13h2zm-1-15.84A1.8 1.8 0 1 1 21.8 12a1.8 1.8 0 0 1-1.8 1.76z"></path>
												</svg>
											</span>
											<div class="MessageBox_content__3DhRV">
												<p class="MessageBox_title__1P3UH">펀딩에 성공하여 상시 판매하는 스토어 상품입니다.</p>
												<div class="MessageBox_description__5-Jfn">
													<ul>
														<li>구매 후 관리자 확인 후 진행됩니다.</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- 주문 정보 -->
								<section class="StorePaymentSection_container__1SdwL">
									<div class="StorePaymentSection_titleContainer__gkoqg">
										<h3 class="StorePaymentSection_title__DLi4F">주문 정보</h3>
									</div>
									<div class="StorePaymentSection_sectionContent__1a3aW StorePaymentSection_active__2fVyM">
										<div class="StorePaymentInformation_storePaymentInformation__nBaVr">
											<div class="StorePaymentInformation_row__OF_TS">
												<span class="StorePaymentInformation_label__3Pxe0">주문자명</span>
												<span>땅콩이</span>
											</div>
											<div class="StorePaymentInformation_row__OF_TS">
												<span class="StorePaymentInformation_label__3Pxe0">휴대폰 번호</span>
												<span>01012341234</span>
											</div>
											<div class="StorePaymentInformation_row__OF_TS">
												<span class="StorePaymentInformation_label__3Pxe0">이메일 주소</span>
												<span>abc123@gmail.com</span>
											</div>
										</div>
									</div>
								</section>
								<!-- 주문 요청 사항(선택) -->
								<section class="StorePaymentSection_container__1SdwL">
									<div class="StorePaymentSection_titleContainer__gkoqg">
										<h3 class="StorePaymentSection_title__DLi4F">주문 요청 사항 (선택)</h3>
									</div>
									<div class="StorePaymentSection_sectionContent__1a3aW StorePaymentSection_active__2fVyM">
										<input name="productRequestMessage" maxlength="100" placeholder="주문 요청 사항을 입력하세요" type="text" class="Input_input__11VYR Input_md__jEX3i" aria-invalid="false"></div>
								</section>
								<!-- 상품정보 -->
								<section class="StorePaymentSection_container__1SdwL">
									<div class="StorePaymentSection_titleContainer__gkoqg">
										<h3 class="StorePaymentSection_title__DLi4F">상품 정보</h3>
									</div>
									<div class="StorePaymentSection_sectionContent__1a3aW StorePaymentSection_active__2fVyM">
										<div class="StorePaymentProductInfo_storePaymentProductInfoContainer__1nu6T">
											<div class="StorePaymentProductInfo_productInfoContainer__3ulGA">
												<div class="StorePaymentProductInfo_productInfoTextContainer__CId20">
													<p class="StorePaymentProductInfo_productName__1TK1V">피스코리아 자석 택배박스커터 블랙</p>
													<p class="StorePaymentProductInfo_productDescription__3-3a_"></p>
													<p class="StorePaymentProductInfo_optionsContainer__1w2Ov">
														<span>자석 택배박스커터 블랙_LBS02479W0</span>
													</p>
												</div>
											</div>
											<div class="StorePaymentProductInfo_priceInfo__35XLT">
												<span class="StorePaymentProductInfo_qty__3MWOa">수량: 1개</span>
												<span class="StorePaymentProductInfo_price__2pYbN">8,900원</span>
											</div>
											<div class="StorePaymentProductInfo_divider__2dEYa"></div>
										</div>
									</div>
								</section>
								<!-- 쿠폰할인 -->
								<section class="StorePaymentSection_container__1SdwL">
									<div class="StorePaymentSection_titleContainer__gkoqg">
										<h3 class="StorePaymentSection_title__DLi4F">쿠폰 할인</h3>
									</div>
									<div class="StorePaymentSection_sectionContent__1a3aW StorePaymentSection_active__2fVyM">
										<div class="select-menu medium">
											<div class="select-menu--is-disabled css-14jk2my-container">
												<span aria-live="polite" aria-atomic="false" aria-relevant="additions text" class="css-7pg0cj-a11yText"></span>
												<div class="select-menu__control select-menu__control--is-disabled css-1fhf3k1-control">
													<div class="select-menu__value-container css-1hwfws3">
													<div class="select-menu__placeholder css-1wa3eu0-placeholder">사용 가능한 쿠폰이 없습니다.</div>
														<input id="react-select-2-input" readonly="" disabled="" tabindex="0" aria-autocomplete="list" class="css-62g3xt-dummyInput" value="">
													</div>
													<div class="select-menu__indicators css-1wy0on6">
														<span class="select-menu__indicator-separator css-0"></span>
														<div class="select-menu__indicator select-menu__dropdown-indicator css-tlfecz-indicatorContainer" aria-hidden="true">
															<svg viewBox="0 0 32 32" focusable="false" role="presentation" class="withIcon_icon__20lDO" aria-hidden="true">
																<path d="M16 22.4L5.6 12l1.12-1.12L16 20.16l9.28-9.28L26.4 12 16 22.4z"></path>
															</svg>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</section>
								<!-- 결제수단 -->
								<section class="StorePaymentSection_container__1SdwL">
									<div class="StorePaymentSection_titleContainer__gkoqg">
										<h3 class="StorePaymentSection_title__DLi4F">결제 수단</h3>
									</div>
									<div class="StorePaymentSection_sectionContent__1a3aW StorePaymentSection_active__2fVyM">
										<div class="StorePaymentChooseMode_storePaymentChooseMode__2yXk6">
											<ul>
												<li>
													<label class="StorePaymentNicePay_storePaymentNicePay__1Yb59 StorePaymentNicePay_checked__14ngZ StorePaymentNicePay_single__3-vFW" for="nicePay">
														<div class="StorePaymentNicePay_title__1Ppay">
															<svg viewBox="0 0 48 48" focusable="false" role="presentation" class="withIcon_icon__20lDO StorePaymentNicePay_checkIcon__3gaNh" aria-hidden="true">
																<path d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path>
															</svg>
															<label for="nicePay" class="Radio_radio__2k70h Radio_lg__2b_Sp StorePaymentNicePay_radio__2Zx3M">
																<input type="radio" id="nicePay" name="paymentMode" value="nicePay">
																<span class="Radio_icon__SObGY"></span>
																<span class="Radio_label__14nd4"></span>
															</label>
															<svg viewBox="0 0 32 32" focusable="false" role="presentation" class="withIcon_icon__20lDO" aria-hidden="true">
																<path d="M1.6 6.4v19.2h28.8V6.4zM28.8 8v1.6H3.2V8zM3.2 24V12.8h25.6V24z"></path>
																<path d="M16 15.2H4.8v1.6H16v-1.6z"></path>
															</svg>
															<span>신용/체크카드 결제</span>
														</div>
														<p class="StorePaymentNicePay_notification__D1ZcP">* 할부 결제의 경우 신용/체크카드 결제를 선택하세요.</p>
													</label>
												</li>
											</ul>
										</div>
									</div>
								</section>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</main>
	</div>
</body>
</html>