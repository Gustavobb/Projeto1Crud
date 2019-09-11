package br.edu.gustavo.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.List;

import br.edu.gustavo.model.DAO;

/**
 * Servlet implementation class del
 */
@WebServlet("/del")
public class del extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public del() {
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

			String workoutS = workout.toString();
			String listS = list.toString();
			String userS = user.toString();
			String dayS = day.toString();
			
			String[] workouts = listS.split(" _ ");
			List<String> wordList = new ArrayList<String>(Arrays.asList(workouts));  
			wordList.remove(workoutS);
			
			String update = String.join(" _ ", wordList);
			
			DAO dao = new DAO();
			dao.updateColumn(update, userS, dayS);
			request.setAttribute("user", userS);
			request.getRequestDispatcher("jsp/tasks.jsp").forward(request,response);
			
		} catch (ClassNotFoundException | SQLException e) { e.printStackTrace(); }
	}

}
