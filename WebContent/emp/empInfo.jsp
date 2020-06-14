<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="EUC-KR"%>

<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>

<html>

<head>

<title>empInfo.jsp</title>

<style type="text/css">

th {border-bottom: double; background-color:lightblue;}

td {border-bottom: dotted;}

a {text-decoration: none; }

</style>

<script type="text/javascript">

function confirmDelete(deleteActionUrl){

	var empno = ${empInfo.empno};

	if(confirm('��� '+empno+'�� ��������� ������ �����Ͻðھ��?')) {

		location.href = deleteActionUrl;

	}

}

</script>

<script type="text/javascript">

var resultMsg = '${resultMsg}';

if(resultMsg=='deleted'){

	alert('������� ���� ����');

	location.href='empList.do';

}

</script>

</head>

<body>



<table>

<tr><th>�� ��</th><th>�� ��</th><th>�� ��</th><th>�� ��</th></tr>

	<tr>

	<td><s:property value="empInfo.empno"/></td>

	<td><s:property value="empInfo.ename"/></td>

	<td><s:property value="empInfo.deptno"/></td>

	<td><s:property value="empInfo.job"/></td>

	</tr>

</table>

<p>

<s:url id="modifyFormUrl" action="empModifyForm">

	<s:param name="empno" value="empInfo.empno"/>

</s:url>

[<s:a href="%{modifyFormUrl}">�� ��</s:a>]



<s:url id="deleteUrl" action="empDelete">

	<s:param name="empno" value="empInfo.empno"/>

</s:url>

[<s:a href="javascript:confirmDelete('%{deleteUrl}')">�� ��</s:a>]

[<s:a href="empList.do"> ����Ʈ ������</s:a>]

</body>

</html>


