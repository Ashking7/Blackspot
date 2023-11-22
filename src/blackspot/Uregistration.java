package blackspot;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Uregistration
 */
public class Uregistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Uregistration() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String UName = request.getParameter("UName");
		String Umail = request.getParameter("Umail");
		int Umobile=Integer.parseInt(request.getParameter("Umobile"));
		String Upassword = request.getParameter("Upassword");
		String Ucity = request.getParameter("Ucity");
		Connection con = DBconnect.connect();
		PreparedStatement pstmt;
		try{
			pstmt=con.prepareStatement("insert into user values(?,?,?,?,?,?)");
			pstmt.setInt(1,0);
			pstmt.setString(2,UName);
			pstmt.setString(3,Umail);
			pstmt.setInt(4,Umobile);
			pstmt.setString(5,Upassword);
			pstmt.setString(6,Ucity);
			int i=pstmt.executeUpdate();
			if(i>0)
			{
				response.sendRedirect("CityBlackSpots.html");
			}
			else
			{
				response.sendRedirect("Fail.html");
			}
			
			
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
	}

	}

}
