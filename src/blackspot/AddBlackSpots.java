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
 * Servlet implementation class AddBlackSpots
 */
public class AddBlackSpots extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddBlackSpots() {
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
		String Lname = request.getParameter("Lname");
		String Baddress = request.getParameter("Baddress");
		String Reason=request.getParameter("Reason");
		String latitude = request.getParameter("latitude");
		String longitude = request.getParameter("longitude");
		String Level = request.getParameter("Level");
		String City = request.getParameter("City");
		Connection con = DBconnect.connect();
		PreparedStatement pstmt;
		try{
			pstmt=con.prepareStatement("insert into blackspot values(?,?,?,?,?,?,?)");
			pstmt.setString(1,Lname);
			pstmt.setString(2,Baddress);
			pstmt.setString(3,Reason);
			pstmt.setString(4,latitude);
			pstmt.setString(5,longitude);
			pstmt.setString(6,Level);
			pstmt.setString(7,City);
			int i=pstmt.executeUpdate();
			if(i>0)
			{
				
				response.sendRedirect("Psuccess.html");
				get.setCity(City);
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
