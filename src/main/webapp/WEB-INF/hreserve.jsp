<%@page import="java.util.List"%>
<%@page import="in.softronix.entity.bloodgroupcount"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Reserve Blood</title>
<style>
.container {
    display: flex;
    justify-content: space-between;
    background-color: #edecec;
    padding: 10px;
    border-radius: 5px;
    border: 2px solid #a92020;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    width: 600px;
    margin: 0 auto;
}

.left, .right {
    width: 48%;
}


.input {
    padding: 8px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    width: 70%;
    display: inline-block;
    height: 10px;
    font-size: 11px;
}

.label {
    display: inline-block;
    font-size: 14px;
}

#submit, #clear {
    background-color: #a92020;
    color: #fff;
    padding: 6px 16px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

#submit:hover, #clear:hover {
    background-color: #c80303;
}

.error {
    color: red;
    font-size: 12px;
    text-align: left;
}

.textarea {
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    width: 63%;
    display: inline-block;
    height: 15px;
}

#district, #bloodgroup {
    width: 73%;
    height: 7vh;
    font-size: 10px;
    align-items: center;
}

#font {
    font-size: 15px;
}

#bloodgroup {
    width: 75%;
}

table {
    width: 100%;
}

table, th, td {
    border-collapse: collapse;
    padding: 5px;
}
</style>
</head>
<body>

<h2 style="text-align: center; color: black;">Reserve Blood</h2>

<% if (request.getAttribute("error") != null) { %>
    <div class="error"><%= request.getAttribute("error") %></div>
<% } %>

<div class="container">
    <div class="right">
        <form action="reserve" method="post">
            <div style="background-color: #f2f2f2; padding: 10px; border-radius: 5px;">
                <table>
               
                    <tr>
                        <td><label class="label" for="hospital-id">hospital-id:</label></td>
                        <td><input class="input" type="text" name="hospital-id" id="hospital-id"></td>
                    </tr>
                    <tr>
                        <td><label class="label" for="bloodbank-id">bloodbank-id:</label></td>
                        <td><input class="input" type="text" name="bloodbank-id" id="bloodbank-id"></td>
                    </tr>
                    <tr>
                        <td><label class="label" for="bloodgroup">Blood Group:</label></td>
                        <td><select id="bloodgroup" name="bloodgroup">
                            <option value="A">A</option>
                            <option value="B">B</option>
                            <option value="AB">AB</option>
                            <option value="O">O</option>
                        </select></td>
                    </tr>
                    <tr>
                        <td><label class="label" for="RH">RH:</label></td>
                        <td>
                            <input type="radio" id="RH" name="RH" value="+Ve">
                            <label for="+Ve">+Ve</label>
                            <input type="radio" id="RH" name="RH" value="-Ve">
                            <label for="-Ve">-Ve</label>
                        </td>
                    </tr>
                    <tr>
                        <td><label class="label" for="reserve">Number of bags to reserve:</label></td>
                        <td><input class="input" type="number" name="reservebags" id="reservebags"></td>
                    </tr>
                    <tr>
                        <td><label class="label" for="date">Date:</label></td>
                        <td><input class="input" type="date" name="date" id="date"></td>
                    </tr>
                    
                    <tr>
                        <td><center> <input type="submit" value="Reserve"   id="submit"/></center> </td>
                    </tr>
                    
                </table>
            </div>
        </form>
    </div>
    <div class="left">
    <form>
        <div style="background-color: #f2f2f2; padding: 10px; border-radius: 5px;">
            <table>  
                <tr>  
                    <th>Blood Group</th>  
                    <th>Available Bags</th>  
                    <th>Issued Bags</th>  
                    <th>Discarded Bags</th>  
                </tr>  
                <%  
                    List<bloodgroupcount> list = (List<bloodgroupcount>) session.getAttribute("hreserveBloodCounts"); 
                    if (list != null && !list.isEmpty()) {
                        for (bloodgroupcount bgc : list) {
                %>
                <tr>  
                    <td><label class="label" for="<%= bgc.getBloodgroup() + bgc.getRh() %>"><%= bgc.getBloodgroup() + " " + bgc.getRh() %></label></td>  
                    <td><input class="input" type="text" name="<%= bgc.getBloodgroup() + bgc.getRh() %>" id="<%= bgc.getBloodgroup() + bgc.getRh() %>" value="<%= bgc.getCount() %>" readonly></td>  
 					<td><input class="input" type="text" name="<%= bgc.getBloodgroup() + bgc.getRh() + "Issued" %>" id="<%= bgc.getBloodgroup() + bgc.getRh() + "Issued" %>" value="<%= bgc.getIssuedBags() %>" readonly></td>
  
                    <td><input class="input" type="text" name="<%= bgc.getBloodgroup() + bgc.getRh() + "Discarded" %>" id="<%= bgc.getBloodgroup() + bgc.getRh() + "Discarded" %>" value="0"></td>  
                </tr>  
                <% 
                        }
                    }
                %>
            </table>
        </div>
    </form>
</div>

</div>


</body>
</html>