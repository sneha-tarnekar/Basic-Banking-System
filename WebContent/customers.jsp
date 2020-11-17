<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.tsf.include.Config"%>
<%@page import="org.tsf.model.Customers"%>
<%@page import="java.util.Collection"%>
	
	<div style="height: 100vh;" id="viewcustomers" class="row">
	<div class="col-md-6">
			<table  width="100%" class="table table-striped">
				<tr class="thead-dark">
					<th>ID</th>
					<th>Name</th>
					<th>Email</th>
					<th>Balance</th>
					<th>Action</th>
				</tr>
				<%
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bankingsystem", "root", "");
			
				Statement smt=con.createStatement();
				ResultSet rs=smt.executeQuery("select * from customers where status=1");
			
				Config.personMap.clear();
				while(rs.next())//valid username & password
				{
				
			%>
			<tr>
				<th><%=rs.getInt("id")%></th>
				<th><%=rs.getString("name")%></th>
				<th><%=rs.getString("email")%></th>
				<th><%=rs.getInt("balance")%></th>
				<th class="btn btn-link"><a id="<%=rs.getString("name")+"&"+rs.getString("email")+"&"+rs.getInt("balance")%>" class="viewrecord" style="color:olive;" >View</a></th>
			</tr>
			<%
			}	//loop close
			rs.close();
			smt.close();
			con.close();
			%>
			</table>
		</div>
		<div class="col-md-6">
		<form method="post">
			<input type="hidden" id="page" name="page" value="TransferPage"/>
				<div class="container">
					
			   		<div class="viewdata">
			   			<div class="col-md-6" >Name</div>
			   			<div class="col-md-6"><input type="text" class="form-control"  id="name"  name="name" /></div>
			   		</div> 
		
					<div class="viewdata">
			   			<div class="col-md-6">Email Id</div>
			   			<div class="col-md-6"><input type="text" class="form-control" id="email" name="email" /></div>
			   		</div> 
			   		
			   		<div class="viewdata">
			   			<div class="col-md-6">Balance(&#8377;)</div>
			   			<div class="col-md-6"><input type="text" class="form-control" id="balance" name="balance" /></div>
			   		</div> 
			   	</div>
		</form>
		</div>
	</div>
	