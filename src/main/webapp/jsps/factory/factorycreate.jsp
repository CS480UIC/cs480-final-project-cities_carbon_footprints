<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Factory Create</title>
    
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
  <h1>Factory Create</h1>
<form action="<c:url value='/factoryServletCreate'/>" method="post">
	FactoryID	：<input type="text" name="factoryid" value="${form.factoryid }"/>
	<span style="color: red; font-weight: 900">${errors.factoryid }</span>
	<br/>
	FactoryName    :<input type="text" name="factoryname" value="${form.factoryname }"/>
	<span style="color: red; font-weight: 900">${errors.factoryname }</span>
	<br/>
	FactoryCity：<input type="text" name="factorycity" value="${form.factorycity }"/>
	<span style="color: red; font-weight: 900">${errors.factorycity }</span>
	<br/>
	NumberOfEmployee	：<input type="text" name="numberofemployee" value="${form.numberofemployee }"/>
	<span style="color: red; font-weight: 900">${errors.numberofemployee }</span>
	<br/>
	
	<input type="submit" value="Create Factory"/>
</form>
  </body>
</html>
