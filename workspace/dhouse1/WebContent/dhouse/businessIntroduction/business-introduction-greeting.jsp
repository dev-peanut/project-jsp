<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/businessIntroduction/business-introduction-greeting.css">
<title>인사말</title>
</head>
<body>
    <jsp:include page="${pageContext.request.contextPath}/dhouse/components/header.jsp"></jsp:include>
    <div id="whole-wrapper">
        <div class="title-wrapper" id="top">
            <h2 class="title">나눔의 집</h2>
            <p class="text">
                나눔의집 식품기부 사업은 1998년 IMF 외환위기 직후, 급격히 증가한 결식계층의 식생활 지원을 위해 시범 사업을 실시한 이후 시작하게 되었습니다. 주된 사업은 식품을 기부받아 취약계층에게 지원하는 복지 서비스로, 사회안전망 기능을 수행하며 사회복지 물적자원 전달체계의 핵심영역으로 성장 하였습니다.기부 참여는 자영업자의 자발적 참여를 유도하여 사업장 홍보 및 브랜드 가치를 높이고 있습니다.
                <br>
                <br>
                기부 참여자는 식품 나눔을 통해 불필요하게 발생되는 음식물 쓰레기를 줄여 환경오염과 음식물 쓰레기 처리비용을 줄이고, 더 나아가 기부를 통해 더불어 사는 세상을 함께 만들어갈 수 있습니다.
                이제 나눔의집은 단순히 굶주림을 해소하는 차원을 넘어 미래를 향해 나아갑니다. 개인 기부 참여자는 중고 가전제품을 필요한 이들이 사용할 수 있도록 기부 할 수 있습니다. 나눔의집은 결식 예방 및 해소뿐만이 아닌 지역사회 복지공동체를 구축하여 나눌수록 행복한, 나눔의 현장을 위해 혼신의 힘을 기울이고 있습니다.
                <br>
                시민 여러분의 많은 참여와 관심을 부탁드립니다.
            </p>
            <hr class="space">
        </div>
        <!-- <div class="title-wrapper" id="middle">
            <h2 class="title">홍보</h2>
            <p class="text">
                우리는 모두 각자의 자리에서 작년 한 해 의미 있는 성과를 이루었습니다.             </p>
            <p class="text">
                투표 대상자이신 Top 100 메이커는
                진행한 펀딩 프로젝트의 펀딩모집금액, 서포터 수, 만족도 평점 등의 수치적 성과, 펀딩 성공 횟수, 스토어 입점 여부 등 메이커님을 믿어주는 서포터와 만남을 위한 꾸준한 도전 여부
                펀딩 성공 사후 관리, 적극적이고 원활한 소통 등의 긍정적인 펀딩 문화 조성을 위한 기여 정도를 종합적으로 심사하여 선정되었습니다.
            </p>
            <p class="text">
                최종 선정되신 Top 10 메이커는 오롯이 메이커님을 지지하시는 서포터님의 투표로만 이뤄지며, 서포터 Pick 투표하기 에서 가장 많은 표를 얻은 Top 10 메이커께서
                선정됩니다.
            </p>
            <p class="text">
                와디즈 어워즈를 통해 와디즈뿐 아니라 서포터, 나아가 우리 모두의 삶에 어떠한 긍정적인 변화의 물결이 만들어졌는지 회고하고자 합니다. 다음 해의 새로운 변화를 기대하며 도전하는
                사람들에게 도움이 되는 어워즈가 되길 바랍니다.
            </p>
            <hr class="space">
        </div> -->
        <div class="title-wrapper" id="bottom">
            <h2 class="title">푸드뱅크란</h2>
            <p class="text">
                01. 기업 및 개인으로부터 식품 및 생활용품을 기부받아 결식아동, 독거노인 등 저소득 소외계층에게 지원하는 물적 나눔제도입니다.
            </p>
            <p class="text">
                02. 1960년대 후반 미국에서 생겨났으며, 우리나라 푸드뱅크는 1998년 IMF 경기위기 이후 급격히 증가한 노숙인 및 결식아동의 급식문제를 해결하기 위해 시작되었습니다.
            </p>
            <p class="text">
                03. 전국푸드뱅크(중앙물류센터) - 17개 광역푸드뱅크 - 450여개 기초푸드뱅크·마켓으로 조직된 우리나라 최대의 물적나눔 시스템입니다
            </p>
            <hr class="space">
        </div>
    </div>
    <jsp:include page="${pageContext.request.contextPath}/dhouse/components/footer.jsp"></jsp:include>
</body>
</html>