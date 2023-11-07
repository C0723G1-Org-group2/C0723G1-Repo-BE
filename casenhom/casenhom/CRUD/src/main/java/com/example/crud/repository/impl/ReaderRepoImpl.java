package com.example.crud.repository.impl;

import com.example.crud.model.Account;
import com.example.crud.model.Reader;
import com.example.crud.repository.IAccountRepo;
import com.example.crud.repository.IReaderRepo;
import com.example.crud.utils.Baserepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ReaderRepoImpl implements IReaderRepo {
    private final IAccountRepo accountRepo = new AccountRepoImpl();
    private static final String SELECT_ALL = "SELECT * FROM reader;";
    private static final String FIND_BY_ID = "SELECT * FROM reader WHERE reader_id = ?;";
    private static final String REMOVE_READER_BY_ID = "DELETE FROM reader WHERE reader_id = ?;";
//    private final static String READER_INSERT = "INSERT INTO reader (reader_id, reader_name, address, citizen_id, date_of_birth, email , phone_number, image,id_account) VALUES (?,?,?,?,?,?,?,?,?);\";\n";
    private final static String UPDATE_READER = "UPDATE reader SET reader_name = ?, address = ?, citizen_id =?, date_of_birth =?, email =?,phone_number =?,image=?,id_account =? WHERE reader_id = ?;";
    private final static String CREATE_READER = "INSERT INTO reader(reader_name, address, citizen_id, date_of_birth, email, phone_number,image) VALUES (?, ?, ?, ?, ?, ?, ?)";

    @Override
    public List<Reader> listReadable() {
        Baserepository baserepository = new Baserepository();
        Connection connection = baserepository.getConnection();
        List<Reader> readerList = new ArrayList<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(SELECT_ALL);
            while (resultSet.next()) {
                int id = resultSet.getInt("reader_id");
                String name = resultSet.getString("reader_name");
                String address = resultSet.getString("address");
                String citizenId = resultSet.getString("citizen_id");
                String dateOfBirth = resultSet.getString("date_of_birth");
                String email = resultSet.getString("email");
                String phoneNumber = resultSet.getString("phone_number");
                String image = resultSet.getString("image");
                Account accountId = accountRepo.findById(resultSet.getInt("id_account"));
                readerList.add(new Reader(id, name, address, citizenId, dateOfBirth, email, phoneNumber, image, accountId));
            }
            resultSet.close();
            statement.close();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return readerList;
    }

    @Override
    public Reader findById(int idReader) {
        Baserepository baserepository = new Baserepository();
        Connection connection = baserepository.getConnection();
        Reader reader = null;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_BY_ID);
            preparedStatement.setInt(1, idReader);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                int id = resultSet.getInt("reader_id");
                String name = resultSet.getString("reader_name");
                String address = resultSet.getString("address");
                String citizenId = resultSet.getString("citizen_id");
                String dateOfBirth = resultSet.getString("date_of_birth");
                String email = resultSet.getString("email");
                String phoneNumber = resultSet.getString("phone_number");
                String image = resultSet.getString("image");
                Account accountId = accountRepo.findById(resultSet.getInt("id_account"));
                reader = new Reader(id, name, address, citizenId, dateOfBirth, email, phoneNumber, image, accountId);
            }
            preparedStatement.close();
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return reader;
    }

    @Override
    public boolean removeReader(int idReader) {
        if (findById(idReader) == null) {
            return false;
        }
        Baserepository baserepository = new Baserepository();
        Connection connection = baserepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(REMOVE_READER_BY_ID);
            preparedStatement.setInt(1, idReader);
            preparedStatement.executeUpdate();
            preparedStatement.close();
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return true;
    }

    @Override
    public boolean createReader(Reader reader) {
        Baserepository baserepository = new Baserepository();
        Connection connection = baserepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(CREATE_READER, Statement.RETURN_GENERATED_KEYS);
            preparedStatement.setString(1, reader.getReaderName());
            preparedStatement.setString(2, reader.getAddress());
            preparedStatement.setString(3, reader.getCitizenId());
            preparedStatement.setString(4, reader.getDateOfBirth());
            preparedStatement.setString(5, reader.getEmail());
            preparedStatement.setString(6, reader.getPhoneNumber());
            preparedStatement.setString(7, reader.getImage());
            int rows = preparedStatement.executeUpdate();
            ResultSet resultSet = preparedStatement.getGeneratedKeys();
            if (resultSet.next()) {
                reader.setReadeId(resultSet.getInt(1));
            }
            preparedStatement.close();
            connection.close();
            return rows > 0;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }


    @Override
    public boolean updateReader(Reader reader) {
        if (findById(reader.getReadeId()) == null) {
            return false;
        } else {
            Baserepository baserepository = new Baserepository();
            Connection connection = baserepository.getConnection();
            try {
                PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_READER);
                preparedStatement.setString(1, reader.getReaderName());
                preparedStatement.setString(2, reader.getAddress());
                preparedStatement.setString(3, reader.getCitizenId());
                preparedStatement.setString(4, reader.getDateOfBirth());
                preparedStatement.setString(5, reader.getEmail());
                preparedStatement.setString(6, reader.getPhoneNumber());
                preparedStatement.setString(7, reader.getImage());
                preparedStatement.setInt(8, reader.getAccount().getIdAccount());
                preparedStatement.setInt(9, reader.getReadeId());
                preparedStatement.executeUpdate();
                preparedStatement.close();
                connection.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        return true;
    }

    @Override
    public List<Reader> findByNameReader(String name) {
        List<Reader> readerList = new ArrayList<>();

        return null;
    }
}
