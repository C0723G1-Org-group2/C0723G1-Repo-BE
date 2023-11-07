package com.example.home.repository.impl;

import com.example.home.model.Book;
import com.example.home.repository.IBookRepository;
import com.example.home.util.BaseRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookRepository implements IBookRepository {
    private String SELECT_ALL_BOOK = "select * from book";

    @Override
    public List<Book> getAll() {
        BaseRepository baseRepository = new BaseRepository();
        List<Book> bookList = new ArrayList<>();
        try {
            Connection connection = baseRepository.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_BOOK);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()){
                int book_id = rs.getInt("book_id");
                String book_name = rs.getString("book_name");
                int publish_year = rs.getInt("publish_year");
                String image = rs.getString("image");
                String book_intro = rs.getString("book_intro");
                int author_id = rs.getInt("author_id");
                int book_type_id = rs.getInt("book_type_id");
                int book_quantity = rs.getInt("book_quantity");
                bookList.add(new Book(book_id,book_name,publish_year,image,book_intro,author_id,book_type_id,book_quantity));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return bookList;
    }
}
