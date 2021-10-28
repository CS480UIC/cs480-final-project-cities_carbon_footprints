<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Delete Factory</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <h1>Delete Factory</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form action="<c:url value='/FactoryServletDelete'/>" method="post">
	<input type="hidden" name="method" value="delete"/>
		<input type="hidden" name="factoryname" value="${factory.factoryname }"/>
	FactoryName    :<input type="text" name="factoryname" value="${factory.factoryname }" disabled/>
	<br/>
	
	FactoryCity：<input type="text" name="factorycity" value="${factory.factorycity }" disabled/>
	<br/>
	NumberOfEmployee	：<input type="text" name="numberofemployee" value="${factory.numberofemployee }" disabled/>
	<br/>
	FactoryID	：<input type="text" name="factoryid" value="${factory.factoryid }" disabled/>
	<br/>
	<input type="submit" value="Delete Factory"/>
</form>

</body>
</html>
