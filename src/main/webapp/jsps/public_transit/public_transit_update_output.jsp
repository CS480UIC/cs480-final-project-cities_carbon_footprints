<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Delete public_transit</title>
    
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
  <h1>Update public_transit</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form>
	TransitType:	<input type="text" name="TransitType" value="${pt.transitType }" disabled/>
	<br/>
	TransitEmissionType:	<input type="text" name="TransitEmissionType" value="${pt.transitEmissionType }" disabled/>
	<br/>
	TotalUsage:	<input type="text" name="TotalUsage" value="${pt.totalUsage }" disabled/>
	<br/>
	TransitCity:	<input type="text" name="TransitCity" value="${pt.transitCity }" disabled/>
	<br/>
	TransitDate:	<input type="text" name="TransitDate" value="${pt.transitDate }" disabled/>
	<br/>
</form>
<h1>Update the values below</h1>
<form action="<c:url value='/PublicTransitServletUpdate'/>" method="post">
		<input type="hidden" name="method" value="update"/>
				<input type="hidden" name="TransitType" value="${pt.transitType }"/>
				<input type="hidden" name="method" value="update"/>
				<input type="hidden" name="TransitEmissionType" value="${pt.transitEmissionType }"/>
				
	TotalUsage:	<input type="text" name="TotalUsage" value="${form.TotalUsage }"/>
	<br/>
	TransitCity:	<input type="text" name="TransitCity" value="${form.TransitCity }"/>
	<br/>
	TransitDate:	<input type="text" name="TransitDate" value="${form.TransitDate }"/>
	<br/>
	<input type="submit" value="Update Public Transit"/>
</form>

</body>
</html>
