package com.example.booklibrary.service;

import com.example.booklibrary.model.Book;

import java.util.List;

public interface IBookService {
    public void insertBook(Book book);
    public boolean deleteBook(int book_id);
    public void updateBook(Book book);
    public void searchBook(int id);
    public List<Book> sortBook();
    public List<Book> getAll();
    public Book selectBook(int id);
    public List<Book> searchBookByName(String book_name);

}
