package de.saxsys.library.views;

import de.saxsys.mvvmfx.FxmlView;
import de.saxsys.mvvmfx.InjectViewModel;
import javafx.fxml.FXML;
import javafx.scene.text.Text;

/**
 * Created by gerardo.balderas on 29.08.2016.
 */
public class DeleteBookView implements FxmlView<DeleteBookViewModel> {


    @FXML
    private Text deleteText;

    @InjectViewModel
    DeleteBookViewModel viewModel;

    public void initialize(){

        deleteText.textProperty().bind(viewModel.deleteTextProperty);


    }



}
