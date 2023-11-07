package com.example.booklibrary.service.impl;

import com.example.booklibrary.model.Book;
import com.example.booklibrary.repository.IBookRepository;
import com.example.booklibrary.repository.impl.BookRepositoryImpl;
import com.example.booklibrary.service.IBookService;

import java.util.List;

public class BookServiceImpl implements IBookService {

    private final IBookRepository bookRepository = new BookRepositoryImpl();
    @Override
    public void insertBook(Book book) {
    bookRepository.insertBook(book);
    }

    @Override
    public boolean deleteBook(int book_id) {
        return bookRepository.deleteBook(book_id);
    }

    @Override
    public void updateBook(Book book) {
     bookRepository.updateBook(book);
    }

    @Override
    public void searchBook(int id) {
        bookRepository.searchBook(id);

    }

    @Override
    public List<Book> sortBook() {
        return bookRepository.sortBook();
    }

    @Override
    public List<Book> getAll() {
        return bookRepository.getAll();
    }
    public Book selectBook(int id){
        return bookRepository.selectBook(id);
    }

    @Override
    public List<Book> searchBookByName(String book_name) {
        return bookRepository.searchBookByName(book_name);
    }
}
