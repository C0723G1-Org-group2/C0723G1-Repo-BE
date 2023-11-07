package com.example.booklibrary.repository.impl;

import com.example.booklibrary.model.BookType;
import com.example.booklibrary.repository.IBookTypeRepository;
import com.example.booklibrary.util.BaseRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookTypeRepositoryImpl implements IBookTypeRepository {
    private final String SELECT_BOOKTYPE = "select * from book_type bt join book b on b.book_type_id = bt.book_type_id  where b.book_type_id = ?;";
    private final String GET_ALL = "select * from book_type";
    public List<BookType> getAll(){
       
        List<BookType> bookTypeList = new ArrayList<>();
        try {
            Connection connection = BaseRepository.getConnectDB();
            PreparedStatement preparedStatement = connection.prepareStatement(GET_ALL);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int book_type_id = resultSet.getInt("book_type_id");
                String book_type_name = resultSet.getString("book_type_name");
                BookType bookType1 = new BookType(book_type_id,book_type_name);
                bookTypeList.add(bookType1);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return bookTypeList;
    }
    @Override
    public BookType selectBookType(int id) {
        BookType bookType = null;
       
        try {
            Connection connection = BaseRepository.getConnectDB();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_BOOKTYPE);
            preparedStatement.setInt(1,id);
            ResultSet rs  = preparedStatement.executeQuery();
            while (rs.next()){
                int book_type_id = rs.getInt("book_type_id");
                String book_type_name = rs.getString("book_type_name");
                bookType = new BookType(book_type_id,book_type_name);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return bookType;
    }
}
