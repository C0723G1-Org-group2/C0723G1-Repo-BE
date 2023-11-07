package com.example.home.service.impl;

import com.example.home.model.Book;
import com.example.home.repository.IBookRepository;
import com.example.home.repository.impl.BookRepository;
import com.example.home.service.IBookService;

import java.util.List;

public class BookService implements IBookService {
    private final IBookRepository bookRepository = new BookRepository();

    @Override
    public List<Book> getAll() {
        return bookRepository.getAll();
    }

}
