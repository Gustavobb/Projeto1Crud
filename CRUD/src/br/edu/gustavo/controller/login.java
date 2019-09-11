package br.edu.gustavo.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.gustavo.model.DAO;
import br.edu.gustavo.model.USERS;

/**
 * Servlet implementation class lServlet
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public login() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		request.getRequestDispatcher("/jsp/login.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			try {
				DAO dao = new DAO();
				
				USERS user = dao.getPassword(request.getParameter("name"));
				
				String password = request.getParameter("password");
				
				if (user.getPassword() == null) 
				{
					/** cadastra **/
					request.setAttribute("message", "You do not exist!");
					request.getRequestDispatcher("/jsp/login.jsp").forward(request, response);
				}
				
				else if (user.getPassword().equals(password))
				{
					/** entra **/
					request.setAttribute("user", user.getName());
					request.getRequestDispatcher("jsp/tasks.jsp").forward(request,response);
				}
				
				else
				{
					/** senha errada **/
					request.setAttribute("message", "Wrong password!");
					request.getRequestDispatcher("/jsp/login.jsp").forward(request, response);
				}
				
			} catch (ClassNotFoundException | SQLException e) { e.printStackTrace(); }
	}
}

