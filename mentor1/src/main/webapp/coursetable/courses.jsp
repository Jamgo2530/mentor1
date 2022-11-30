
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
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

<!doctype html>
<html lang="en">
  <head>
      <style>
          
          
          
      </style>
  	<title>Mentor</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="css/style.css">

	</head>
	<body>
            <section  class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">Course Detail</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					
					<div class="table-wrap">
						<table class="table">
					    <thead class="thead-primary">
					      <tr>
					        <th>Course name </th>
					        <th>Details</th>
					        
					      </tr>
					    </thead>
					    <tbody>
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
					       
					        <td><a href="#" class="btn btn-primary">Delete</a></td>
					      </tr>
					      <%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
					    </tbody>
					  </table>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>

	</body>
</html>

