<%@ page contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="mMgr" class="member.MemberMgr" />
<%
request.setCharacterEncoding("UTF-8");
String id = (String) session.getAttribute("idKey");
String name = null;

/* if (id != null) {
	name = mMgr.getMember(id).getName();
} */
%>
<html>
<head>
<title>로그인</title>
<link rel="stylesheet" href="../css/style.css?5" type="text/css">
<script type="text/javascript" src="../js/loginCheck.js"></script>
</head>
<body bgcolor="#ffffcc">
  <div align="center">
    <br /> <br />
    <%
    if (id != null) {
    %>
    <script >
    location.href= "../board/list.jsp";
    </script>
    <%
    } else {
    %>
    <form name="loginFrm" method="post" action="loginProc.jsp">
      <table>
        <tr>
          <td align="center" colspan="2">
            <h1>로그인</h1>
          </td>
        </tr>
        <tr>
          <td>아 이 디</td>
          <td>
            <input name="id">
          </td>
        </tr>
        <tr>
          <td>비밀번호</td>
          <td>
            <input type="password" name="pwd">
          </td>
        </tr>
        <tr>
          <td colspan="2">
            <div align="right">
              <input type="button" value="로그인" onclick="loginCheck()">
              &nbsp;
              <input type="button" value="회원가입"
                onClick="javascript:location.href='member.jsp'"
              >
            </div>
          </td>
        </tr>
      </table>
    </form>
    <%
    }
    %>
  </div>
</body>
</html>