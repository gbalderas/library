package de.saxsys.library.model;

import de.saxsys.library.model.shelve.Book;
import de.saxsys.library.views.MainView;

import java.util.Map;
import java.util.TreeMap;
import java.util.stream.Stream;

/**
 * Created by gerardo.balderas on 24.08.2016.
 */
public class BookMap {

    private static Map<String, Book> bookMap = new TreeMap<>();

    //STATIC CLASS
    private BookMap() {
        MainView mv = new MainView();
    }

    public static void loadBooks() {
        // TODO load books
        for (int i = 0; i < 50; i++) {
            String name = "name" + i;
            String author = "author" + i;
            String year = Integer.toString(i * 21 / 7);
            String category = "category" + i;
            String genre = "genre" + i;
            String isbn = Double.toString(Math.random() * 100);
            String description = "";
            for (int j = 0; j < 60; j++) {
                int random = (int) (Math.random() * 52); // or use Random or whatever
                char base = (random < 26) ? 'A' : 'a';
                base = (char) (base + random % 26);
                description = description + base;
            }
            Book book = new Book(name, author, year, category, genre, isbn, description);
            bookMap.put(book.getName(), book);
        }
    }


    public static Book getBook(String name) {
        return bookMap.get(name);
    }

    public static void deleteBook(Book book){
        bookMap.remove(book.getName());
    }

    public static Stream<Book> getBookStream() {
        return bookMap.values().stream();
    }

}
