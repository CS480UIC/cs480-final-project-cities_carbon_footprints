<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Read carbon_emission Output</title>
    
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
  <h1>Read carbon_emission Output</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form>
	VehicleEmissionPercent    :<input type="text" name="vehicleemissionpercent" value="${carbon_emission.vehicleemissionpercent }" disabled/>
	<br/>
	TransitEmissionPercent：<input type="text" name="transitemissionpercent" value="${carbon_emission.transitemissionpercent }" disabled/>
	<br/>
	FactoryEmissionPercent	：<input type="text" name="factoryemissionpercent" value="${carbon_emission.factoryemissionpercent }" disabled/>
	<br/>
	EmissionType	：<input type="text" name="emissiontype" value="${carbon_emission.emissiontype }" disabled/>
	<br/>
</form>

<button onclick="window.location.href='<c:url value='/jsps/main.jsp'/>'">Continue</button>
</body>
</html>
