package com.example.booklibrary.service.impl;

import com.example.booklibrary.model.Author;
import com.example.booklibrary.repository.IAuthorRepository;
import com.example.booklibrary.repository.impl.AuthorRepositoryImpl;
import com.example.booklibrary.service.IAuthorService;

import java.util.List;

public class AuthorServiceImpl implements IAuthorService {
    private final IAuthorRepository authorRepository = new AuthorRepositoryImpl();
    @Override
    public Author selectAuthor(int id) {
        return authorRepository.selectAuthor(id);
    }
    public void insertAuthor(Author author){
        authorRepository.insertAuthor(author);
    }
    public int selectAuthorId(String book_name){
        return authorRepository.selectAuthorId(book_name);
    }
    public List<Author> getAllAuthor(){
        return authorRepository.getAllAuthor();
    }
}
