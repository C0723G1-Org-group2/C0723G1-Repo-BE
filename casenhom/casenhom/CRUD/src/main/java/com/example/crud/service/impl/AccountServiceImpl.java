package com.example.crud.service.impl;

import com.example.crud.model.Account;
import com.example.crud.repository.IAccountRepo;
import com.example.crud.repository.impl.AccountRepoImpl;
import com.example.crud.service.IAccountService;

public class AccountServiceImpl implements IAccountService {
    private final IAccountRepo accountRepo = new AccountRepoImpl();
    @Override
    public Account findById(int id) {
        return accountRepo.findById(id);
    }
}
