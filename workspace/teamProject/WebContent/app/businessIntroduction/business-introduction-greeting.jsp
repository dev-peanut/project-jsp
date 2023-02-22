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
    <jsp:include page="../component/header.jsp"></jsp:include>
    <div id="whole-wrapper">
        <div class="title-wrapper" id="top">
            <h2 class="title">와디즈<br>어워즈</h2>
            <p class="text">
                와디즈는 매년 연말, 그 해 트렌드를 이끈 메이커에게 축하와 감사의 마음을 담아 상을 전합니다.
        언제나 새롭고 놀라운 아이디어를 제시하는 메이커, 그들의 이야기를 듣고 기꺼이 손을 잡아주는 서포터.
        이 모든 사람들이 와디즈에 모여 스스로의 일상과 소비, 라이프스타일의 변화를 이끌고 있습니다.
            </p>
            <hr class="space">
        </div>
        <div class="title-wrapper" id="middle">
            <h2 class="title">수상자<br>선정</h2>
            <p class="text">
                우리는 모두 각자의 자리에서 작년 한 해 의미 있는 성과를 이루었습니다. 남들이 가지 않은 새로운 분야를 개척해 내기도 하고, 수많은 지지로 메이커를 성장시키기도 하며, 마음을
                다한 소통으로 서로의 믿음직한 조력자가 되기도 합니다. <br>
                그러기에 마지막 순간까지 아쉽게 선정되지 못한 메이커와 서포터들을 대표할 수 있는, 많은 사람이 공감할 성과를 이룬 수상자를 선정하기 위해 더욱 노력하고 있습니다.
            </p>
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
        </div>
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
    <jsp:include page="../component/footer.jsp"></jsp:include>
</body>
</html>