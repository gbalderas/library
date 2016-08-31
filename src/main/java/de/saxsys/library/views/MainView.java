package de.saxsys.library.views;

import de.saxsys.mvvmfx.FxmlView;
import de.saxsys.mvvmfx.InjectViewModel;
import javafx.event.ActionEvent;
import javafx.fxml.Initializable;

import java.net.URL;
import java.util.ResourceBundle;

/**
 * Created by gerardo.balderas on 24.08.2016.
 */
public class MainView implements FxmlView<MainViewModel>, Initializable {

    @InjectViewModel
    MainViewModel viewModel;

    @Override
    public void initialize(URL location, ResourceBundle resources) {

    }

    public void addNewBook(ActionEvent actionEvent) {
    }
}
