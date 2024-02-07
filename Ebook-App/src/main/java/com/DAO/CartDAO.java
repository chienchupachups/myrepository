package com.DAO;

import java.util.List;

import com.entity.Book_Dtls;
import com.entity.Cart;

public interface CartDAO {
	public boolean addCart(Cart c);
	
	public List<Cart> getBookByUser(int userId);
	
	public boolean removeBook(int bid,int uid ,int cid);
}
