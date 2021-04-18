<%@page import="com.OrderService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%
if (request.getParameter("orderCode") != null) 
 { 
	 OrderService orderObj = new OrderService(); 
	 
 String stsMsg = orderObj.insertOrder(request.getParameter("orderCode"),
		 request.getParameter("orderType"),
		 request.getParameter("customerID"),
		 request.getParameter("customerName"),
		 request.getParameter("customerContact"),
		 request.getParameter("totalAmount"),
		 request.getParameter("cardNo"),
		 request.getParameter("expDate"),
		 request.getParameter("cvvNo"));

 } 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Management</title>
</head>
<body>
<h1>Order Management</h1>
<form method="post" action="order.jsp">
 Order code: <input name="orderCode" type="text"><br> 
 Order Type: <input name="orderType" type="text"><br> 
 Customer ID: <input name="customerID" type="text"><br> 
 Customer Name: <input name="customerName" type="text"><br> 
 customer Contact: <input name="customerContact" type="text"><br> 
 Total Amount: <input name="totalAmount" type="text"><br> 
 Bank Card No: <input name="cardNo" type="text"><br>
 Exp Date: <input name="expDate" type="text"><br> 
 Cvv No: <input name="cvvNo" type="text"><br> 
 <input name="btnSubmit" type="submit" value="Save">
</form>
<%
 out.print(session.getAttribute("statusMsg")); 
%> 
</body>
</html>
