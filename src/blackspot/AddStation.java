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
 * Servlet implementation class AddStation
 */
public class AddStation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddStation() {
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
		String StationName = request.getParameter("StationName");
		String Paddress = request.getParameter("Paddress");
		int Pcontact=Integer.parseInt(request.getParameter("Pcontact"));
		String Pmail = request.getParameter("Pmail");
		String Ppassword = request.getParameter("Ppassword");
		Connection con = DBconnect.connect();
		PreparedStatement pstmt;
		try{
			pstmt=con.prepareStatement("insert into policestation values(?,?,?,?,?,?)");
			pstmt.setInt(1,0);
			pstmt.setString(2,StationName);
			pstmt.setString(3,Paddress);
			pstmt.setInt(4,Pcontact);
			pstmt.setString(5,Pmail);
			pstmt.setString(6,Ppassword);
			int i=pstmt.executeUpdate();
			if(i>0)
			{
				response.sendRedirect("Success.html");
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
