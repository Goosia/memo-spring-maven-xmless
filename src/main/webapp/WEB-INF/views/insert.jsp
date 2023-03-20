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
    <form id="insert" method="post" action="/memo">
        <table>
            <tr>
                <th>번호</th>
                <th>자동생성</th>
            </tr>
            <tr>
                <td class="huge-height">내용</td>
                <td>
                    <div class="container">
                        <textarea name="contents" class="text-area" placeholder="메모를 입력하세요."></textarea>
                    </div>
                </td>
            </tr>
        </table>
    </form>
    <div class="center">
        <button onclick="window.location='/'">목록</button>
        <button onclick="goInsert()">등록</button>
    </div>
</body>
<script type="text/javascript">

    function goInsert() {
        document.getElementById("insert").submit();
    }
</script>
</html>