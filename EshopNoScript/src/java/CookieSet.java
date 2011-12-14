/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.*;


/**
 *
 * @author lalazari
 */

public class CookieSet extends HttpServlet {

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        String caffe = request.getParameter("cafeQuantity");
        if(caffe==null){
            caffe="0";
        
        }
        
        String sugarr = request.getParameter("sugarQuantity");
        if(sugarr==null){
            sugarr="0";
        
        }
        
        String waterr = request.getParameter("waterQuantity");
        if(waterr==null){
            waterr="0";
        
        }
        
        Cookie cafeCookie = new Cookie("cafeQuantity", caffe);
        cafeCookie.setMaxAge(15*60);
        response.addCookie(cafeCookie);
        
        
        Cookie sugarCookie = new Cookie("sugarQuantity", sugarr);
        sugarCookie.setMaxAge(15*60);
        response.addCookie(sugarCookie);
        
        Cookie waterCookie = new Cookie("waterQuantity", waterr);
        waterCookie.setMaxAge(15*60);
        response.addCookie(waterCookie);
        
        RequestDispatcher view = request.getRequestDispatcher("index.jsp");
        
        response.sendRedirect("index.jsp");
                
        
        
    }

   
    
}
