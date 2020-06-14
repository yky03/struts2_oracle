<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="EUC-KR"%>

<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>

<html>

<head>

<title>사원정보 수정 폼</title>

<style type="text/css">

a {text-decoration: none; }

</style>

<script type="text/javascript">

var resultMsg = '${resultMsg}';

if(resultMsg=='updated'){

	alert('사원정보수정 성공');

	location.href="empList";

}

</script>

</head>

<body>

사원정보 수정 폼<p>

<s:form action="empModify" theme="simple">

	<s:hidden name="empInfo.empno"/>

	사 번:<s:property value="empInfo.empno"/><br>

	이 름:<s:property value="empInfo.ename"/><br>

	부서번호:<s:textfield name="empInfo.deptno"/><br>

	직 무<s:textfield name="empInfo.job"/><br>

	<s:submit value="적 용"/> <s:reset/>

</s:form>

<p>

[<s:a href="empList">리스트</s:a>]

</body>

</html>

