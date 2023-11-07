package com.example.booklibrary.repository;

import com.example.booklibrary.model.Account;

import java.util.List;

public interface IAccountRepository {
    Account findById(int id);
    List<Account> findAll();
    Boolean createAccount(Account account);
    Account findByUsername(String username);

    Account findByUsernameAndPassWord(String username, String password);
}
