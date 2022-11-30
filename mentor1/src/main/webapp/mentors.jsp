<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("email");
String driver = "org.sqlite.JDBC";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "test";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<!DOCTYPE html>
<html>
<body>
    <h1>Courses List</h1>
<table border="1">
<tr>
<td>course name</td>
<td>course detail</td>
<td>mentor</td>


</tr>
<%

try{
connection = DriverManager.getConnection("jdbc:sqlite:mentor.db");
statement=connection.createStatement();
String sql ="select * from courses";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("c_name") %></td>
<td><%=resultSet.getString("c_detail") %></td>
<td><%=resultSet.getString("email") %></td>





</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table> 

</body>
</html>