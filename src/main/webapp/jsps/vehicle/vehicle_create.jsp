<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>vehicle Create</title>
    
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
  <h1>Create a vehicle</h1>
<form action="<c:url value='/Entity1ServletCreate'/>" method="post">
	VehicleType:	<input type="text" name="VehicleType" value="${form.VehicleType }"/>
	<span style="color: red; font-weight: 900">${errors.VehicleType }</span>
	<br/>
	VehicleID：	<input type="text" name="VehicleID" value="${form.VehicleID }"/>
	<span style="color: red; font-weight: 900">${errors.VehicleID }</span>
	<br/>
	TotalMilesPerGallon：	<input type="text" name="TotalMilesPerGallon" value="${form.TotalMilesPerGallon }"/>
	<span style="color: red; font-weight: 900">${errors.TotalMilesPerGallon }</span>
	<br/>
	TotalNumberOfDrivers：	<input type="text" name="TotalNumberOfDrivers" value="${form.TotalNumberOfDrivers }"/>
	<span style="color: red; font-weight: 900">${errors.TotalNumberOfDrivers }</span>
	<br/>
	VehicleCity：	<input type="text" name="VehicleCity" value="${form.VehicleCity }"/>
	<span style="color: red; font-weight: 900">${errors.VehicleCity }</span>
	<br/>
	VehicleEmissionType：	<input type="text" name="VehicleEmissionType" value="${form.VehicleEmissionType }"/>
	<span style="color: red; font-weight: 900">${errors.VehicleEmissionType }</span>
	<br/>
	<input type="submit" value="Create a vehicle"/>
</form>
  </body>
</html>
