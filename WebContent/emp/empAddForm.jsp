<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="EUC-KR"%>

<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>

<html>

<head>

<title>사원정보 입력폼</title>

<style type="text/css">

a {text-decoration: none; }

</style>

<script type="text/javascript">

var resultMsg = '${resultMsg}';

if(resultMsg=='added') {

	alert('사원정보 저장 성공');

	location.href="empList";

}



</script>

</head>

<body>

사원정보 입력폼<br>

<s:form action="empAdd" theme="simple"><br>

 사 번 <s:textfield name="empno"/><br>

 이 름 <s:textfield name="ename"/><br>

 부 서 <s:textfield name="deptno"/><br>

 직 무 <s:textfield name="job"/><br>

 <s:submit/> <s:reset/> [<s:a href="empList.do">리스트 페이지</s:a>]

</s:form>

</body>

</html>

