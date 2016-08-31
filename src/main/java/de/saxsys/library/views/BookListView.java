package de.saxsys.library.views;

import de.saxsys.library.model.shelve.Book;
import de.saxsys.library.model.BookMap;
import de.saxsys.mvvmfx.FxmlView;
import de.saxsys.mvvmfx.InjectViewModel;
import javafx.event.Event;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.ListView;

import java.net.URL;
import java.util.ResourceBundle;

/**
 * Created by gerardo.balderas on 24.08.2016.
 */
public class BookListView implements Initializable, FxmlView<BookListViewModel> {

    @FXML
    public ListView<Book> bookList;

    @InjectViewModel
    BookListViewModel viewModel;

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        Book book = BookMap.getBook("name1");
        Book book2 = new Book("a","b","c","d","e","f","g");
        bookList.itemsProperty().bindBidirectional(viewModel.itemsProperty);
    }

    @FXML
    public void itemClicked(Event event) {
        Book selectedItem = bookList.getSelectionModel().getSelectedItem();
        viewModel.itemClicked(selectedItem.getName());
    }
}
