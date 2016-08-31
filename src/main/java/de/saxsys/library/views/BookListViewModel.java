package de.saxsys.library.views;

import de.saxsys.library.model.BookMap;
import de.saxsys.library.model.shelve.Book;
import de.saxsys.mvvmfx.MvvmFX;
import de.saxsys.mvvmfx.ViewModel;
import de.saxsys.mvvmfx.utils.notifications.NotificationCenter;
import javafx.beans.property.ObjectProperty;
import javafx.beans.property.SimpleObjectProperty;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;

import java.util.stream.Collectors;

/**
 * Created by gerardo.balderas on 24.08.2016.
 */
public class BookListViewModel implements ViewModel {

    NotificationCenter notificationCenter;

    ObservableList<Book> list = FXCollections.observableArrayList();
    ObjectProperty<ObservableList<Book>> itemsProperty = new SimpleObjectProperty<>();


    public BookListViewModel() {
        notificationCenter = MvvmFX.getNotificationCenter();

        notificationCenter.subscribe("NEW_BOOK_LIST", (key, payload) -> {
            updateItems((ObservableList<Book>) payload[0]);
        });

        notificationCenter.subscribe("EMPTY_SEARCH", (key, payload) -> {
            resetList();
        });

        BookMap.loadBooks();
        list.addAll(
                BookMap.getBookStream()
//                        .map(book -> book.getName())
                        .collect(Collectors.toList()));
        itemsProperty.set(list.sorted());
    }


    private void resetList() {
        itemsProperty.set(list.sorted());
    }


    public void itemClicked(String selectedItem) {
        if (selectedItem == null)
            return;
        notificationCenter.publish("ITEM_SELECTED", selectedItem);
    }

    private void updateItems(ObservableList<Book> newList) {
        itemsProperty.set(newList.sorted());
    }

}
