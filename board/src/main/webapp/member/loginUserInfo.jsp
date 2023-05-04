<%@page import="member.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="mMgr" class="member.MemberMgr" />

<!-- 로그인 체크 -->
<jsp:include page="../member/loginCheck.jsp">
  <jsp:param value="board" name="page" />
</jsp:include>

<%
String id = (String) session.getAttribute("idKey");
MemberBean loggedInUser = mMgr.getMember(id);
%>
<%
if (id != null) {
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/style.css?5" />
<title>Insert title here</title>
</head>
<body>
  <h2><%=loggedInUser.getName() + "님의 정보 조회 결과입니다."%></h2>
  <hr />
  <table cellpadding="2">
    <thead>
      <tr>
        <th>아이디</th>
        <th>패스워드</th>
        <th>성별</th>
        <th>생일</th>
        <th>이메일</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><%=loggedInUser.getId()%></td>
        <td><%=loggedInUser.getPwd()%></td>
        <td><%=loggedInUser.getName()%></td>
        <td><%=loggedInUser.getBirthday()%></td>
        <td><%=loggedInUser.getEmail()%></td>
      </tr>
    </tbody>
  </table>
</body>
</html>
<%
}
%>