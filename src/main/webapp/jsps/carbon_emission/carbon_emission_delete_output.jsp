<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Delete carbon_emission</title>
    
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
  <h1>Delete carbon_emission</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form action="<c:url value='/carbon_emissionServletDelete'/>" method="post">
	<input type="hidden" name="method" value="delete"/>
		<input type="hidden" name="emissiontype" value="${carbon_emission.emissiontype }"/>
	 VehicleEmissionPercent  :<input type="text" name="vehicleemissionpercent" value="${carbon_emission.vehicleemissionpercent }" disabled/>
	<br/>
	
	TransitEmissionPercent：<input type="text" name="transitemissionpercent" value="${carbon_emission.vehicleemissionpercent }" disabled/>
	<br/>
	FactoryEmissionPercent	：<input type="text" name="factoryemissionpercent" value="${carbon_emission.factoryemissionpercent }" disabled/>
	<br/>
	EmissionType	：<input type="text" name="emissiontype" value="${carbon_emission.emissiontype }" disabled/>
	<br/>
	<input type="submit" value="Delete carbon_emission"/>
</form>

</body>
</html>