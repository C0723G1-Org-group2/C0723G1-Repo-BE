package com.example.booklibrary.repository;

import com.example.booklibrary.model.Book;

import java.util.List;

public interface IUserRepository {
    public List<Book> getAll();
    public List<Book> sortPublish();
    public List<Book> sortNewBook();
}
