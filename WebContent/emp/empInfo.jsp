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

	if(confirm('사번 '+empno+'의 사원정보를 정말로 삭제하시겠어요?')) {

		location.href = deleteActionUrl;

	}

}

</script>

<script type="text/javascript">

var resultMsg = '${resultMsg}';

if(resultMsg=='deleted'){

	alert('사원정보 삭제 성공');

	location.href='empList.do';

}

</script>

</head>

<body>



<table>

<tr><th>사 번</th><th>이 름</th><th>부 서</th><th>직 무</th></tr>

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

[<s:a href="%{modifyFormUrl}">수 정</s:a>]



<s:url id="deleteUrl" action="empDelete">

	<s:param name="empno" value="empInfo.empno"/>

</s:url>

[<s:a href="javascript:confirmDelete('%{deleteUrl}')">삭 제</s:a>]

[<s:a href="empList.do"> 리스트 페이지</s:a>]

</body>

</html>


