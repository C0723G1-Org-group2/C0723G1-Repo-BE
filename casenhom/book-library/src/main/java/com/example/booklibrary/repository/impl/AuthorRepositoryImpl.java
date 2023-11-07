package com.example.booklibrary.repository.impl;

import com.example.booklibrary.model.Author;
import com.example.booklibrary.repository.IAuthorRepository;
import com.example.booklibrary.util.BaseRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AuthorRepositoryImpl implements IAuthorRepository {
   private static final String INSERT_AUTHOR = "insert into author (author_name) value(?);";
   private static final String SELECT_AUTHOR = "select * from author at join book b on b.author_id = at.author_id  where b.author_id = ?;";
   private static final String SELECT_AUTHOR_ID = "select author_id from author where author_name like ?;";
   private static final String GET_ALL = "select * from author";

   public List<Author> getAllAuthor(){
       List<Author> authorList = new ArrayList<>();
       try {
           Connection connection = BaseRepository.getConnectDB();
           PreparedStatement preparedStatement = connection.prepareStatement(GET_ALL);
           ResultSet rs = preparedStatement.executeQuery();
           while (rs.next()){
               int author_id = rs.getInt("author_id");
               String author_name = rs.getString("author_name");
               Author author = new Author(author_id,author_name);
               authorList.add(author);
           }
       } catch (SQLException e) {
           throw new RuntimeException(e);
       }
       return authorList;
   }

   public int selectAuthorId(String book_name){
      
       try {
           {
               Connection connection = BaseRepository.getConnectDB();
               PreparedStatement preparedStatement = connection.prepareStatement(SELECT_AUTHOR_ID);
               preparedStatement.setString(1,"%" + book_name + "%");
               ResultSet rs = preparedStatement.executeQuery();
               while (rs.next()){
                   int author_id = rs.getInt("author_id");
                   return author_id;
               }
           }
       } catch (SQLException e) {
           throw new RuntimeException(e);
       }
       return -1;
   }
    @Override
    public Author selectAuthor(int id) {
        Author author1 = null;
       
        try {
            Connection connection = BaseRepository.getConnectDB();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_AUTHOR);
            preparedStatement.setInt(1,id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int author_id = resultSet.getInt("author_id");
                String author_name = resultSet.getString("author_name");
                author1 = new Author(author_id,author_name);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return author1;
    }

    @Override
    public void insertAuthor(Author author) {
   
    Connection connection = BaseRepository.getConnectDB();
    try {
        PreparedStatement preparedStatement = connection.prepareStatement(INSERT_AUTHOR);
        preparedStatement.setString(1,author.getAuthor_name());
        preparedStatement.executeUpdate();
    } catch (SQLException e) {
        throw new RuntimeException(e);
    }
    }
}
