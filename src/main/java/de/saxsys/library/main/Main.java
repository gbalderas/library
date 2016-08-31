package de.saxsys.library.main;

import de.saxsys.library.views.MainView;
import de.saxsys.mvvmfx.FluentViewLoader;
import javafx.application.Application;
import javafx.scene.Scene;
import javafx.stage.Stage;

/**
 * Created by gerardo.balderas on 24.08.2016.
 */
public class Main extends Application {

    public static void main(String[] a){
        launch(a);
    }

    @Override
    public void start(Stage stage) throws Exception {
        String title = "Library";
        stage.setTitle(title);
        Scene scene = new Scene(FluentViewLoader.fxmlView(MainView.class).load().getView());

        stage.setScene(scene);
        stage.show();
    }
}
