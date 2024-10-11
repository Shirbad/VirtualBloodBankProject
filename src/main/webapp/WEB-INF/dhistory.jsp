<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List,in.softronix.entity.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blood Donation History</title>
    <style>
        .container {
            padding: 10px;
            border-radius: 5px;
            border: 2px solid #a92020;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            width: 270px;
            margin: 0 auto;
            background-color: #edecec;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            background-color: white;
        }
        th, td {
            padding: 8px;
            border: 1px solid #a92020;
            text-align: left;
        }
        th {
            background-color: #a92020;
            color: white;
        }
    </style>
</head>
<body>
<% List<dateofdonate> list=(List)request.getSession().getAttribute("list"); %>


    <div class="container">
    <form action="dhistory" method="post">
     <input type="hidden" name="yourid" value="${yourId}" />
        <center><h3>Blood Donated Date</h3>
        <table></center>
            <tr>
                <th>Last Donated Date</th>
                <th>BloodBank ID</th>
            </tr>
          
                <tr>
                    <td><%=list.get(0).getDod() %></td>
                    <td><%=list.get(0).getBloodbankid() %></td>
                </tr>
           
        </table>
        </form>
    </div>
</body>
</html>
