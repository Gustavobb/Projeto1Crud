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
 * Servlet implementation class add
 */
@WebServlet("/add")
public class add extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String list;
	private String name;
	private String column;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public add() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		Object user = request.getParameter("user");
		Object day = request.getParameter("day");
		
		name = user.toString();
		list = request.getParameter("list");
		column = day.toString();
		
		request.setAttribute("user", name);
		request.getRequestDispatcher("/jsp/add.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try
		{	
			DAO dao = new DAO();
			
			if (list.length() != 0) { dao.updateColumn(list + " _ " + request.getParameter("workout"), name, column); }
			else { dao.updateColumn(request.getParameter("workout"), name, column); }
			request.setAttribute("user", name);
			request.getRequestDispatcher("jsp/tasks.jsp").forward(request,response);
			
		} catch (ClassNotFoundException | SQLException e) { e.printStackTrace(); }

	}

}
