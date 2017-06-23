package controller;

import java.io.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		
		String uname =request.getParameter("uname");
		String password =request.getParameter("passwd");
		
		//Creating a Model Object
		model.LoginDetail login=new model.LoginDetail();
		login.setUname(uname);
		login.setPasswd(password);
		
		
		//RequestDispatcher dispatch;
		//Excuting the Bussiness Method
		if(login.isVaildLogin())
		{
			//Now it has to dispatch to the Sucess.jsp
			
			RequestDispatcher dispatch=request.getRequestDispatcher("Success.jsp");
			dispatch.forward(request,response);
		}
		
		
		else
		{
			//Now it has to dispatch to the Failure.jsp
			RequestDispatcher disptach=request.getRequestDispatcher("Failure.jsp");
			disptach.forward(request,response);
			
		}
		
	}


	
}
