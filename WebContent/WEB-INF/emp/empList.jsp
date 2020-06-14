<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="EUC-KR"%>

<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>

<html>

<head>

<title>empList.jsp</title>

<style type="text/css">

	th {border-bottom: double; background-color:lightblue;}

	td {border-bottom: dotted;}

	a {text-decoration: none; }

</style>

</head>

<body>

<table>

<tr><th>�� ��</th><th>�� ��</th><th>�� ��</th><th>�� ��</th></tr>

<s:iterator value="empList">

	<tr>

	<td><s:property value="empno"/></td>

	<s:url id="empInfoUrl" action="empInfo">

		<s:param name="empno"><s:property value="empno"/></s:param>

	</s:url>

	<td><s:a href="%{empInfoUrl}"><s:property value="ename"/></s:a></td>

	<td><s:property value="deptno"/></td>

	<td><s:property value="job"/></td>

	</tr>

</s:iterator>

</table>

<p>

[<s:a href="empAddForm">������� �߰�</s:a>]

</body>

</html>


