<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="EUC-KR"%>

<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>

<html>

<head>

<title>������� �Է���</title>

<style type="text/css">

a {text-decoration: none; }

</style>

<script type="text/javascript">

var resultMsg = '${resultMsg}';

if(resultMsg=='added') {

	alert('������� ���� ����');

	location.href="empList";

}



</script>

</head>

<body>

������� �Է���<br>

<s:form action="empAdd" theme="simple"><br>

 �� �� <s:textfield name="empno"/><br>

 �� �� <s:textfield name="ename"/><br>

 �� �� <s:textfield name="deptno"/><br>

 �� �� <s:textfield name="job"/><br>

 <s:submit/> <s:reset/> [<s:a href="empList.do">����Ʈ ������</s:a>]

</s:form>

</body>

</html>

