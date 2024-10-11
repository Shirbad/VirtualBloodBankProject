<%@page import="in.softronix.entity.dateofdonate"%>
<%@page import="java.util.List"%>
<%@page import="in.softronix.entity.donorregister"%>
<%@page import="in.softronix.entity.bloodbank"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Results</title>
    <style>
        .container {
            padding: 10px;
            border-radius: 5px;
            border: 2px solid #a92020;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            width: 60%;
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
    <div class="container">
        <center><h2>Blood Availability</h2></center>
        <table>
            <tr>
                <th>Blood Bank ID
                
                
                </th>
                <th>District
                        
                </th>
                <th>No of Packets</th>
            </tr>
            
            
           <tr>
           <td>
           
           
           
           <p> <%=(String)session.getAttribute("list1") %></p>
           
                     </td>
                     
           <td> 
           <% 
           String dist=" ";
                           List<donorregister> list1=(List<donorregister>)session.getAttribute("list");
            for(int i=0;i<list1.size();i++)
                {
                	
                	if(list1.get(i).getBloodgroup().toString().equals((String)session.getAttribute("bg"))
                			&& list1.get(i).getDistrict().toString().equals((String)session.getAttribute("district"))
                			&& list1.get(i).getRh().toString().equals((String)session.getAttribute("rh")))
                	{
                		dist=(String)session.getAttribute("district");
                		
                	}
                }
            %>
           <p> <%=dist %></p>
           
                     </td>
                 
       <td>
        <%
                int count1=0;
                List<donorregister> list=(List<donorregister>)session.getAttribute("list");
                
                
                for(int i=0;i<list.size();i++)
                {
                	
                	if(list.get(i).getBloodgroup().toString().equals((String)session.getAttribute("bg"))
                			&& list.get(i).getDistrict().toString().equals((String)session.getAttribute("district"))
                			&& list.get(i).getRh().toString().equals((String)session.getAttribute("rh")))
                	{
                		count1++;
                	}
                }
                %>
                
                <p><%=count1 %></p>
       
       </td>
           </tr> 
            
        </table>
    </div>
</body>
</html>