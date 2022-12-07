package com.example.matchlearners;

public class Post {
    private int idPost;
    private String title;
    private String description;
    private int idUser;

    public Post(int idPost, String title, String description, int idUser) {
        this.idPost = idPost;
        this.title = title;
        this.description = description;
        this.idUser = idUser;
    }

    public Post(String title, String description, int idUser) {
        this.title = title;
        this.description = description;
        this.idUser = idUser;
    }

    public int getIdPost() {
        return this.idPost;
    }

    public void setIdPost(int idPost) {
        this.idPost = idPost;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getIdUser() {
        return this.idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }
}
