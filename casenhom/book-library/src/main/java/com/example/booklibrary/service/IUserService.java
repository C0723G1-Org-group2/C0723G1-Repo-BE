package com.example.booklibrary.service;

import com.example.booklibrary.model.Book;

import java.util.List;

public interface IUserService {
    public List<Book> getAll();
    public List<Book> sortPublish();
    public List<Book> sortNewBook();
}
