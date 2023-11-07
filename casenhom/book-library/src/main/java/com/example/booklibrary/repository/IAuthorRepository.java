package com.example.booklibrary.repository;

import com.example.booklibrary.model.Author;

import java.util.List;

public interface IAuthorRepository {
    public Author selectAuthor(int id);
    public void insertAuthor(Author author);
    public int selectAuthorId(String book_name);
    public List<Author> getAllAuthor();
}
