package de.saxsys.library.model;

import de.saxsys.library.model.shelve.Book;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;

import java.util.List;
import java.util.stream.Collectors;

/**
 * Created by gerardo.balderas on 24.08.2016.
 */
public class BookSearch {

    // STATIC CLASS
    private BookSearch(){
    }

    //public static ObservableList<String> forEverything(String query){
    public static ObservableList<Book> forEverything(String query) {
        // List<String> list = BookMap.getBookStream()
        List<Book> list = BookMap.getBookStream()
                .filter(book -> containsAll(book, query))
//                .map(book -> book.getName())
                .collect(Collectors.toList());

        return FXCollections.observableArrayList(list);
    }

    private static boolean containsAll(Book book, String query) {
        query = query.toLowerCase();
        boolean containsName = book.getName().toLowerCase().contains(query);
        boolean containsAuthor = book.getAuthor().toLowerCase().contains(query);
        boolean containsYear= book.getYear().toLowerCase().contains(query);
        boolean containsCategory = book.getCategory().toLowerCase().contains(query);
        boolean containsIsbn = book.getIsbn().toLowerCase().contains(query);
        boolean containsGenre = book.getGenre().toLowerCase().contains(query);

        return (containsName || containsAuthor|| containsYear || containsCategory || containsIsbn || containsGenre);
    }
}
