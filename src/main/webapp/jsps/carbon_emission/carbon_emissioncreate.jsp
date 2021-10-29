<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>carbon_emission Create</title>
    
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
  <h1>carbon_emission Create</h1>
<form action="<c:url value='/carbon_emissionServletCreate'/>" method="post">
	EmissionType    :<input type="text" name="emissiontype" value="${form.emissiontype }"/>
	<span style="color: red; font-weight: 900">${errors.emissiontype }</span>
	<br/>
	VehicleEmissionPercent：<input type="text" name="vehicleemissionpercent" value="${form.vehicleemissionpercent }"/>
	<span style="color: red; font-weight: 900">${errors.vehicleemissionpercent }</span>
	<br/>
	TransitEmissionPercent	：<input type="text" name="transitemissionpercent" value="${form.transitemissionpercent }"/>
	<span style="color: red; font-weight: 900">${errors.transitemissionpercent }</span>
	<br/>
	FactoryEmissionPercent	：<input type="text" name="factoryemissionpercent" value="${form.factoryemissionpercent }"/>
	<span style="color: red; font-weight: 900">${errors.factoryemissionpercent }</span>
	<br/>
	<input type="submit" value="Create carbon_emission "/>
</form>
  </body>
</html>
