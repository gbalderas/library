package de.saxsys.library.views;

import de.saxsys.library.model.shelve.Book;
import de.saxsys.library.model.BookMap;
import de.saxsys.mvvmfx.MvvmFX;
import de.saxsys.mvvmfx.ViewModel;
import de.saxsys.mvvmfx.utils.notifications.NotificationCenter;
import javafx.beans.property.SimpleStringProperty;
import javafx.beans.property.StringProperty;

/**
 * Created by gerardo.balderas on 24.08.2016.
 */
public class BookDetailsViewModel implements ViewModel {
    StringProperty nameTextProperty = new SimpleStringProperty();
    StringProperty authorTextProperty = new SimpleStringProperty();
    StringProperty yearTextProperty = new SimpleStringProperty();
    StringProperty categoryTextProperty = new SimpleStringProperty();
    StringProperty genreTextProperty = new SimpleStringProperty();
    StringProperty isbnTextProperty = new SimpleStringProperty();
    StringProperty descriptionTextProperty = new SimpleStringProperty();


    NotificationCenter notificationCenter;

    public BookDetailsViewModel(){
        notificationCenter = MvvmFX.getNotificationCenter();

        notificationCenter.subscribe("ITEM_SELECTED", (key, payload)->{
            String bookName = (String) payload[0];
            updateDetails(bookName);
        });
    }

    private void updateDetails(String bookName) {
        Book book = BookMap.getBook(bookName);
        nameTextProperty.set(book.getName());
        authorTextProperty.set(book.getAuthor());
        yearTextProperty.set(book.getYear());
        categoryTextProperty.set(book.getCategory());
        genreTextProperty.set(book.getGenre());
        isbnTextProperty.set(book.getIsbn());
        descriptionTextProperty.set(book.getDescription());
    }

}
