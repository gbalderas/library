package de.saxsys.library.views;

import de.saxsys.library.model.BookSearch;
import de.saxsys.library.model.shelve.Book;
import de.saxsys.mvvmfx.MvvmFX;
import de.saxsys.mvvmfx.ViewModel;
import de.saxsys.mvvmfx.utils.notifications.NotificationCenter;
import javafx.beans.property.Property;
import javafx.beans.property.SimpleObjectProperty;
import javafx.beans.property.SimpleStringProperty;
import javafx.beans.property.StringProperty;
import javafx.collections.ObservableList;
import javafx.scene.layout.Background;
import javafx.scene.layout.BackgroundFill;
import javafx.scene.paint.Color;

/**
 * Created by gerardo.balderas on 24.08.2016.
 */
public class SearchBarViewModel implements ViewModel {


    StringProperty searchFieldTextProperty = new SimpleStringProperty();
    NotificationCenter notificationCenter;
    Background backgroundBlue = new Background(new BackgroundFill(Color.BLUE, null, null));
    Background backgroundNone = new Background(new BackgroundFill(null, null, null));
    public Property<Background> backgroundProperty = new SimpleObjectProperty<>();

    public SearchBarViewModel() {
        notificationCenter = MvvmFX.getNotificationCenter();
    }


    public void search() {
        String query = searchFieldTextProperty.getValue();
        if (query.isEmpty()) {
            searchWasEmpty();
            return;
        }
        backgroundProperty.setValue(backgroundBlue);
//        ObservableList<String> books = BookSearch.forEverything(query);
        ObservableList<Book> books = BookSearch.forEverything(query);

        notificationCenter.publish("NEW_BOOK_LIST", books);

    }

    private void searchWasEmpty() {
        backgroundProperty.setValue(backgroundNone);
        notificationCenter.publish("EMPTY_SEARCH", null);
    }

}
