<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        .searchNameList {
            border: solid 2px;
            height: 60px;
        }

        .searchNameList {
            border: solid 2px;
            height: 60px;
        }
    </style>
</head>
<body>
    <h1>
        ギャラリーリスト
    </h1>
        <ul>
            <c:set var="test" value="${list}"/>
            <c:forEach var="nameList" items="${list}">
                <li style="font-size: 25px">${nameList}</li>
            </c:forEach>
        </ul>
    <h1>
        内容に検索した言葉が入ってる掲示物
    </h1>
    <div class="searchContentList">
        <ul>
            <c:forEach var="contentList" items="${contentList}" varStatus="status">
                ${test}
                ${contentList.title}
                <li style="font-size: 25px">${contentList.content}</li>
            </c:forEach>
        </ul>
    </div>
</body>
</html>
