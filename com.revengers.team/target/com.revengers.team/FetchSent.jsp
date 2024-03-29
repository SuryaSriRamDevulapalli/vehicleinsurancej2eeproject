<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.revengers.team.encapsulated.InsuranceEntityEmail" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sent Emails</title>
<style>
.bottom-bar {
    background-color: wheat;
    height: 70px;
    width: 100%;
    position: fixed;
    bottom: 0;
    left: 0;
}
header{
background-color: wheat;
color: #7b312d;
font-weight: bold;
margin-top:  0;
margin-bottom: 0;
padding: 20px;
font-size: 45px;
text-shadow: 2px 2px 4px  rgba(0, 0, 0, 0.5); 
display: flex;
align-items: center; 
justify-content: center;
box-shadow: 2px 2px 4px rgba(0, 0, 0, 1.5);
}
header img {
  margin-right: 20px;
  height: 70px;
}
body{
margin: 0;
padding: 0;
background-color: #7b312d;
font-family: Arial, sans-serif;
}
 th, td {
border: 3px solid #7b312d;
padding: 8px;
color:black;
text-align: left;
} 
table{
width: 100%;
margin-top: 10px;
border-collapse: collapse;
color: wheat;

} 
form {
max-width: 1300px;
margin: 20px auto;
padding: 20px;
background-color: wheat;
border-radius: 10px;
box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}
input{
border: 1px solid white;
}
</style>
<body>
<header>
    <img src="https://ih1.redbubble.net/image.457170105.5964/st,small,507x507-pad,600x600,f8f8f8.jpg" alt="">
    REVENGERS VEHICLE INSURANCE
</header>
</style>
</head>
<body>
    <h3 align="center" style="margin-top: 20px; color: wheat; font-size: 25px">Your Sent Emails!!</h3>
   <form>
    <table>
        <tr>
            <th>Recipient</th>
            <th>Subject</th>
            <th>Message</th>
            <th>Sent On</th>
        </tr>
        <%
        Object obj = session.getAttribute("FetchSent");
        if(obj == null){
        	out.print("No recors found");
        }
        else{
        	List<InsuranceEntityEmail> entity = (ArrayList<InsuranceEntityEmail>) obj;
        for(InsuranceEntityEmail s:entity){
        %>
           <tr>
           <td><%=s.getRecipient() %></td>
           <td><%=s.getSubject() %></td>
           <td><%=s.getMessage() %></td>
           <td><%=s.getTimestamp_column() %>
           </tr>
           <%} } %>
    </table>
    </form>


<div class="bottom-bar">
<button onclick="window.location.href='mailbox.jsp';"style="font-size: 15px; padding: 10px 20px; background-color: #7b312d; color: wheat; border: none; border-radius: 5px; cursor: pointer;">Back to MailBox</button>
</div>      
</body>
</html>
