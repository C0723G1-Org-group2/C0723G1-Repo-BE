package com.example.booklibrary.service.impl;

import com.example.booklibrary.model.Book;
import com.example.booklibrary.repository.IUserRepository;
import com.example.booklibrary.repository.impl.UserRepository;
import com.example.booklibrary.service.IUserService;

import java.util.List;

public class UserService implements IUserService {
    private final IUserRepository userRepository = new UserRepository();
    @Override
    public List<Book> getAll() {
        return userRepository.getAll();
    }
    public List<Book> sortPublish(){
        return userRepository.sortPublish();
    }

    @Override
    public List<Book> sortNewBook() {
        return userRepository.sortNewBook();
    }
}
