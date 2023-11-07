package com.example.booklibrary.service;

import com.example.booklibrary.model.BookType;

import java.util.List;

public interface IBookTypeService {
    public BookType selectBookType(int id);
    public List<BookType> getAll();
}
