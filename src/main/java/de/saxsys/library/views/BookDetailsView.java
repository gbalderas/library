package de.saxsys.library.views;

import de.saxsys.mvvmfx.FxmlView;
import de.saxsys.mvvmfx.InjectViewModel;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Label;

import java.net.URL;
import java.util.ResourceBundle;

/**
 * Created by gerardo.balderas on 24.08.2016.
 */
public class BookDetailsView implements FxmlView<BookDetailsViewModel>, Initializable {

    @FXML
    public Label description;

    @FXML
    public Label isbn;

    @FXML
    public Label genre;

    @FXML
    public Label category;

    @FXML
    public Label year;

    @FXML
    public Label authorLabel;

    @FXML
    public Label nameLabel;

    @InjectViewModel
    BookDetailsViewModel viewModel;

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        nameLabel.textProperty().bind(viewModel.nameTextProperty);
        authorLabel.textProperty().bind(viewModel.authorTextProperty);
        year.textProperty().bind(viewModel.yearTextProperty);
        category.textProperty().bind(viewModel.categoryTextProperty);
        genre.textProperty().bind(viewModel.genreTextProperty);
        isbn.textProperty().bind(viewModel.isbnTextProperty);
        description.textProperty().bind(viewModel.descriptionTextProperty);
    }
}
