<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="EUC-KR"%>

<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>

<html>

<head>

<title>������� ���� ��</title>

<style type="text/css">

a {text-decoration: none; }

</style>

<script type="text/javascript">

var resultMsg = '${resultMsg}';

if(resultMsg=='updated'){

	alert('����������� ����');

	location.href="empList";

}

</script>

</head>

<body>

������� ���� ��<p>

<s:form action="empModify" theme="simple">

	<s:hidden name="empInfo.empno"/>

	�� ��:<s:property value="empInfo.empno"/><br>

	�� ��:<s:property value="empInfo.ename"/><br>

	�μ���ȣ:<s:textfield name="empInfo.deptno"/><br>

	�� ��<s:textfield name="empInfo.job"/><br>

	<s:submit value="�� ��"/> <s:reset/>

</s:form>

<p>

[<s:a href="empList">����Ʈ</s:a>]

</body>

</html>

