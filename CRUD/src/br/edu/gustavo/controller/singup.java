package br.edu.gustavo.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.gustavo.model.DAO;

/**
 * Servlet implementation class singup
 */
@WebServlet("/singup")
public class singup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public singup() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		request.getRequestDispatcher("/jsp/singup.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {
			DAO dao = new DAO();
			
			String user = request.getParameter("name");
			String password = request.getParameter("password");
			String ConfirmPassword = request.getParameter("ConfirmPassword");

			if (password.equals(ConfirmPassword))
			{
				/** user created **/
				dao.createUser(user, password);
				request.setAttribute("user", user);
				request.getRequestDispatcher("jsp/tasks.jsp").forward(request,response);
			}
			
			if (!password.equals(ConfirmPassword))
			{
				request.setAttribute("message", "Passwords must be equal!");
				request.getRequestDispatcher("/jsp/singup.jsp").forward(request, response);
			}
			
		} catch (ClassNotFoundException | SQLException e) { e.printStackTrace(); }
	}

}
