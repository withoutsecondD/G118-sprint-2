package kzbiltab.db;

import kzbiltab.model.Item;
import kzbiltab.model.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DBManager {
    private static final Connection connection;

    static {
        try {
            Class.forName("org.postgresql.Driver");
            connection = DriverManager.getConnection(
                    "jdbc:postgresql://localhost:5432/SprintTask2?currentSchema=sprinttask2",
                    "postgres",
                    "postgres"
            );
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    public static List<Item> getItems() {
        List<Item> items = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement(
                    "SELECT * FROM sprinttask2.items"
            );
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Item item = new Item();
                item.setId(resultSet.getLong("id"));
                item.setName(resultSet.getString("name"));
                item.setDescription(resultSet.getString("description"));
                item.setPrice(resultSet.getDouble("price"));
                items.add(item);
            }
            statement.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return items;
    }

    public static List<User> getUsers() {
        List<User> users = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement(
                    "SELECT * FROM sprinttask2.users"
            );
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                User user = new User();
                user.setId(resultSet.getLong("id"));
                user.setEmail(resultSet.getString("email"));
                user.setPassword(resultSet.getString("password"));
                user.setFullName(resultSet.getString("full_name"));
                users.add(user);
            }
            statement.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return users;
    }
}
