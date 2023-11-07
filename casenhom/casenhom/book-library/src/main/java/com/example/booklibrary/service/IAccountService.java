package com.example.booklibrary.service;

import com.example.booklibrary.model.Account;

import java.util.List;

public interface IAccountService {
    Account findById(int id);
    Account findByUsername(String username);
    Account findByUsernameAndPassWord(String username,String password);

    List<Account> findAll();
    Boolean createAccount(Account account);
}
