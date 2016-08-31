package de.saxsys.library.views;

import de.saxsys.library.model.BookMap;
import de.saxsys.library.model.shelve.Book;
import de.saxsys.mvvmfx.MvvmFX;
import de.saxsys.mvvmfx.ViewModel;
import de.saxsys.mvvmfx.utils.notifications.NotificationCenter;
import javafx.beans.property.SimpleStringProperty;
import javafx.beans.property.StringProperty;

/**
 * Created by gerardo.balderas on 29.08.2016.
 */
public class DeleteBookViewModel implements ViewModel {
    public StringProperty deleteTextProperty = new SimpleStringProperty();

    Book bookToDelete;

    NotificationCenter notificationCenter;

    public DeleteBookViewModel() {
        deleteTextProperty.setValue("Delete Book");
        notificationCenter = MvvmFX.getNotificationCenter();

        notificationCenter.subscribe("ITEM_SELECTED", (key, payload) -> {
            String bookName = (String) payload[0];
            bookToDelete = BookMap.getBook(bookName);
        });

        notificationCenter.subscribe("DELETE_BOOK", (key, payload) -> {
            Book book = (Book) payload[0];

        });
    }

    public void deleteBook(Book book) {
        BookMap.deleteBook(book);
    }
}
