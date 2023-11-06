package com.example.borrowcard.model;

public class BorrowCard {
    private int id;
    private String startDate;
    private String endDate;
    private int bookId;
    private int idAccount;

    public BorrowCard() {
    }

    public BorrowCard(int id, String startDate, String endDate, int bookId, int idAccount) {
        this.id = id;
        this.startDate = startDate;
        this.endDate = endDate;
        this.bookId = bookId;
        this.idAccount = idAccount;
    }

    public BorrowCard(String startDate, String endDate, int bookId, int idAccount) {
        this.startDate = startDate;
        this.endDate = endDate;
        this.bookId = bookId;
        this.idAccount = idAccount;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public int getBookId() {
        return bookId;
    }

    public void setBookId(int bookId) {
        this.bookId = bookId;
    }

    public int getIdAccount() {
        return idAccount;
    }

    public void setIdAccount(int idAccount) {
        this.idAccount = idAccount;
    }
}
