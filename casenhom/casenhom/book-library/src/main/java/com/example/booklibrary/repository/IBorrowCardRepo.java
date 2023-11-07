package com.example.booklibrary.repository;

import com.example.booklibrary.dto.BorrowCardDOT;
import com.example.booklibrary.model.BorrowCard;

import java.sql.SQLException;
import java.util.List;

public interface IBorrowCardRepo {

    public boolean insertBorrowCard(BorrowCard borrowCard) throws SQLException;

    public BorrowCard selectBorrowCard(int id);

    public List<BorrowCardDOT> selectAllBorrowCard();

    public boolean deleteBorrowCard(int id) throws SQLException;

    public boolean updateBorrowCard(BorrowCard borrowCard) throws SQLException;

    List<BorrowCardDOT> searchByUsername(String country);
}
