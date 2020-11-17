package org.tsf.controller;

import java.io.IOException;



import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.tsf.include.Config;
import org.tsf.model.Customers;

public class MainController extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		service(req, resp);
	}
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		service(req, resp);
	}
	
	@Override
	public void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter out = resp.getWriter();
		resp.setContentType("text/html");
		
		RequestDispatcher rd= null;
		try
		{
			String pageName=req.getParameter("page");
			if(pageName.equalsIgnoreCase("TransferPage"))
			{
				String transferFrom=req.getParameter("transferfrom");
				String transferTo=req.getParameter("transferto");
				String amount=req.getParameter("amount");
				
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bankingsystem", "root", "");
		
			Statement smt=con.createStatement();
			ResultSet rs=smt.executeQuery("select * from customers where status=1");
		
			Config.personMap.clear();
			while(rs.next())//valid username & password
			{
				int id=rs.getInt("id");
				String name=rs.getString("name");
				String email=rs.getString("email");
				int balance=rs.getInt("balance");
				
				Customers customer=new Customers();
				customer.setId(id);
				customer.setName(name);
				customer.setEmail(email);
				customer.setBalance(balance);
				customer.setStatus(1);
				
				Config.personMap.put(email, customer);
			}	// while loop close
			
				if(transferFrom.equalsIgnoreCase("Select...")||transferTo.equalsIgnoreCase("Select..."))
				{
					out.print("<h2>Please select Id to Transfer Amount</h2>");
				}
				else if(transferFrom.equalsIgnoreCase(transferTo))
				{
					out.print("<h2>Sender and Recipient should not be same</h2>");
				}
				else
				{
					smt.execute("update customers set balance=balance-"+amount+" where id="+transferFrom);
					smt.execute("update customers set balance=balance+"+amount+" where id="+transferTo);
					
					
					rs.close();
					smt.close();
					con.close();
					
					rd=req.getRequestDispatcher("response.jsp");
					rd.include(req, resp);
				}
			}
			
		}//try
		catch(Exception ex)
		{
			out.println("<h1>"+ex+"</h1>");
		}//catch
	}
}
