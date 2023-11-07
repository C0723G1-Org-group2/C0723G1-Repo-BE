package com.example.booklibrary.model;

import sun.dc.pr.PRError;

public class Book {
    private int book_id;
    private String book_name;
    private int publish_year;
    private String img;
    private String book_intro;
    private int author_id;
    private int book_type_id;
    private int book_quantity;


    public Book(int book_id, String book_name, int publish_year, String img,String book_intro, int book_quantity) {
        this.book_id = book_id;
        this.book_name = book_name;
        this.publish_year = publish_year;
        this.img = img;
        this.book_intro = book_intro;
        this.book_quantity = book_quantity;
    }

    public Book() {
    }

    public Book(int book_id, String book_name, int publish_year, String img, String book_intro, int author_id, int book_type_id, int book_quantity) {
        this.book_id = book_id;
        this.book_name = book_name;
        this.publish_year = publish_year;
        this.img = img;
        this.book_intro = book_intro;
        this.author_id = author_id;
        this.book_type_id = book_type_id;
        this.book_quantity = book_quantity;
    }

    public Book(String book_name, int publish_year, String img,String book_intro, int author_id, int book_type_id, int book_quantity) {
        this.book_name = book_name;
        this.publish_year = publish_year;
        this.img = img;
        this.book_intro = book_intro;
        this.author_id = author_id;
        this.book_type_id = book_type_id;
        this.book_quantity = book_quantity;
    }
    public Book(String book_name, int publish_year, String img,String book_intro , int book_quantity) {
        this.book_name = book_name;
        this.publish_year = publish_year;
        this.img = img;
        this.book_intro = book_intro;
        this.author_id = author_id;
        this.book_type_id = book_type_id;
        this.book_quantity = book_quantity;
    }




    public int getBookId() {
        return book_id;
    }

    public void setBook_id(int book_id) {
        this.book_id = book_id;
    }

    public String getBookName() {
        return book_name;
    }

    public void setBook_name(String book_name) {
        this.book_name = book_name;
    }

    public int getPublishYear() {
        return publish_year;
    }

    public void setPublish_year(int publish_year) {
        this.publish_year = publish_year;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getBook_intro() {
        return book_intro;
    }

    public void setBook_intro(String book_intro) {
        this.book_intro = book_intro;
    }

    public int getAuthorId() {
        return author_id;
    }

    public void setAuthorId(int author_id) {
        this.author_id = author_id;
    }

    public int getBookTypeId() {
        return book_type_id;
    }

    public void setBook_type_id(int book_type_id) {
        this.book_type_id = book_type_id;
    }

    public int getBook_quantity() {
        return book_quantity;
    }

    public void setBook_quantity(int book_quantity) {
        this.book_quantity = book_quantity;
    }
}
