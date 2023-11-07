package com.example.booklibrary.repository.impl;

import com.example.booklibrary.model.Book;
import com.example.booklibrary.repository.IUserRepository;
import com.example.booklibrary.util.BaseRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserRepository implements IUserRepository {
    private final String GET_ALL = "select * from book";
    private final String SORT_PUBLISH_YEAR = "select * from book order by publish_year asc;";
    private final String SORT_NEW_BOOk = "select * from book order by book_id desc;";
    public List<Book> sortPublish(){
        List<Book> bookList = new ArrayList<>();
        try {
            Connection connection =  BaseRepository.getConnectDB();
            PreparedStatement preparedStatement = connection.prepareStatement(SORT_PUBLISH_YEAR);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()){{
                int book_id = rs.getInt("book_id");
                String book_name = rs.getString("book_name");
                int publish_year = rs.getInt("publish_year");
                String image = rs.getString("image");
                String book_intro = rs.getString("book_intro");
                int author_id = rs.getInt("author_id");
                int book_type_id = rs.getInt("book_type_id");
                int book_quantity = rs.getInt("book_quantity");
                bookList.add(new Book(book_id,book_name,publish_year,image,book_intro,author_id,book_type_id,book_quantity));
            }}
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return bookList;
    }
    public List<Book> sortNewBook(){
        List<Book> bookList = new ArrayList<>();
        try {
            Connection connection =  BaseRepository.getConnectDB();
            PreparedStatement preparedStatement = connection.prepareStatement(SORT_NEW_BOOk);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()){{
                int book_id = rs.getInt("book_id");
                String book_name = rs.getString("book_name");
                int publish_year = rs.getInt("publish_year");
                String image = rs.getString("image");
                String book_intro = rs.getString("book_intro");
                int author_id = rs.getInt("author_id");
                int book_type_id = rs.getInt("book_type_id");
                int book_quantity = rs.getInt("book_quantity");
                bookList.add(new Book(book_id,book_name,publish_year,image,book_intro,author_id,book_type_id,book_quantity));
            }}
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return bookList;
    }

    @Override
    public List<Book> getAll() {
        List<Book> bookList = null;
        try {
            Connection connection = BaseRepository.getConnectDB();
            PreparedStatement preparedStatement = connection.prepareStatement(GET_ALL);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()){{
                int book_id = rs.getInt("book_id");
                String book_name = rs.getString("book_name");
                int publish_year = rs.getInt("publish_year");
                String image = rs.getString("image");
                String book_intro = rs.getString("book_intro");
                int author_id = rs.getInt("author_id");
                int book_type_id = rs.getInt("book_type_id");
                int book_quantity = rs.getInt("book_quantity");
                bookList.add(new Book(book_id,book_name,publish_year,image,book_intro,author_id,book_type_id,book_quantity));
            }}

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return bookList;
    }
}
