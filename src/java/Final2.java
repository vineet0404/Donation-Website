/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Vivek Singh
 */
import java.io.IOException;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("Final2.java")
public class Final2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public Final2() {
        super();
        // TODO Auto-generated constructor stub
    }


	public void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		String name=req.getParameter("name");
		req.setAttribute("name",name );
		
		
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		//Send an email to the user
		String fullname=req.getParameter("fullname");
		req.setAttribute("fullname",fullname );
		
		String amount=req.getParameter("amount");
		req.setAttribute("amount",amount );
		
		//get the email address from the session
		HttpSession session=req.getSession();  
                String name=(String) session.getAttribute("name"); 
        
		//email confirmation for food donation
		String emailBody="Thanks for your donation at Food Logistics INC. Your money will be used to help children who are in need.";
		
		String emailSubject="Donation Confirmation- Food Logistics INC.";
		
		String toEmailAddress=name;
		
		Mail.send("foodlogistics@gmail.com","XXXXXX",toEmailAddress,emailSubject,emailBody); 
		
		req.getRequestDispatcher("tymy.jsp").forward(req, res);
		
	}


}
