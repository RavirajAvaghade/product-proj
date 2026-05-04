<%@ page import="java.util.*,com.pack3.ProductBean" %>

<html>
<head>
<title>View Products</title>
</head>
<body>

<h2>Product List</h2>

<table border="1">
<tr>
<th>Name</th>
<th>ID</th>
<th>Quantity</th>
<th>Price</th>
</tr>

<%
ArrayList<ProductBean> list =
(ArrayList<ProductBean>)request.getAttribute("productList");

if(list != null){
for(ProductBean pb : list){
%>

<tr>
<td><%= pb.getPname() %></td>
<td><%= pb.getPid() %></td>
<td><%= pb.getQun() %></td>
<td><%= pb.getPrice() %></td>
</tr>

<%
}}
%>

</table>

</body>
</html>
