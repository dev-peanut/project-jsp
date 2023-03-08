// 검색바
const $searchForm = $('.search__searchbox__form');
// 배너 삭제
const $bannerUpdate = $('button.banner-delete');

function checkStatus(status) {
  var result;
  switch (status) {
    case '0':
      result = '대기';
      break;
    case '1':
      result = '승인';
      break;
    case '-1':
      result = '거절';
      break;
    default:
      alert('상태 표시 오류');
      break;
  }

  return result;
}

function loadData(data, i) {
  return `
  <label for='hds${i}'>
  <div class="content-list__info-container">
  <div class="content-list__info-unit">
    <input type="radio" class="content__checkbox" id="hds${i}" name="checkbox" />
      <ul class="content-list__info">
        <li class="content__id">${data.bannerId}</li>
        <li class="content__title">${data.bannerLocation}</li>
        <li class="content__user-id">${data.userIdentification}</li>
        <li class="content__status">${checkStatus(data.bannerPaymentStatus)}</li>
        <li class="content__date-detail">${data.bannerPeriod}</li>
        <!--2개월 ,4개월  -->
        <li class="content__date">${data.bannerStartDate}</li>
      </ul>
  </div>
</div>
</label>
    `;
}

// 컨텐트로드
app.service.load(banners, loadData);

/* 
===================================================================
  이벤트
===================================================================
*/
$searchForm.on('submit', function (e) {
  e.preventDefault();

  var url = contextPath + '/admin/banner/listSearchOk.admin';
  var data = { keyword: $(this).find('input').val() };

  app.service.ajax(url, data, app.service.load);
});

$bannerUpdate.on('click', function () {
  var url = contextPath + '/admin/banner/bannerDeleteOk.admin';
  var bannerId = $("input[name='checkbox']:checked").next().find('.content__id').text();
  var data = { bannerId: bannerId };

  if (!confirm('정말 삭제하시겠습니까?')) return;

  app.service.ajax(url, data, function () {
    location.reload();
  });
});
