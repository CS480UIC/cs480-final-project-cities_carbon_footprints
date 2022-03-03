<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Delete Factory</title>
    
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
  <h1>Update Factory</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form>
    FactoryID	：<input type="text" name="factoryid1" value="${factory.factoryid }" disabled/>
	<br/>
	FactoryName    :<input type="text" name="factoryname1" value="${factory.factoryname }" disabled/>
	<br/>
	
    FactoryCity：<input type="text" name="factorycity1" value="${factory.factorycity }" disabled />
	<br/>
	NumberOfEmployee	：<input type="text" name="numberofemployee1" value="${factory.numberofemployee }" disabled/>
	<br/>
	
</form>
<h1>Update the values below</h1>
<form action="<c:url value='/FactoryServletUpdate'/>" method="post">
		<input type="hidden" name="method" value="update"/>
				<input type="hidden" name="factoryid" value="${factory.factoryid }"/>
	FactoryName	：<input type="text" name="factoryname" value="${form.factoryname }"/>
	<span style="color: red; font-weight: 900">${errors.factoryname }</span>
	<br/>			
	FactoryCity：<input type="text" name="factorycity" value="${form.factorycity }"/>
	<span style="color: red; font-weight: 900">${errors.factorycity }</span>
	<br/>
	NumberOfEmployee	：<input type="text" name="numberofemployee" value="${form.numberofemployee }"/>
	<span style="color: red; font-weight: 900">${errors.numberofemployee }</span>
	<br/>
	
	<input type="submit" value="Update Factory"/>
</form>

</body>
</html>
