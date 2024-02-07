package com.DAO;

import java.util.List;

import com.entity.Book_Dtls;

public interface BookDAO {
	public boolean addBooks (Book_Dtls b);
	
	public List<Book_Dtls> getAllBooks();
	
	public Book_Dtls getBookById(int id);
	
	public boolean updateEditBooks (Book_Dtls b);
	
	public boolean deleteBooks(int id);
	
	public List<Book_Dtls> getNewBook();
	
	public List<Book_Dtls> getOldBook();
		
	public List<Book_Dtls> getRecentBook();
	
	public List<Book_Dtls> getAllRecentBook();

	public List<Book_Dtls> getAllNewBook();
	
	public List<Book_Dtls> getAllOldBook();
	
	public List<Book_Dtls> getBookByOld(String email,String cate);
	
	public boolean oldBookDelete(String email,String cate ,int id);
	
	public List<Book_Dtls> getBookBySearch(String ch);
}	
