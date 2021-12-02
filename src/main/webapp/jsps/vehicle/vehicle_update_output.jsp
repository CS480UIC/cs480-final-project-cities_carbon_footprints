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
	VehicleType:	<input type="text" name="VehicleType" value="${vehicle.vehicleType }" disabled/>
	<br/>
	VehicleEmissionType:	<input type="text" name="VehicleEmissionType" value="${vehicle.vehicleEmissionType }" disabled/>
	<br/>
	GasMileage:	<input type="text" name="GasMileage" value="${vehicle.gasMileage }" disabled/>
	<br/>
	VehicleCity:	<input type="text" name="VehicleName" value="${vehicle.vehicleCity }" disabled/>
	<br/>
	VehicleDate:	<input type="text" name="VehicleDate" value="${vehicle.vehicleDate }" disabled/>
	<br/>
</form>
<h1>Update the values below</h1>
<form action="<c:url value='/VehicleServletUpdate'/>" method="post">
		<input type="hidden" name="method" value="update"/>
				<input type="hidden" name="VehicleType" value="${vehicle.vehicleType }"/>
				<input type="hidden" name="method" value="update"/>
				<input type="hidden" name="VehicleEmissionType" value="${vehicle.vehicleEmissionType }"/>
	GasMileage:	<input type="text" name="GasMileage" value="${form.GasMileage }" />
	<br/>
	VehicleCity:	<input type="text" name="VehicleName" value="${form.VehicleCity }" />
	<br/>
	VehicleDate:	<input type="text" name="VehicleDate" value="${form.VehicleDate }" />
	<br/>
	<input type="submit" value="Update Vehicle"/>
</form>

</body>
</html>
