package com.example.booklibrary.repository.impl;

import com.example.booklibrary.model.Book;
import com.example.booklibrary.repository.IBookRepository;
import com.example.booklibrary.util.BaseRepository;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookRepositoryImpl implements IBookRepository {
    private static final String INSERT_BOOK_SQL = "insert into book(book_name,publish_year,image,book_intro,author_id , book_type_id ,book_quantity) values(?,?,?,?,?,?,?)";
    private static final String SELECT_ALL_BOOK = "select * from book";
    private static final String DELETE_BOOK = "delete from book where book_id = ? ";
    private static final String UPDATE_BOOK = "update book set book_name = ? , publish_year = ? , image = ? , book_intro = ? , book_quantity = ? where book_id = ?";
    private static final String SELECT_BOOK = "select book_id , book_name , publish_year , image , book_intro ,author_id,book_type_id, book_quantity from book b\n" +
            "where book_id = ?;";
    private static final String SEARCH_BY_NAME = "select * from book where book_name like ?";

    @Override
    public void insertBook(Book book) throws RuntimeException {
       
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_BOOK_SQL);
            preparedStatement.setString(1,book.getBookName());
            preparedStatement.setInt(2,book.getPublishYear());
            preparedStatement.setString(3,book.getImg());
            preparedStatement.setString(4,book.getBook_intro());
            preparedStatement.setInt(5,book.getAuthorId());
            preparedStatement.setInt(6,book.getBookTypeId());
            preparedStatement.setInt(7,book.getBook_quantity());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public boolean deleteBook(int book_id) {
        boolean rowDeleted;
       
        try {
            Connection connection = BaseRepository.getConnectDB();
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_BOOK);
            preparedStatement.setInt(1,book_id);
            rowDeleted = preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return rowDeleted;
    }

    @Override
    public void updateBook(Book book) {
       
        try {
            Connection connection = BaseRepository.getConnectDB();
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_BOOK);
            preparedStatement.setString(1,book.getBookName());
            preparedStatement.setInt(2,book.getPublishYear());
            preparedStatement.setString(3,book.getImg());
            preparedStatement.setString(4,book.getBook_intro());
            preparedStatement.setInt(5,book.getBook_quantity());
            preparedStatement.setInt(6,book.getBookId());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


    }

    @Override
    public void searchBook(int id) {

    }

    @Override
    public List<Book> sortBook() {
        return null;
    }

    @Override
    public List<Book> getAll() {
   
    List<Book> bookList = new ArrayList<>();
    try {
        Connection connection = BaseRepository.getConnectDB();
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

    @Override
    public Book selectBook(int id) {
        Book book = null;
       
        try {
            Connection connection = BaseRepository.getConnectDB();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_BOOK);
            preparedStatement.setInt(1,id);
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
            book = new Book(book_id,book_name,publish_year,image,book_intro,author_id,book_type_id,book_quantity);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return book;
    }

    @Override
    public List<Book> searchBookByName(String book_name) {
       
        List<Book> bookList = new ArrayList<>();
        try {
            Connection connection = BaseRepository.getConnectDB();
            PreparedStatement preparedStatement = connection.prepareStatement(SEARCH_BY_NAME);
            preparedStatement.setString(1,"%" + book_name + "%");
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()){
                int book_id = rs.getInt("book_id");
                String bookName = rs.getString("book_name");
                int publish_year = rs.getInt("publish_year");
                String img = rs.getString("image");
                String book_intro = rs.getString("book_intro");
                int book_quantity = rs.getInt("book_quantity");
                Book book = new Book(book_id,book_name,publish_year,img,book_intro,book_quantity);
                bookList.add(book);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return bookList;
    }
}
