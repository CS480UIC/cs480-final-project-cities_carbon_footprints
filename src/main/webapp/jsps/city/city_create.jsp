<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>city Create</title>
    
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
  <h1>Create a city</h1>
<form action="<c:url value='/CityServletCreate'/>" method="post">
	CityName:	<input type="text" name="CityName" value="${form.CityName }"/>
	<span style="color: red; font-weight: 900">${errors.CityName }</span>
	<br/>
	Population：	<input type="text" name="Population" value="${form.Population }"/>
	<span style="color: red; font-weight: 900">${errors.password }</span>
	<br/>
	MostUsedTransportation：	<input type="text" name="MostUsedTransportation" value="${form.MostUsedTransportation }"/>
	<span style="color: red; font-weight: 900">${errors.MostUsedTransportation }</span>
	<br/>
	NumberOfFactories：	<input type="text" name="NumberOfFactories" value="${form.NumberOfFactories }"/>
	<span style="color: red; font-weight: 900">${errors.NumberOfFactories }</span>
	<br/>
	CityDate：	<input type="text" name="CityDate" value="${form.CityDate }"/>
	<span style="color: red; font-weight: 900">${errors.CityDate }</span>
	<br/>
	<input type="submit" value="Create a city"/>
</form>
  </body>
</html>
