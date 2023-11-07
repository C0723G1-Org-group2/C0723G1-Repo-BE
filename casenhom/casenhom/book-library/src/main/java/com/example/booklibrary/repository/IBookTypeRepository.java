package com.example.booklibrary.repository;


import com.example.booklibrary.model.BookType;

import java.util.List;

public interface IBookTypeRepository {
    public BookType selectBookType(int id);
    public List<BookType> getAll();
}
