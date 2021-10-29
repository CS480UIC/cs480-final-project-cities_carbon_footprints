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
  <h1>Update carbon_emission</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form>
	EmissionType    :<input type="text" name="emissiontype1" value="${carbon_emission.emissiontype }" disabled/>
	<br/>
	VehicleEmissionPercent	：<input type="text" name="Vehicleemissionpercent1" value="${carbon_emission.vehicleemissionpercent }" disabled/>
	<br/>
	TransitEmissionPercent ：<input type="text" name="transitemissionpercent1" value="${carbon_emission.transitemissionpercent }" disabled />
	<br/>
	FactoryEmissionPercent	：<input type="text" name="factoryemissionpercent1" value="${carbon_emission.factoryemissionpercent }" disabled/>
	<br/>

</form>
<h1>Update the values below</h1>
<form action="<c:url value='/FactoryServletUpdate'/>" method="post">
		<input type="hidden" name="method" value="update"/>
				<input type="hidden" name="emissiontype" value="${carbon_emission.emissiontype }"/>
	VehicleEmissionPercent：<input type="text" name="Vehicleemissionpercent" value="${form.vehicleemissionpercent }"/>
	<span style="color: red; font-weight: 900">${errors.vehicleemissionpercent }</span>
	<br/>
	TransitEmissionPercent	：<input type="text" name="transitemissionpercent" value="${form.transitemissionpercent }"/>
	<span style="color: red; font-weight: 900">${errors.transitemissionpercent }</span>
	<br/>
	FactoryEmissionPercent	：<input type="text" name="factoryemissionpercent" value="${form.factoryemissionpercent }"/>
	<span style="color: red; font-weight: 900">${errors.factoryemissionpercent1 }</span>
	<br/>
	<input type="submit" value="Update carbon_emission"/>
</form>

</body>
</html>
