/**
 *
 */

// 모달 열고 ajax 호출
function show(banner) {
  banner = JSON.parse(banner);
  $('div.banner-form-container').html(loadBanner(banner));

  let $positionButton = $('.e7abtep3');
  let $position = $('td.bannerPosition');
  let $positionInput = $("input[name='bannerLocation']");
  let $bannerForm = $('form.banner-form');
  var data = {};

  // 배너 순서 바꾸는 이벤트 function
  $positionButton.on('click', function () {
    var index = Number($position.text());
    switch ($(this).attr('direction')) {
      case 'up':
        index = ++index;
        $position.text(index);
        $positionInput.val(index);
        break;
      case 'down':
        if (--index < 1) {
          alert('배너 위치는 1 이상이여야 합니다.');
          break;
        }
        $position.text(index);
        $positionInput.val(index);
        break;

      default:
        alert('다시 시도해주세요.');
        break;
    }
  });

  // form submit 이벤트 등록
  $bannerForm.on('submit', function (e) {
    e.preventDefault();
    data.bannerId = banner.bannerId;
    data.bannerPaymentStatus = $("input[name='bannerPaymentStatus']:checked").val();
    data.bannerPosition = $position.text();
    data.bannerPeriod = $("input[name='bannerPeriod']:checked").val();

    // submit을 위한 ajax 호출
    doSubmit(data);
  });

  document.querySelector('.background').className = 'background show';
}

// 모달 닫기
function close() {
  document.querySelector('.background').className = 'background';
}

document.querySelector('#show').addEventListener('click', function () {
  var bannerId = $("input[name='checkbox']:checked").next().find('.content__id').text();
  var url = contextPath + '/admin/banner/bannerSelectOk.admin';
  var data = { bannerId: bannerId };

  // show를 ajax 콜백함수로 전달
  app.service.ajax(url, data, show);
});

document.querySelector('#close').addEventListener('click', close);

// form submit ajax 호출
function doSubmit(data) {
  console.log('submit 확인');
  var url = contextPath + '/admin/banner/bannerUpdateOk.admin';
  app.service.ajax(url, data, function () {
    close();
    location.reload();
  });
}

