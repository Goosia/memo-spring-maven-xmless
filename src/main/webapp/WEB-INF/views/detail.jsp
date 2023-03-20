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
    <table>
        <tr>
            <th>번호</th>
            <th>${memo.idx}</th>
        </tr>
        <tr>
            <td class="huge-height">내용</td>
            <td>
                ${memo.contents}
            </td>
        </tr>
    </table>
    <div class="center">
        <button onclick="window.location='/'">목록</button>
        <button onclick="window.location='/memo/${memo.idx}/update'">수정</button>
        <button onclick="goDelete()">삭제</button>
    </div>
</body>
<script type="text/javascript">

    const form = document.createElement('form');
    form.setAttribute('method', 'post');
    form.setAttribute('action', '/memo/${memo.idx}');
    form.setAttribute('id', 'form');
    document.characterSet = 'utf-8';

    const input = document.createElement('input');
    input.setAttribute('type', 'hidden');
    input.setAttribute('name', '_method');
    input.setAttribute('value', 'delete');
    form.appendChild(input);
    document.body.appendChild(form);

    function goDelete() {
        form.submit();
    }
</script>
</html>