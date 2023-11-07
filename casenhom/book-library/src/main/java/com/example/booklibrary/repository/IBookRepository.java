package com.example.booklibrary.repository;

import com.example.booklibrary.model.Book;

import java.util.List;

public interface IBookRepository {
    void insertBook(Book book);
    boolean deleteBook(int book_id);
    void updateBook(Book book);
    void searchBook(int id);
    List<Book> sortBook();
    List<Book> getAll();
    Book selectBook(int id);
    List<Book> searchBookByName(String book_name);
}
