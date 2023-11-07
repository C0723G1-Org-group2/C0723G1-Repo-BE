package com.example.booklibrary.service;

import com.example.booklibrary.model.Author;

import java.util.List;

public interface IAuthorService {
    public Author selectAuthor(int id);
    public void insertAuthor(Author author);
    public int selectAuthorId(String book_name);
    public List<Author> getAllAuthor();
}
