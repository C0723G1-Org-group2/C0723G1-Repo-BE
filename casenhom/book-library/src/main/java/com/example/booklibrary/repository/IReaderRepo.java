package com.example.booklibrary.repository;

import com.example.booklibrary.model.Reader;

import java.util.List;

public interface IReaderRepo {
    List<Reader> listReadable();
    Reader findById(int idReader);
    boolean removeReader(int id);
    boolean createReader(Reader reader);
    boolean updateReader( Reader reader);
    List<Reader> findByNameReader(String name);



}
