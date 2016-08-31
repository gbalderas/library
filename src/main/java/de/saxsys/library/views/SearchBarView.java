package de.saxsys.library.views;

import de.saxsys.mvvmfx.FxmlView;
import de.saxsys.mvvmfx.InjectViewModel;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;

import java.net.URL;
import java.util.ResourceBundle;

/**
 * Created by gerardo.balderas on 24.08.2016.
 */
public class SearchBarView implements Initializable, FxmlView<SearchBarViewModel>{

    @FXML
    public TextField searchTextField;

    @FXML
    public Button searchButton;

    @FXML
    public Label selectedItem;

    @InjectViewModel
    SearchBarViewModel viewModel;

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        searchTextField.textProperty().bindBidirectional(viewModel.searchFieldTextProperty);
        searchButton.backgroundProperty().bindBidirectional(viewModel.backgroundProperty);
    }

    @FXML
    public void search(ActionEvent actionEvent) {
        viewModel.search();
    }
}
