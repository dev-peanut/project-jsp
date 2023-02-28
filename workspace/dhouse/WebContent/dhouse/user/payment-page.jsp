<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 및 결제</title>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/logo.png">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/user/payment-page.css">
</head>
<body>
	<div id="page-container">
		<main id="main-app">
			<!-- 헤더 적용 -->
			<jsp:include page="${pageContext.request.contextPath}/dhouse/components/header-my.jsp"></jsp:include>
			<div class="Wrapper">
				<div>
					<div class="Layout">
						<!-- 주문 및 결제 -->
						<div class="Container">
							<h2 class="PageTitle">주문 및 결제</h2>
							<div class="LayoutContainer">
								<div>
									<div class="Notice">
										<div color="basic" class="Box">
											<span>
												<svg viewBox="0 0 40 40" focusable="false" role="presentation" class="withIcon" aria-hidden="true">
													<path fill="none" d="M0 0h40v40H0z"></path>
													<path d="M20 1a19 19 0 1 0 19 19A19.06 19.06 0 0 0 20 1zm1 28.6h-2v-13h2zm-1-15.84A1.8 1.8 0 1 1 21.8 12a1.8 1.8 0 0 1-1.8 1.76z"></path>
												</svg>
											</span>
											<div class="Box_content">
												<p class="Box_title">구매 후 관리자 확인 후 진행됩니다.</p>
												<div class="Box_description">
													<ul>
														<li>구매 후 관리자 확인 후 진행됩니다.</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- 주문 정보 -->
								<section class="Section_container">
									<div class="Section_titleContainer">
										<h3 class="Section_title">주문 정보</h3>
									</div>
									<div class="Active1 Active2">
										<div class="Information">
											<div class="Information_row">
												<span class="Information_label">주문자명</span>
												<span>땅콩이</span>
											</div>
											<div class="Information_row">
												<span class="Information_label">휴대폰 번호</span>
												<span>01012341234</span>
											</div>
											<div class="Information_row">
												<span class="Information_label">이메일 주소</span>
												<span>abc123@gmail.com</span>
											</div>
										</div>
									</div>
								</section>
								<!-- 요청 사항(선택) -->
								<form id="payment-submit">	
									<section class="Section_container">
										<div class="Section_titleContainer">
											<h3 class="Section_title">주문 요청 사항 (선택)</h3>
										</div>
										<div class="Active1 Active2">
											<input name="productRequestMessage" maxlength="100" placeholder="주문 요청 사항을 입력하세요" type="text" class="Input1 Input2" aria-invalid="false"></div>
									</section>
									<!-- 상품정보 -->
									<section class="Section_container">
										<div class="Section_titleContainer">
											<h3 class="Section_title">상품 정보</h3>
										</div>
										<div class="Active1 Active2">
											<div class="PaymentProductInfo">
												<div class="PaymentProductInfo_container">
													<div class="PaymentProductInfo_textContainer">
														<p class="PaymentProductInfo_productName">홍보 배너</p>
														<p class="PaymentProductInfo_productDescription"></p>
														<p class="PaymentProductInfo_optionsContainer">
															<span>1개월 패키지</span>
														</p>
													</div>
												</div>
												<div class="PaymentProductInfo_priceInfo">
													<span class="PaymentProductInfo_date">시작날짜: 3월 1일</span>
													<span class="PaymentProductInfo_price">50,000원</span>
												</div>
												<div class="PaymentProductInfo_divider"></div>
											</div>
										</div>
									</section>
									<!-- 쿠폰할인 -->
									<section class="Section_container">
										<div class="Section_titleContainer">
											<h3 class="Section_title">레벨 별 할인</h3>
										</div>
										<div class="Section_sectionContent Section_active">
											<div class="select-menu medium">
											<!-- 여기서부터 코드 정리 안함 -->
												<div class="menu1 menu2">
													<span aria-live="polite" aria-atomic="false" aria-relevant="additions text" class="menuText"></span>
													<div class="control1 control2 control3">
														<div class="value1 value2">
														<div class="placeholder1 placeholder2">사용 가능한 쿠폰이 없습니다.</div>
															<input id="react-select-2-input" readonly="" disabled="" tabindex="0" aria-autocomplete="list" class="dummyInput" value="">
														</div>
														<div class="indicators1 indicators2">
															<span class="separator1 separator2"></span>
															<div class="select-menu__indicator select-menu__dropdown-indicator css-tlfecz-indicatorContainer" aria-hidden="true">
																<svg viewBox="0 0 32 32" focusable="false" role="presentation" class="withIcon__20lDO" aria-hidden="true">
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
									<section class="Section_container">
										<div class="Section_titleContainer">
											<h3 class="Section_title">결제 수단</h3>
										</div>
										<div class="Section_sectionContent Section_active">
											<div class="StorePaymentChooseMode_storePaymentChooseMode__2yXk6">
												<ul>
													<li>
														<label class="StorePaymentNicePay_storePaymentNicePay__1Yb59 StorePaymentNicePay_checked__14ngZ StorePaymentNicePay_single__3-vFW" for="nicePay">
															<div class="StorePaymentNicePay_title__1Ppay">
																<svg viewBox="0 0 48 48" focusable="false" role="presentation" class="withIcon__20lDO StorePaymentNicePay_checkIcon__3gaNh" aria-hidden="true">
																	<path d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path>
																</svg>
																<label for="nicePay" class="Radio_radio__2k70h Radio_lg__2b_Sp StorePaymentNicePay_radio__2Zx3M">
																	<input type="radio" id="nicePay" name="paymentMode" value="nicePay">
																	<span class="Radio_icon__SObGY"></span>
																	<span class="Radio_label__14nd4"></span>
																</label>
																<svg viewBox="0 0 32 32" focusable="false" role="presentation" class="withIcon__20lDO" aria-hidden="true">
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
								</form>
							</div>
						</div>
						<!-- 결제금액 -->
						<div class="PaymentLayout_floatingSectionContainer__2QCzS">
							<div class="PaymentLayout_floatingSection__31pLD">
								<section class="Section_container PaymentLayout_floating__3iHN0">
									<div class="Section_titleContainer">
										<h3 class="Section_title">결제 금액</h3>
									</div>
									<div class="Section_sectionContent Section_active">
										<div class="DefaultPrice_container__1gf10">
											<div class="DefaultPrice_title__3iw65">
												<label class="Radio_radio__2k70h Radio_md__3xeXE DefaultPrice_radioButton__1nTXN">
													<input type="radio" name="price" readonly="" value="DEFAULT" checked="">
														<span class="Radio_icon__SObGY"></span>
														<span class="Radio_label__14nd4"></span>
												</label>일반 금액
											</div>
											<div class="TitleValuePrice_container__Hcpla">
												<dl class="">
													<dt>상품 금액</dt>
													<dd>
														<span>
															<em class="TitleValuePrice_money__1Tu-B">50,000</em>
															원
														</span>
													</dd>
												</dl>
											</div>
											<div class="TitleValuePrice_container__Hcpla">
												<dl class="">
													<dt>레벨 별 할인 금액</dt>
													<dd>
														<span>0 원</span>
													</dd>
												</dl>
											</div>
											<div class="TitleValuePrice_container__Hcpla">
												<hr class="TitleValuePrice_divide__2bMnX">
												<dl class="TitleValuePrice_total__oJwm4">
													<dt>최종 결제 금액</dt>
													<dd>
														<span><em class="">50,000 원</em></span>
													</dd>
												</dl>
											</div>
										</div>
									</div>
								</section>
								<section class="Section_container PaymentLayout_floating__3iHN0">
									<div class="Section_sectionContent Section_active">
										<div class="StorePaymentTerms_StorePaymentTerms__1PQlB">
											<label class="Checkbox_checkbox__pamoY Checkbox_lg__2FN3A Checkbox_labeled__zQ0mF StorePaymentTerms_termsCheckbox__3gruT">
												<input name="paymentRequiredTerms" type="checkbox" class="Checkbox_input__3UBmW">
												<span class="Checkbox_icon___4ktl" aria-hidden="true">
													<svg viewBox="0 0 16 2" focusable="false" role="presentation" class="withIcon__20lDO Checkbox_removeIcon__2VWZr" aria-hidden="true">
														<path fill-rule="evenodd" d="M0 0h16v2H0z"></path>
													</svg>
													<svg viewBox="0 0 48 48" focusable="false" role="presentation" class="withIcon__20lDO Checkbox_checkIcon__1uUVj" aria-hidden="true">
														<path d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path>
													</svg>
												</span>
												<span class="Checkbox_content__2Ze7x">
													<span>결제 진행 필수 동의</span>
												</span>
											</label>
											<div class="StorePaymentTerms_termsList__1ki8i">
												<label for="serviceTerms" class="StorePaymentTerms_termsItem__CAG90">
													<label for="serviceTerms" class="Checkbox_checkbox__pamoY Checkbox_sm__KgIAv StorePaymentTerms_smallCheckBox__YwfQ5">
														<input name="serviceTerms" id="serviceTerms" type="checkbox" class="Checkbox_input__3UBmW">
														<span class="Checkbox_icon___4ktl" aria-hidden="true">
															<svg viewBox="0 0 16 2" focusable="false" role="presentation" class="withIcon__20lDO Checkbox_removeIcon__2VWZr" aria-hidden="true">
																<path fill-rule="evenodd" d="M0 0h16v2H0z"></path>
															</svg>
															<svg viewBox="0 0 48 48" focusable="false" role="presentation" class="withIcon__20lDO Checkbox_checkIcon__1uUVj" aria-hidden="true">
																<path d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path>
															</svg>
														</span>
														<span class="Checkbox_content__2Ze7x"></span>
													</label>
													<span class="StorePaymentTerms_text__1tYhe">구매 조건, 결제 진행 및 결제 대행 서비스 동의 (필수)</span>
												</label>
												<label for="privacyTerms" class="StorePaymentTerms_termsItem__CAG90">
													<label for="privacyTerms" class="Checkbox_checkbox__pamoY Checkbox_sm__KgIAv StorePaymentTerms_smallCheckBox__YwfQ5">
														<input name="privacyTerms" id="privacyTerms" type="checkbox" class="Checkbox_input__3UBmW">
															<span class="Checkbox_icon___4ktl" aria-hidden="true">
																<svg viewBox="0 0 16 2" focusable="false" role="presentation" class="withIcon__20lDO Checkbox_removeIcon__2VWZr" aria-hidden="true">
																	<path fill-rule="evenodd" d="M0 0h16v2H0z"></path>
																</svg>
																<svg viewBox="0 0 48 48" focusable="false" role="presentation" class="withIcon__20lDO Checkbox_checkIcon__1uUVj" aria-hidden="true">
																	<path d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path>
																</svg>
															</span>
															<span class="Checkbox_content__2Ze7x"></span>
													</label>
													<span class="StorePaymentTerms_text__1tYhe">개인정보 제3자 제공 동의 (필수)</span>
													<button class="Button_button__mRXZC Button_text__1iP4l Button_sm__1aKYg Button_iconOnly__1hahW iconButton StorePaymentTerms_termsDetailButton__29smA" type="button">
														<span>
															<span class="Button_children__3HY2l">
																<svg viewBox="0 0 40 40" focusable="false" role="presentation" class="withIcon__20lDO" aria-hidden="true">
																	<path d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path>
																</svg>
															</span>
														</span>
													</button>
												</label>
											</div>
										</div>
										<button form="payment-submit" class="Button_button__mRXZC Button_primary__1HJqX Button_contained__k9pMW Button_lg__22YWj Button_block__1LAUA PaymentLayout_submitButton__1fQJ4" type="submit">
											<span>
												<span class="Button_children__3HY2l">50,000원 결제하기</span>
											</span>
										</button>
									</div>
								</section>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- footer적용 -->
			<jsp:include page="${pageContext.request.contextPath}/dhouse/components/footer.jsp"></jsp:include>
		</main>
	</div>
</body>
</html>