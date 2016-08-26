package acesso;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		//Instancia os usuarios
		Usuario usuario = new Usuario("admin", "admin");
		ArrayList<Usuario> usuarios = new ArrayList<Usuario>();
		usuarios.add(usuario);
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		//PrintWriter out = response.getWriter();
		
		//Valida
		boolean valido = false;
		for(int i=0; i<usuarios.size(); i++){
			if(usuarios.get(i).getUsername().equals(username)){
				if(usuarios.get(i).getPassword().equals(password)){
					valido = true;
				}
			}
		}
		
		String url = "fail.jsp";
		if(valido){
			url = "success.jsp";
		}
		
		request.setAttribute("username", username);
		request.setAttribute("password", password);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
