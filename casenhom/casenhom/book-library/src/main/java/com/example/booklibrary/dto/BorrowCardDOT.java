package com.example.booklibrary.dto;

public class BorrowCardDOT {
    private int id;
    private String startDate;
    private String endDate;
    private String bookName;
    private String userName;
    private int bookId;
    private int idAccount;

    public BorrowCardDOT() {
    }

    public BorrowCardDOT(int id, String startDate, String endDate, String bookName, String userName) {
        this.id = id;
        this.startDate = startDate;
        this.endDate = endDate;
        this.bookName = bookName;
        this.userName = userName;
    }

    public BorrowCardDOT(int id, String startDate, String endDate, String bookName, String userName, int bookId, int idAccount) {
        this.id = id;
        this.startDate = startDate;
        this.endDate = endDate;
        this.bookName = bookName;
        this.userName = userName;
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

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
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
