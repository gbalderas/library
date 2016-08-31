package de.saxsys.library.model.shelve;

import de.saxsys.library.views.SearchBarView;

/**
 * Created by gerardo.balderas on 24.08.2016.
 */
public class Book {

    private String name;
    private String author;
    private String year;
    private String category;
    private String genre;
    private String isbn;
    private String description;

    public Book(String name, String author, String year, String category, String genre, String isbn, String description) {
        this.name = name;
        this.author = author;
        this.year = year;
        this.category = category;
        this.genre = genre;
        this.isbn = isbn;
        this.description = description;
        SearchBarView searchBarView = new SearchBarView();
    }

    public String getName() {
        return name;
    }

    public String getAuthor() {
        return author;
    }

    public String getYear() {
        return year;
    }

    public String getCategory() {
        return category;
    }

    public String getGenre() {
        return genre;
    }

    public String getIsbn() {
        return isbn;
    }

    public String getDescription() {
        return description;
    }
}
