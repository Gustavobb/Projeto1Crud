package br.edu.gustavo.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.gustavo.model.DAO;
import br.edu.gustavo.model.USERS;

/**
 * Servlet implementation class edit
 */
@WebServlet("/edit")
public class edit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public edit() {
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
		try
		{
			Object user = request.getParameter("user").toString();
			Object day = request.getParameter("day").toString();
			Object list = request.getParameter("list").toString();
			Object workout = request.getParameter("workout").toString();
			String replace = request.getParameter("workoute");


			String workoutS = workout.toString();
			String listS = list.toString();
			String userS = user.toString();
			String dayS = day.toString();
			
			String newValue = listS.replace(workoutS, replace);

			DAO dao = new DAO();
			dao.updateColumn(newValue, userS, dayS);
			request.setAttribute("user", userS);
			request.getRequestDispatcher("jsp/tasks.jsp").forward(request,response);
			
		} catch (ClassNotFoundException | SQLException e) { e.printStackTrace(); }
	}

}
