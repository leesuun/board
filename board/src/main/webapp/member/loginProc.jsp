<%@page import="member.MemberBean"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="mMgr" class="member.MemberMgr" />

<%
request.setCharacterEncoding("UTF-8");
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
String url = "login.jsp";
String msg = "로그인에 실패 하였습니다.";
/* System.out.println(pwd); */

boolean result = mMgr.loginMember(id, pwd);
if (result) {
	session.setAttribute("idKey", id);
	session.setAttribute("loggedInUserName", mMgr.getMember(id).getName());
  /* System.out.println(mMgr.getMember(id).getName()); */
	msg = "로그인에 성공 하였습니다.";
	
}
%>
<script>
	alert("<%=msg%>");	
	location.href="<%=url%>";
</script>