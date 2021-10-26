<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Read vehicle Output</title>
    
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
  <h1>Read vehicle Output</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form>
	vehicleName:	<input type="text" name="vehicleName" value="${vehicle.vehicleName }" disabled/>
	<br/>
	Population：	<input type="text" name="Population" value="${vehicle.Population }" disabled/>
	<br/>
	MostUsedTransportation：	<input type="text" name="MostUsedTransportation" value="${vehicle.MostUsedTransportation }" disabled/>
	<br/>
	NumberOFactories：	<input type="text" name="NumberOFactories" value="${vehicle.NumberOFactories }" disabled/>
	<br/>
</form>

<button onclick="window.location.href='<c:url value='/jsps/main.jsp'/>'">Continue</button>
</body>
</html>
