package com.example.booklibrary.service;

import com.example.booklibrary.model.Reader;

import java.util.List;

public interface IReaderService {
    List<Reader> listReadable();

    Reader findById(int idReader);

    boolean removeReader(int id);

    boolean updateReader( Reader reader);
    List<Reader> findByNameReader(String name);

    boolean createReader(Reader reader);
}
