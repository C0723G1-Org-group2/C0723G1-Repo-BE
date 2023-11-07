package com.example.booklibrary.repository.impl;

import com.example.booklibrary.model.BorrowCard;
import com.example.booklibrary.dto.BorrowCardDOT;
import com.example.booklibrary.repository.IBorrowCardRepo;
import com.example.booklibrary.util.BaseRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BorrowCardRepo implements IBorrowCardRepo {
    private final String SELECT_ALL = "select bc.borrow_card_id, bc.start_date, bc.end_date, b.book_name, a.username" +
            "            from borrow_card bc" +
            "            join book b on b.book_id = bc.book_id" +
            "            join account a on a.id_account = bc.id_account;";

    private final String SELECT_BORROWCARD_BY_ID = "select * from borrow_card where borrow_card_id =?";
    private final String INSERT_INTO = "insert into borrow_card(start_date,end_date,book_id, id_account) values (?, ?, ?, ?);";
    private final String DELETE_BORROWCARD = "delete from borrow_card where borrow_card_id = ?;";
    @Override
    public boolean insertBorrowCard(BorrowCard borrowCard) throws SQLException {
        Connection connection = BaseRepository.getConnectDB();

        int count = 0;
        try {
            PreparedStatement preparedStatement = null;
            preparedStatement = connection.prepareStatement(INSERT_INTO);
            preparedStatement.setString(1, borrowCard.getStartDate());
            preparedStatement.setString(2, borrowCard.getEndDate());
            preparedStatement.setInt(3, borrowCard.getBookId());
            preparedStatement.setInt(4, borrowCard.getIdAccount());
            count = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return (count == 1);
    }

    @Override
    public BorrowCard selectBorrowCard(int id) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_BORROWCARD_BY_ID);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                String startDate = resultSet.getString("start_date");
                String endDate = resultSet.getString("end_date");
                int bookId = resultSet.getInt("book_id");
                int idAccount = resultSet.getInt("id_account");
                BorrowCard borrowCard = new BorrowCard(id, startDate, endDate, bookId, idAccount);
                return borrowCard;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    @Override
    public List<BorrowCardDOT> selectAllBorrowCard() {
        List<BorrowCardDOT> borrowCardDOTList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("borrow_card_id");
                String startDate = resultSet.getString("start_date");
                String endDate = resultSet.getString("end_date");
                String bookName = resultSet.getString("book_name");
                String userName = resultSet.getString("username");
                BorrowCardDOT borrowCardDOT = new BorrowCardDOT(id, startDate, endDate, bookName, userName);
                borrowCardDOTList.add(borrowCardDOT);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return borrowCardDOTList;
    }

    @Override
    public boolean deleteBorrowCard(int id) {
        int rowDelete = 0;
        Connection connection = BaseRepository.getConnectDB();
        try{
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_BORROWCARD);
            preparedStatement.setInt(1, id);
            rowDelete= preparedStatement.executeUpdate() ;
            if(rowDelete>0){
                return true;
            }else {
                return false;
            }
        } catch (SQLException e) {
            return false;
        }finally {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public boolean updateBorrowCard(BorrowCard borrowCard) throws SQLException {
        return false;
    }

    @Override
    public List<BorrowCardDOT> searchByUsername(String country) {
        return null;
    }
}
