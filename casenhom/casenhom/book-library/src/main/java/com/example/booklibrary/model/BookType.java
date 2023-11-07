package com.example.booklibrary.model;

public class BookType {
    private int book_type_id;
    private String book_type_name;

    public BookType() {
    }

    public BookType(int book_type_id, String book_type_name) {
        this.book_type_id = book_type_id;
        this.book_type_name = book_type_name;
    }

    public BookType(String book_type_name) {
        this.book_type_name = book_type_name;
    }

    public int getBook_type_id() {
        return book_type_id;
    }

    public void setBook_type_id(int book_type_id) {
        this.book_type_id = book_type_id;
    }

    public String getBook_type_name() {
        return book_type_name;
    }

    public void setBook_type_name(String book_type_name) {
        this.book_type_name = book_type_name;
    }
}
