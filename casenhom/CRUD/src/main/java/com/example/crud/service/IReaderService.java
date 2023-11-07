package com.example.crud.service;

import com.example.crud.model.Reader;

import java.util.List;

public interface IReaderService {
    List<Reader> listReadable();

    Reader findById(int idReader);

    boolean removeReader(int id);

    boolean updateReader( Reader reader);
    List<Reader> findByNameReader(String name);


    boolean createReader(Reader reader);
}
