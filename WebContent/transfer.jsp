
	
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.tsf.include.Config"%>
<%@page import="org.tsf.model.Customers"%>
<%@page import="java.util.Collection"%>
	
<div id="transfer" class="container">
		<form action="./main" method="post">
			<input type="hidden" id="page" name="page" value="TransferPage"/>
				<div class="container">
					<div >
			   			<div class="col-md-12">
			   				<p style="font-size: 40px;" class="title">Transfer Amount</p>
			   				<div class="col-md-6"><input type="hidden" id="personId" name="personId" class="form-control"/></div>
			   			</div>
			   		</div>
			   		
			   		
			   		
			   		<div style="padding: 12px;">
			   			<div class="col-md-6">Transfer from</div>
<!-- 			   			for combo box -->
			   			<div class="input-group mb-3">
						  <select class="custom-select" name="transferfrom" id="transferfrom">
						    <option selected>Select...</option>
						    <%
								Class.forName("com.mysql.jdbc.Driver");
								Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bankingsystem", "root", "");
							
								Statement smt=con.createStatement();
								ResultSet rs=smt.executeQuery("select * from customers where status=1");
							
								Config.personMap.clear();
								while(rs.next())//valid username & password
								{
									String email=rs.getString("email");
							%>
						    <option value="<%=rs.getInt("id")%>"><%=rs.getString("email")%></option>
						   <%
								}	//loop close
								rs.close();
								smt.close();
								con.close();
							%>
						  </select>
						</div>
					</div> 
		
					<div style="padding: 12px;">
			   			<div class="col-md-6">Transfer to</div>
<!-- 			   			for combo box -->
			   			<div class="input-group mb-3">	
						  <select class="custom-select" name="transferto" id="transferto">
						    <option selected>Select...</option>
						    <%
								Class.forName("com.mysql.jdbc.Driver");
								 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bankingsystem", "root", "");
							
								 smt=con.createStatement();
								 rs=smt.executeQuery("select * from customers where status=1");
							
								Config.personMap.clear();
								while(rs.next())//valid username & password
								{
									String email=rs.getString("email");
							%>
						    <option value="<%=rs.getInt("id")%>"><%=rs.getString("email")%></option>
						   <%
								}	//loop close
								rs.close();
								smt.close();
								con.close();
							%>
						  </select>
						</div>
			   		</div> 
			   		
			   		<div style="padding: 12px;">
			   			<div class="col-md-6">Amount(&#8377;)</div>
			   			<div><input type="text" class="form-control" id="amount" name="amount" placeholder="Amount to be transfered" required/></div>
			   		</div> 
			   		
					<div style="padding: 12px;">
			   			<div class="col-md-12">
			   				<input type="submit" id="b1" value="Proceed" class="btn btn-primary sm" title="Click to transfer amount"/>
			   				<input type="reset" id="b2" name="Reset" class="btn btn-primary sm" />
			   			</div>
			   		</div>
			   	</div>
		</form>
		</div>
	
