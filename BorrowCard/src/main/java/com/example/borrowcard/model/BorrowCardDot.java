package com.example.borrowcard.model;

public class BorrowCardDOT {
    private int id;
    private String startDate;
    private String endDate;
    private String bookName;
    private String userName;

    public BorrowCardDOT() {
    }

    public BorrowCardDOT(int id, String startDate, String endDate, String bookName, String userName) {
        this.id = id;
        this.startDate = startDate;
        this.endDate = endDate;
        this.bookName = bookName;
        this.userName = userName;
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
}
