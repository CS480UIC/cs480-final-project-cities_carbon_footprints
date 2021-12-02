<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Delete city</title>
    
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
  <h1>Update city</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form>
	CityName:	<input type="text" name="CityName" value="${city.cityName }" disabled/>
	<br/>
	Population：	<input type="text" name="Population" value="${city.population }" disabled/>
	<br/>
	MostUsedTransportation：	<input type="text" name="MostUsedTransportation" value="${city.mostUsedTransportation }" disabled/>
	<br/>
	NumberOFactories：	<input type="text" name="NumberOFactories" value="${city.factoryNumber }" disabled/>
	<br/>
	CityDate：	<input type="text" name="NumberOFactories" value="${city.cityDate }" disabled/>
	<br/>
</form>
<h1>Update the values below</h1>
<form action="<c:url value='/CityServletUpdate'/>" method="post">
<input type="hidden" name="method" value="update"/>
				<input type="hidden" name="CityName" value="${city.cityName }"/>
	Population：	<input type="text" name="Population" value="${form.Population }"/>
	<br/>
	MostUsedTransportation：	<input type="text" name="MostUsedTransportation" value="${form.MostUsedTransportation }"/>
	<br/>
	NumberOFactories：	<input type="text" name="NumberOFactories" value="${form.FactoryNumber }"/>
	<br/>
	CityDate：	<input type="text" name="CityDate" value="${form.CityDate }"/>
	<br/>
	<input type="submit" value="Update City"/>
</form>

</body>
</html>
