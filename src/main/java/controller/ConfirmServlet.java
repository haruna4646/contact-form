package controller;

import java.io.IOException;
import java.util.Arrays;
import java.util.stream.Collectors;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ContactBean;

@WebServlet("/contact/confirm")
public class ConfirmServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
    	request.setCharacterEncoding("UTF-8");

    	// フォームから送られた値を取得
    	String name = request.getParameter("name");
    	String email = request.getParameter("email_address");
    	String sex = request.getParameter("sex");
    	String[] selectedCates = request.getParameterValues("cates"); 
    	String pref = request.getParameter("pref");
    	String msg = request.getParameter("msg");

    	// 条件分岐（性別）
    	String sexDisplay;
    	if ("man".equals(sex)) {
    		sexDisplay = "男";
    	}else {
    		sexDisplay= "女";
    	}
   
    	// Bean にセット
    	ContactBean contact = new ContactBean();
    	contact.setName(name);
    	contact.setEmailAddress(email);
		contact.setSex(sexDisplay);
    	contact.setCates(selectedCates);
    	contact.setPref(pref);
    	contact.setMessage(msg);

    	// 配列ループ処理（お問い合わせ種別）
    	String catesHtml = "";
    	if (selectedCates != null) {
    	    catesHtml = Arrays.stream(selectedCates) //配列をループ処理できる形にしてる
    	    		.map(c -> {
                        switch(c) {
                            case "seihin": return "・製品について";
                            case "sa-bis": return "・サービスについて";
                            case "saiyou": return "・採用について";
                            case "sonota": return "・その他";
                            default: return "";
                        }
                    })
                    .collect(Collectors.joining("<br>"));
        }
        contact.setCatesHtml(catesHtml);

        request.setAttribute("contact", contact);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/confirm.jsp");
        dispatcher.forward(request, response);
    }
}
    	                    