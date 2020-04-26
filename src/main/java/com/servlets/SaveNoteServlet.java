package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Notes;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class SaveNoteServlet
 */
public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			
			Notes n = new Notes(title, content, new Date());
			
			
			Session s = FactoryProvider.getFactory().openSession();
			Transaction tx = s.beginTransaction();
			
			s.save(n);
			
			tx.commit();
			s.close();
			
			
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<h1 style='text-align:center'>Note added successfully</h1>");
			out.println("<h1 style='text-align:center'><a href='AllNotes.jsp'>View All Notes</a></h1>");
			
			
			
			
//			System.out.print(n.getId()+":"+n.getTitle());
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}

}
