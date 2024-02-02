package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.BookDAOImpl;
import com.DAO.CartDAOImpl;
import com.DB.DBConnect;
import com.entity.Book_Dtls;
import com.entity.Cart;

@WebServlet("/cart")
public class CartServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		try {
			int bid=Integer.parseInt(req.getParameter("bid"));
			int uid=Integer.parseInt(req.getParameter("uid"));
			
			BookDAOImpl dao =new BookDAOImpl(DBConnect.getConn());
			Book_Dtls b = dao.getBookById(bid);
			
			Cart c = new Cart();
			c.setBid(bid);
			c.setUserId(uid);
			c.setBookName(b.getBookname());
			c.setAuthor(b.getAuthor());
			c.setPrice(b.getPrice());
			c.setTotalPrice(b.getPrice());
			
			CartDAOImpl dao1 = new CartDAOImpl(DBConnect.getConn());
			boolean f = dao1.addCart(c);
			
			HttpSession session = req.getSession();
			
			if(f) {
				session.setAttribute("addCart", "Book Added to cart");
				resp.sendRedirect("all_new_book.jsp");
			} else {
				session.setAttribute("failed", "something wrong on server");
				resp.sendRedirect("all_new_book.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		

	}
	
	
	
}
