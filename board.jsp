<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="loginOutCheck" value="${pageContext.request.session.getAttribute('id') == null? 'Login' : 'Logout'}"/>
<c:set var="loginOutLink" value="${pageContext.request.session.getAttribute('id') == null? '/login/login' : '/login/logout'}"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>

<link rel="preconnect" href="https://fonts.googleapis.com" />

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
        href="https://fonts.googleapis.com/css2?family=M+PLUS+1p:wght@100;400&display=swap"
        rel="stylesheet"
/>
<link
        href="https://fonts.googleapis.com/css2?family=Lexend+Deca:wght@700&display=swap"
        rel="stylesheet"
/>
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
        href="https://fonts.googleapis.com/css2?family=Kosugi&display=swap"
        rel="stylesheet"
/>
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
        href="https://fonts.googleapis.com/css2?family=M+PLUS+2:wght@500&display=swap"
        rel="stylesheet"
/>
<link
        rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/destyle.css@1.0.15/destyle.css"
/>
<link
        href="https://fonts.googleapis.com/css2?family=Lobster&display=swap"
        rel="stylesheet"
/>

<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
        href="https://fonts.googleapis.com/css2?family=BIZ+UDPGothic:wght@700&display=swap"
        rel="stylesheet"
/>
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
        href="https://fonts.googleapis.com/css2?family=Sono:wght@600&display=swap"
        rel="stylesheet"
/>
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
        href="https://fonts.googleapis.com/css2?family=M+PLUS+1p:wght@700&display=swap"
        rel="stylesheet"
/>
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
        href="https://fonts.googleapis.com/css2?family=M+PLUS+1p:wght@700&display=swap"
        rel="stylesheet"
/>
<link rel="stylesheet" href="<c:url value='/css/main-style.css?after'/>">

<!-- 폰트 마지막 추가 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Varela+Round&display=swap" rel="stylesheet">
<%--    <link rel="stylesheet" href="<c:url value='/css/main-style'/>">--%>
<!-- jquery -->
<script src="https://code.jquery.com/jquery-1.11.3.js"></script>
<style>

    .main input {
        width: 100%;
        height: 35px;
        margin: 5px 0px 10px 0px;
        border: 1px solid #e9e8e8;
        padding: 8px;
        background: #f8f8f8;
        outline-color: #e6e6e6;
    }
    .main textarea {
        width: 100%;
        background: #f8f8f8;
        margin: 5px 0px 10px 0px;
        border: 1px solid #e9e8e8;
        resize: none;
        padding: 8px;
        outline-color: #e6e6e6;
    }

    .btn {
        background-color: rgb(236, 236, 236); /* Blue background */
        border: none; /* Remove borders */
        color: black; /* White text */
        padding: 6px 12px; /* Some padding */
        font-size: 16px; /* Set a font size */
        cursor: pointer; /* Mouse pointer on hover */
        border-radius: 5px;
    }
    .btn:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
<script>
    let msg = "${msg}";
    if(msg == "WRT_ERR") alert("登録を失敗しました。再度試して下さい。")
    if(msg == "LOGOUT") alert("ログアウトしました！")
</script>
<header class="header">
    <!--/*ようこそのbox作る*/-->
    <div class="header-top">
        <div class="welcome-box">
            <div class="welcome">
                <p style="font-family: 'M PLUS 2', sans-serif">
                    ${loginId}${userName}
                </p>
            </div>
        </div>
    </div>
    <div class="inner">
        <ul class="treebox">
            <a href="<c:url value='/'/>">
            <li class="logo">
                <span class="N">N</span>
                <span class="C">C</span>
                <span class="inside">inside</span>
            </li>
            </a>
            <li class="search">
                <div class="search-box">
                    &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" placeholder="検索する言葉を入れて下さい"/>
                    <button>
                        <img
                                src="../img/searchmark.png"
                                style="width: 40px; height: 40px"
                                alt=""
                                srcset=""
                        />
                    </button>
                </div>
            </li>
            <li class="Other-Funtion">
                <ul>
                    <li>
                        <a href="#">
                            <center>
                                <img src="../img/mypage.png" alt="" / width="25px"
                                height="25px">
                            </center>
                            <p style="margin-top: 5px">MyPage</p></a
                        >
                    </li>

                    <li>
                        <a href="<c:url value='${loginOutLink}'/>">
                            <center>
                                <img src="../img/login.png" alt="" / width="25px"
                                height="25px" class="img">
                            </center>
                            <p style="margin-top: 5px">${loginOutCheck}</p></a
                        >
                    </li>
                    <li>
                        <a href="#">
                            <center>
                                <img src="../img/bookmark2.png" alt="" / width="25px"
                                height="25px">
                            </center>
                            <p style="margin-top: 5px">BookMark</p></a
                        >
                    </li>
                    <li>
                        <a href="#">
                            <center>
                                <img src="../img/help.png" alt="" / width="25px"
                                height="25px">
                            </center>
                            <p style="margin-top: 5px">Help</p>
                        </a>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
