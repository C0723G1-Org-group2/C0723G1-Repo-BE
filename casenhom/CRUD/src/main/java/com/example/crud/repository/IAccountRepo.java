package com.example.crud.repository;

import com.example.crud.model.Account;

public interface IAccountRepo {
    Account findById(int id);

}
