<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>public_transit Create</title>
    
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
  <h1>Create a public_transit</h1>
<form action="<c:url value='/PublicTransitServletCreate'/>" method="post">
	TransitType:	<input type="text" name="TransitType" value="${form.TransitType }"/>
	<span style="color: red; font-weight: 900">${errors.TransitType }</span>
	<br/>
	TransitEmissionType：	<input type="text" name="TransitEmissionType" value="${form.TransitEmissionType }"/>
	<span style="color: red; font-weight: 900">${errors.TransitEmissionType }</span>
	<br/>
	TotalUsage：	<input type="text" name="TotalUsage" value="${form.TotalUsage }"/>
	<span style="color: red; font-weight: 900">${errors.TotalUsage }</span>
	<br/>
	TransitCity：	<input type="text" name="TransitCity" value="${form.TransitCity }"/>
	<span style="color: red; font-weight: 900">${errors.TransitCity }</span>
	<br/>
	TransitDate：	<input type="text" name="TransitDate" value="${form.TransitDate }"/>
	<span style="color: red; font-weight: 900">${errors.TransitDate }</span>
	<br/>
	<input type="submit" value="Create a public_transit"/>
</form>
  </body>
</html>
