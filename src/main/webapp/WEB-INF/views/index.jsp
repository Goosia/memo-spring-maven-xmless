<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link href="/css/main.css" rel="stylesheet">
    <title>메모장</title>
</head>
<body>
<table>
    <tr>
        <th>id</th>
        <th>contents</th>
    </tr>
<c:forEach items="${memos}" var="memo">
    <tr onclick="window.location='/memo/${memo.idx}'">
        <td>${memo.idx}</td>
        <td>${memo.contents}</td>
    </tr>
</c:forEach>
</table>

<div class="center">
    <button onclick="window.location='/memo/insert'">등록</button>
</div>
</body>
</html>