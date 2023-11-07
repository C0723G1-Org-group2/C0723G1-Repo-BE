package com.example.crud.service.impl;

import com.example.crud.model.Reader;
import com.example.crud.repository.IReaderRepo;
import com.example.crud.repository.impl.ReaderRepoImpl;
import com.example.crud.service.IReaderService;

import java.util.List;

public class ReaderServiceImpl implements IReaderService {
    private final IReaderRepo iReaderRepo = new ReaderRepoImpl();

    @Override
    public List<Reader> listReadable() {
        return iReaderRepo.listReadable();
    }

    @Override
    public Reader findById(int idReader) {
        return iReaderRepo.findById(idReader);
    }

    @Override
    public boolean removeReader(int id) {
        return iReaderRepo.removeReader(id);
    }





    @Override
    public boolean updateReader( Reader reader) {
        return iReaderRepo.updateReader( reader);
    }

    @Override
    public List<Reader> findByNameReader(String name) {
        return iReaderRepo.findByNameReader(name);
    }

    @Override
    public boolean createReader(Reader reader) {
        return iReaderRepo.createReader(reader);
    }
}