</header>
<nav class="nav">
    <div class="container">
        <div class="container-box">
            <ul>
                <li><a href="<c:url value='/board/list?typeNo=1'/>">IT</a></li>
                <li><a href="<c:url value='/board/list?typeNo=2'/>">GAME</a></li>
                <li><a href="<c:url value='/board/list?typeNo=3'/>">FUNNY</a></li>
                <li><a href="<c:url value='/board/list?typeNo=4'/>">FOOD</a></li>
                <li><a href="<c:url value='/board/list?typeNo=5'/>">JLPT</a></li>
                <br/>
                <li><a href="<c:url value='/board/list?typeNo=6'/>">ANIMATION</a></li>
                <li><a href="<c:url value='/board/list?typeNo=7'/>">DRAMA</a></li>
                <li><a href="<c:url value='/board/list?typeNo=8'/>">COFFEE</a></li>
                <li><a href="<c:url value='/board/list?typeNo=9'/>">SOCCER</a></li>
                <li><a href="#">MORE</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="inner">
<div class="main">
<%--<h2 class="writing-header">掲示物を${mode=="new"? "書く":"見る"}</h2>--%>
<%--<h2>ビュー：${boardDto.view_cnt}</h2>--%>
    <form action="" id="form">
        <div style="display: block">
            <div style="margin: 16px 0 29px; padding-bottom: 11px;">
                <h3 style="padding: 0 2px; margin-bottom: 15px; font-size: 18px; font-weight: bold; background-color: white">
                    <input type="text" placeholder="タイトルを書いて下さい" name="title" value="${boardDto.title}" ${mode == "new" ? '' : 'readonly="readonly"'}> <br>
                </h3>
                    <c:choose>
                        <c:when test="${mode!='new'}">
                            <div style="height: 30px">
                                <div class="fl" style="float:left; font-size: 18px; margin: 6px 5px">${boardDto.writer} |
                                        <fmt:formatDate value="${boardDto.reg_date}" pattern="yyyy.MM.dd HH:mm:ss" type="BOTH"/></td> </div>
                                <div class="fr" style="float:right; font-size: 18px"> ビュー  ${boardDto.view_cnt}<span style="color: gray"> &nbsp;&nbsp;|&nbsp;&nbsp;</span>
                                    <span class="cmtCnt">コメント ${boardDto.comment_cnt}</span>
                                </div>
                            </div>
                        </c:when>
    <%--                    <c:otherwise>--%>
    <%--                    </c:otherwise>--%>
                    </c:choose>
            </div>
        </div>
        <input type="hidden" name="bno" value="${boardDto.bno}" readonly="readonly">
        <textarea name="content" placeholder="内容を書いて下さい" id="" cols="30" rows="10" ${mode == "new"? '' : 'readonly="readonly"'}>${boardDto.content}</textarea>
        <button type="button" id="writeBtn" class="btn">登録</button>
        <button type="button" id="modifyBtn" class="btn">修正</button>
        <button type="button" id="removeBtn" class="btn">削除</button>
        <button type="button" id="listBtn" class="btn">リスト</button>
        <input type="hidden" name="typeNo"/>
    </form>



    <c:choose>
        <c:when test="${mode!='new'}">
            <div class="first">
                <div class="fl">
                    コメント&nbsp;&nbsp;<span style="color: red">${boardDto.comment_cnt}</span> &nbsp;個
                </div>
            </div>

            <div class="second">
                <div class="third">
                    <div class="cmtContainer">
                        ${pageContext.request.session.getAttribute('id')}
                        <textarea class="txtBox" placeholder="コメントを残してみて下さい"></textarea>
                    </div>
                    <div style="position: relative;">
                        <div style="float: right;">
                            <button id="regBtn" class="regBtn">登録</button>
                        </div>
                    </div>
                </div>

            </div>
        </c:when>
    </c:choose>
</div>
<script>
    $(document).ready(function (){  // main()

        $('#modifyBtn').on("click",function () {
            let form = $("#form");
            let isReadonly = $("input[name=title]").attr('readonly');
            // 1. 読むモードだっだら、修正モードに変更
            if(isReadonly == 'readonly') {
                $(".writing-header").html("掲示物修正");
                $("input[name=title]").attr('readonly', false);
                $("textarea").attr('readonly', false);
                $("#modifyBtn").html("<i class='fa fa-pencil'></i> 修正して登録");
                return
            }
            // 2. 修正モードだっだら、修正した内容をサーバに伝送
            form.attr("action", "<c:url value='/board/modify?page=${page}&pageSize=${pageSize}&typeNo=${typeNo}'/>");
            form.attr("method", "post");
            form.submit();
        });

        $('#listBtn').on("click",function (){
           location.href= "<c:url value='/board/list'/>?page=${page}&pageSize=${pageSize}&typeNo=${typeNo}";
        });

        $('#writeBtn').on("click",function (){
            let form = $('#form');
            form.attr("action","<c:url value='/board/write'/>?page=${page}&pageSize=${pageSize}&typeNo=${typeNo}");
            form.attr("method","post");
            form.submit();
        });

        $('#removeBtn').on("click",function (){
            if(!confirm("本当に削除しますか？")) return;
            let form = $('#form');
            form.attr("action", "<c:url value='/board/remove'/>?page=${page}&pageSize=${pageSize}&typeNo=${typeNo}");
            form.attr("method","post");
            form.submit();
        });

        $('#regBtn').on("click",function (){
           if(${pageContext.request.session.getAttribute('id') == null}){
            alert("ログインして下さい！")
           }
        });
    });
</script>
</div>
</body>
</html>
