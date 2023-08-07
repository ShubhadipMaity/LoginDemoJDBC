package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LoginDemo")
public class LoginDemo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		PrintWriter out=response.getWriter();
        response.setContentType("text/html");
        
		String name=request.getParameter("name");
		String password=request.getParameter("pass");
		
		try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","1234");
            PreparedStatement ps=con.prepareStatement("select * from student where name=? and pass=?");
            ps.setString(1, name);
            ps.setString(2, password);
            
            ResultSet rs=ps.executeQuery();
            
            if(rs.next()) {
            	response.sendRedirect("welcome.jsp");
            }else {
            	response.sendRedirect("error.jsp");
            }
            

		}catch(Exception e) {
            e.printStackTrace();
		}
		
		
	}

}
