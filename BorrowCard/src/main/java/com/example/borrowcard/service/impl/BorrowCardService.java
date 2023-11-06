package com.example.borrowcard.service.impl;

import com.example.borrowcard.model.BorrowCard;
import com.example.borrowcard.model.BorrowCardDOT;
import com.example.borrowcard.repository.IBorrowCardRepo;
import com.example.borrowcard.repository.impl.BorrowCardRepo;
import com.example.borrowcard.service.IBorrowCardService;

import java.sql.SQLException;
import java.util.List;

public class BorrowCardService implements IBorrowCardService {
    private final IBorrowCardRepo borrowCardRepo = new BorrowCardRepo();

    @Override
    public boolean insertBorrowCard(BorrowCard borrowCard) throws SQLException {
        return borrowCardRepo.insertBorrowCard(borrowCard);
    }

    @Override
    public BorrowCard selectBorrowCard(int id) {
        return borrowCardRepo.selectBorrowCard(id);
    }

    @Override
    public List<BorrowCardDOT> selectAllBorrowCard() {
        return borrowCardRepo.selectAllBorrowCard();
    }

    @Override
    public boolean deleteBorrowCard(int id) throws SQLException {
        return borrowCardRepo.deleteBorrowCard(id);
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