// form dom 생성 function
function loadBanner(banner) {
  return `
    <form class="banner-form" data-testid="MultiWrite_form">
    <section class="css-12nko9l e1m2i6xw0">
      <div lang="ko_KR" class="css-1dcl64i e13qsip93">
        <h2 data-testid="Typography_Component" class="css-16agecz">기본설정</h2>
      </div>
      <div class="css-9ct1p3 e3j22xw0">
        <div class="css-1hsp21g e3j22xw3">
          <div role="row" class="ColumnLayoutHeader css-ovuw9r e3j22xw2">상태</div>
          <div role="cell" class="ColumnLayoutCell css-r24zef e3j22xw1">
            <label class="css-1cthi19 ef3idoi0"
              ><input
                type="radio"
                name="bannerPaymentStatus"
                data-testid="RadioItem_Input"
                class="css-57b9tf ed83gly0"
                value="0" />대기</label
            ><label class="css-1cthi19 ef3idoi0"
              ><input
                type="radio"
                name="bannerPaymentStatus"
                data-testid="RadioItem_Input"
                class="css-57b9tf ed83gly0"
                value="1" />승인</label
            ><label class="css-1cthi19 ef3idoi0"
              ><input
                type="radio"
                name="bannerPaymentStatus"
                data-testid="RadioItem_Input"
                class="css-57b9tf ed83gly0"
                value="-1" />거절</label
            >
          </div>
        </div>
      </div>
      <div lang="ko_KR" class="css-1dcl64i e13qsip93">
        <h2 data-testid="Typography_Component" class="css-16agecz">이미지 및 등록기간</h2>
      </div>
      <div class="css-9ct1p3 e3j22xw0">
        <div class="css-1hsp21g e3j22xw3">
          <div role="row" class="ColumnLayoutHeader css-vadqqu e3j22xw2">
            <span style="position: absolute">상세 이미지</span>
            <div class="css-1r5gb7q e1irxonl6">
              <div lang="ko_KR" class="css-1laxqur e1irxonl5">
                <button type="button" role="button" class="css-vzth05 e1irxonl4"></button>
                <div class="css-106ohzw e1irxonl3">
                  <div class="css-abnyhd e1irxonl2"></div>
                  <button type="button" class="css-bwa5a9 e1irxonl1"></button>
                  <span class="css-xloucr e1irxonl0"></span>
                </div>
              </div>
            </div>
          </div>
          <div role="cell" class="ColumnLayoutCell css-r24zef e3j22xw1">
            <div class="css-0 eik18812">
              <div class="css-1xdhyk6 eik18810">
                <table class="css-1s2uxre eik1889">
                  <thead data-testid="Thead_thead">
                    <tr data-testid="Thead_tr">
                      <th colspan="1" width="35" class="css-1dw4fyr eik1887">
                        <div data-testid="Thead_div">순서</div>
                      </th>
                      <th colspan="1" width="50" class="css-1pli0cn eik1887">
                        <div data-testid="Thead_div">변경</div>
                      </th>
                      <th colspan="1" width="240" class="css-1y5ihtu eik1887">
                        <div data-testid="Thead_div">등록 이미지</div>
                      </th>
                    </tr>
                  </thead>
                  <tbody data-testid="Tbody_tbody">
                    <tr class="css-5dt5vx eik1886">
                      <td width="35" class="css-4mcdtz eik1885 bannerPosition">${banner.bannerLocation}</td>
                      <input name="bannerLocation" type="text" style="display: none" />
                      <td width="50" class="css-5xaqdp eik1885">
                        <div
                          data-testid="getColumnData_MoveButtonWrap"
                          class="css-umkjw1 e7abtep4">
                          <button
                            type="button"
                            direction="up"
                            data-testid="getColumnData_MoveButton"
                            class="e7abtep3 css-du1sny esmk9vo0"></button>
                          <button
                            type="button"
                            direction="down"
                            data-testid="getColumnData_MoveButton_1"
                            class="e7abtep3 css-k934s4 esmk9vo0"></button>
                        </div>
                      </td>
                      <td width="240" class="css-pxtcrr eik1885">
                        <img src="" alt="" />
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
            <ul data-testid="ImageTable_InfoWrap" class="css-91djrp e7abtep1">
              <li data-testid="ImageTable_InfoItem" class="css-ouk6jw e7abtep0">
                배너 이미지로 등록 시 가로(width) 세로 (height) 는 ????px * ????px 를
                권장합니다.
              </li>
              <li data-testid="ImageTable_InfoItem_1" class="css-ouk6jw e7abtep0">
                팝업 이미지로 등록 시 가로(width)는 최소 ????px 이상을 권장합니다.
              </li>
            </ul>
          </div>
        </div>
        <div class="css-1hsp21g e3j22xw3">
          <div role="row" class="ColumnLayoutHeader css-vadqqu e3j22xw2">
            <span style="position: absolute">등록기간 설정</span>
            <div class="css-1r5gb7q e1irxonl6">
              <div lang="ko_KR" class="css-1laxqur e1irxonl5">
                <button type="button" role="button" class="css-vzth05 e1irxonl4"></button>
                <div class="css-106ohzw e1irxonl3">
                  <div class="css-abnyhd e1irxonl2"></div>
                  <button type="button" class="css-bwa5a9 e1irxonl1"></button>
                  <span class="css-xloucr e1irxonl0"></span>
                </div>
              </div>
            </div>
          </div>
          <div role="cell" class="ColumnLayoutCell css-r24zef e3j22xw1">
            <label class="css-1cthi19 ef3idoi0"
              ><input
                type="radio"
                name="bannerPeriod"
                data-testid="RadioItem_Input"
                class="css-57b9tf ed83gly0"
                value="1개월" />1개월</label
            >
            <label class="css-1cthi19 ef3idoi0"
              ><input
                type="radio"
                name="bannerPeriod"
                data-testid="RadioItem_Input"
                class="css-57b9tf ed83gly0"
                value="2개월" />2개월</label
            >
            <label class="css-1cthi19 ef3idoi0"
              ><input
                type="radio"
                name="bannerPeriod"
                data-testid="RadioItem_Input"
                class="css-57b9tf ed83gly0"
                value="4개월" />4개월</label
            >
          </div>
        </div>
      </div>
    </section>
    <div class="css-1eki18n e11x95qw1">
      <button type="submit" data-testid="MultiWrite_Button" class="css-r49awe esmk9vo0">
        저장
      </button>
    </div>
</form>
  `;
}

function checkStatusValue(status) {
  var result;
  switch (status) {
    case '대기':
      result = '0';
      break;
    case '승인':
      result = '1';
      break;
    case '거절':
      result = '-1';
      break;
    default:
      alert('상태 표시 오류');
      break;
  }

  return result;
}
