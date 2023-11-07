package com.example.booklibrary.service.impl;

import com.example.booklibrary.model.Account;
import com.example.booklibrary.repository.IAccountRepository;
import com.example.booklibrary.repository.impl.AccountRepoImpl;
import com.example.booklibrary.service.IAccountService;

import java.util.List;

public class AccountService implements IAccountService {
    private final IAccountRepository accountRepository = new AccountRepoImpl();

    @Override
    public Account findById(int id) {
        return accountRepository.findById(id);
    }

    @Override
    public Account findByUsername(String username) {
        return accountRepository.findByUsername(username);
    }

    @Override
    public Account findByUsernameAndPassWord(String username, String password) {
        return accountRepository.findByUsernameAndPassWord(username,password);
    }

    @Override
    public List<Account> findAll() {
        return accountRepository.findAll();
    }

    @Override
    public Boolean createAccount(Account account) {
        return accountRepository.createAccount(account);
    }
}
