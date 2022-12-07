package com.example.matchlearners;

public class User {
    private int idUser;
    private String username;
    private String email;
    private String password;

    public User(int idUser, String username, String email, String password) {
        this.idUser = idUser;
        this.username = username;
        this.email = email;
        this.password = password;
    }

    public User(String username, String email, String password) {
        this.username = username;
        this.email = email;
        this.password = password;
    }
}
