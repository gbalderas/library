package de.saxsys.library.views;

import de.saxsys.library.model.BookMap;
import de.saxsys.library.model.shelve.Book;
import de.saxsys.mvvmfx.MvvmFX;
import de.saxsys.mvvmfx.ViewModel;
import de.saxsys.mvvmfx.utils.notifications.NotificationCenter;

/**
 * Created by gerardo.balderas on 24.08.2016.
 */
public class MainViewModel implements ViewModel{


    NotificationCenter notificationCenter;

    Book selectedBook;

    public MainViewModel(){
        notificationCenter = MvvmFX.getNotificationCenter();

        notificationCenter.subscribe("ITEM_SELECTED", (key, payload)->{
            String bookName = (String) payload[0];
            selectedBook = BookMap.getBook(bookName);
        });
    }


}
