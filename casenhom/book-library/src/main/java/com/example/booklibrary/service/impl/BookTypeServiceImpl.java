package com.example.booklibrary.service.impl;

import com.example.booklibrary.model.BookType;
import com.example.booklibrary.repository.IBookTypeRepository;
import com.example.booklibrary.repository.impl.BookTypeRepositoryImpl;
import com.example.booklibrary.service.IBookTypeService;

import java.util.List;

public class BookTypeServiceImpl implements IBookTypeService {
    private final IBookTypeRepository bookTypeRepository = new BookTypeRepositoryImpl();
    @Override
    public BookType selectBookType(int id) {
        return bookTypeRepository.selectBookType(id);
    }

    @Override
    public List<BookType> getAll() {
        return bookTypeRepository.getAll();
    }

}
