<%@page import="in.softronix.entity.bloodgroupcount"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Check Stock</title>
<style>
.container {
    display: flex;
    justify-content: center;
    background-color: #edecec;
    padding: 10px;
    border-radius: 5px;
    border: 2px solid #a92020;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    width: 500px;
    margin: 0 auto;
}

table {
    width: 100%;
}

th, td {
    border: 1px solid black;
    padding: 8px;
    text-align: left;
}

th {
    background-color: #a92020;
    font-weight: bold;
    color: white;
}
</style>
</head>
<body>
<h2 style="text-align: center; color: black;">Blood Donate Date</h2>
<div class="container">
    <form action="checkstock" method="get">
        <div style="background-color: #f2f2f2; padding: 10px; border-radius: 5px;">
            <table>
                <tr>
                    <th>Blood Group</th>
                    <th>Available Bags</th>
                    <th>Issued Bags</th>
                    <th>Discarded Bags</th>
                </tr>
                <%  
                    List<bloodgroupcount> list = (List<bloodgroupcount>) session.getAttribute("list"); 
                    if (list != null && !list.isEmpty()) {
                        for (bloodgroupcount bgc : list) {
                %>
                <tr>
                    <td><%= bgc.getBloodgroup() + " " + bgc.getRh() %></td>
                    <td><%= bgc.getCount() %></td>
                    <td><%= bgc.getIssuedBags() %></td> 
                    <td></td> <!-- Add logic for discarded bags -->
                </tr>
                <% 
                        }
                    }
                %>
            </table>
        </div>
    </form>
</div>
</body>
</html>
