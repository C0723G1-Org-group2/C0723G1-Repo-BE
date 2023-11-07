package com.example.booklibrary.repository.impl;

import com.example.booklibrary.model.Account;
import com.example.booklibrary.repository.IAccountRepository;
import com.example.booklibrary.util.BaseRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AccountRepoImpl implements IAccountRepository {
    private static final String SELECT_BY_ID ="SELECT * FROM ACCOUNT WHERE ID_ACCOUNT = ?";
    private static final String SELECT_BY_USERNAME ="SELECT * FROM ACCOUNT WHERE USERNAME = ?";
    private static final String SELECT_BY_USERNAME_AND_PASSWORD ="SELECT * FROM ACCOUNT WHERE USERNAME = ? AND PASSWORD = ?";
    private static final String SELECT_ALL = "select * from account";
    private static final String NEW_EMPLOYEE = "insert into account(username, password, type_account) " +
            "values(?,?,?);";

    @Override
    public Account findById(int id) {
    Connection connection = BaseRepository.getConnectDB();
        Account account = null;
        try{
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_BY_ID);
            preparedStatement.setInt(1,id);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()){
                int account_id = resultSet.getInt("id_account");
                String name = resultSet.getString("username");
                String pass=resultSet.getString("password");
                String type =resultSet.getString("type_account");
                account = new Account(account_id,name,pass,type);
            }
            preparedStatement.close();
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return account;
    }

    @Override
    public List<Account> findAll() {
        Connection connection = BaseRepository.getConnectDB();
        List<Account> list = new ArrayList<>();
        Account account = null;
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(SELECT_ALL);
            while (resultSet.next()){
                int id = resultSet.getInt("id_account");
                String username = resultSet.getString("username");
                String pass = resultSet.getString("password");
                String type = resultSet.getString("type_account");
                account = new Account(id,username,pass,type);
                list.add(account);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public Boolean createAccount(Account account) {
        Connection connection = BaseRepository.getConnectDB();
        int count = 0;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(NEW_EMPLOYEE);
            preparedStatement.setString(1,account.getName());
            preparedStatement.setString(2,account.getPassWord());
            preparedStatement.setString(3,account.getTypeAc());
            count = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return (count==1);
    }

    @Override
    public Account findByUsername(String username) {
        Connection connection = BaseRepository.getConnectDB();
        Account account = null;
        try{
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_BY_USERNAME);
            preparedStatement.setString(1,username);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()){
                int account_id = resultSet.getInt("id_account");
                String name = resultSet.getString("username");
                String pass=resultSet.getString("password");
                String type =resultSet.getString("type_account");
                account = new Account(account_id,name,pass,type);
            }
            preparedStatement.close();
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return account;
    }

    @Override
    public Account findByUsernameAndPassWord(String username, String password) {
        Connection connection = BaseRepository.getConnectDB();
        Account account = null;
        try{
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_BY_USERNAME_AND_PASSWORD);
            preparedStatement.setString(1,username);
            preparedStatement.setString(2,password);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()){
                int account_id = resultSet.getInt("id_account");
                String name = resultSet.getString("username");
                String pass=resultSet.getString("password");
                String type =resultSet.getString("type_account");
                account = new Account(account_id,name,pass,type);
            }
            preparedStatement.close();
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return account;    }
}
