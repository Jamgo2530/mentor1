/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.mentor1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author mahoor
 */
public class request extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet request</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet request at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
            try{ Class.forName("org.sqlite.JDBC");
	                      Connection con = DriverManager.getConnection("jdbc:sqlite:mentor.db");
	                       Statement stmt = null;
	                       stmt = con.createStatement(); 
       /* String sql = "CREATE TABLE request " +
                                   " ( email      TEXT , " + 
                                     "email1   TEXT   NOT NULL   ,"+
                                  
                              "c_name text )";
                                   
                      
                                        
                               stmt.executeUpdate(sql);
                               out.println("able ceate");*/
 String n=request.getParameter("email1");  
    String e=request.getParameter("email2"); 
     String s=request.getParameter("c-name"); 
          String m=request.getParameter("message"); 

   PreparedStatement ps=con.prepareStatement("insert into request values(?,?,?)");

ps.setString(1,n); 
out.println(n);
ps. setString(2,e); 

ps.setString(3,s);  

  ps.executeUpdate();
       out.println("<script type=\"text/javascript\">");
       out.println("alert('message sent');");
       out.println("</script>");
     response.sendRedirect("request.jsp");  

            
        }
            catch(Exception e1)
            {
                   out.println("e1")   ;    }
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
