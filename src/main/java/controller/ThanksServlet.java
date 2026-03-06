package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ContactBean;

@WebServlet("/contact/thanks")

public class ThanksServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
		
		request.setCharacterEncoding("UTF-8");
		
		//値の取得
		String name = request.getParameter("name");
		String email = request.getParameter("email_address");
		String sex = request.getParameter("sex");
		String []cates = request.getParameterValues("cates");
		String pref = request.getParameter("pref");
		String msg = request.getParameter("msg");
				
		// Beanに格納
		ContactBean contact= new ContactBean();
		contact.setName(name);
		contact.setEmailAddress(email);
		contact.setSex(sex);
		contact.setCates(cates);
		contact.setPref(pref);
		contact.setMessage(msg);
		
		//jspに送る
		request.setAttribute("contact", contact);
		
		// フォワード（画面に移す）
    	RequestDispatcher dispatcher =
    	        request.getRequestDispatcher("/WEB-INF/jsp/thanks.jsp");

    	dispatcher.forward(request, response);
	}
}
