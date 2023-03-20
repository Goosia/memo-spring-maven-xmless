<%--  Created by IntelliJ IDEA.
  User: Goosia
  Date: 2023-03-18
  Time: 오후 8:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link href="/css/main.css" rel="stylesheet">
    <title>메모장</title>
</head>
<body>
    <form id="update" method="post" action="/memo">
        <input type="hidden" name="_method" value="put">
        <input type="hidden" name="idx" value="${memo.idx}">
        <table>
            <tr>
                <th>번호</th>
                <th>${memo.idx}</th>
            </tr>
            <tr>
                <td class="huge-height">내용</td>
                <td>
                    <div class="container">
                        <textarea name="contents" class="text-area">${memo.contents}</textarea>
                    </div>
                </td>
            </tr>
        </table>
    </form>
    <div class="center">
        <button onclick="window.location='/'">목록</button>
        <button onclick="goUpdate()">수정</button>
        <button onclick="goDelete()">삭제</button>
    </div>
    <form id="delete" method="post" action="/memo/${memo.idx}">
        <input type="hidden" name="_method" value="put">
    </form>
</body>
<script type="text/javascript">

    function goUpdate() {
        document.getElementById("update").submit();
    }

    function goDelete() {
        document.getElementById("delete").submit();
    }
</script>
</html>