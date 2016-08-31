package aspekte.aida.aida;

/**
 * Created by gerardo.balderas on 24.08.2016.
 */
public aspect UIElements extends WithinMVVM {

    pointcut callUILibrary(): call(* javafx.scene..*+.*(..)) || call(javafx.scene..*+.new(..));
    pointcut callForUIElements(): call(javafx.scene..*+ *.*(..));
    pointcut executionUIElements(): execution(javafx.scene..*+ *.*(..));

    pointcut callGenericUIElement(): call(*..*<javafx.scene..*+> *.*(..));
    pointcut executionGenericUIElements(): execution(*..*<javafx.scene..*+> *.*(..));


//    declare error: (withinModel() || withinViewModel()) && callUILibrary():
//            "UI-library were called in Model or ViewModel layer";
//
//    declare error: (withinModel() || withinViewModel()) && callForUIElements():
//            "UI-element was called within the Model or ViewModel layer";
//
//    declare error: (withinModel() || withinViewModel()) && executionUIElements():
//            "Methods returning UI-elements were executed in Model or ViewModel layer";


    pointcut setUIElementsOnModel():
        set(javafx.scene..*+ de.aidsstiftung.aida.business..*) ||
        set(javafx.scene..*+ de.aidsstiftung.aida.domain..*) ||
        set(javafx.scene..*+ de.aidsstiftung.aida.exception..*) ||
        set(javafx.scene..*+ de.aidsstiftung.aida.util..*);

    pointcut setGenericUIElementsOnModel():
        set(*..*<javafx.scene..*+> de.aidsstiftung.aida.business..*) ||
        set(*..*<javafx.scene..*+> de.aidsstiftung.aida.domain..*) ||
        set(*..*<javafx.scene..*+> de.aidsstiftung.aida.exception..*) ||
        set(*..*<javafx.scene..*+> de.aidsstiftung.aida.util..*);



    pointcut setUIElementsOnViewModel(): set(javafx.scene..*+ de.saxsys.mvvmfx.ViewModel+.*);
    pointcut setGenericUIElementsOnViewModel(): set(*..*<javafx.scene..*+> de.saxsys.mvvmfx.ViewModel+.*);

    pointcut getUIElementsOnViewModel(): get(javafx.scene..*+ de.saxsys.mvvmfx.ViewModel+.*);
    pointcut getGenericUIElementsOnViewModel(): get(*..*<javafx.scene..*+> de.saxsys.mvvmfx.ViewModel+.*);

    pointcut getUIElementsOnModel():
            get(javafx.scene..*+ de.aidsstiftung.aida.business..*) ||
                    get(javafx.scene..*+ de.aidsstiftung.aida.domain..*) ||
                    get(javafx.scene..*+ de.aidsstiftung.aida.exception..*) ||
                    get(javafx.scene..*+ de.aidsstiftung.aida.util..*);

    pointcut getGenericUIElementsOnModel():
            get(*..*<javafx.scene..*+> de.aidsstiftung.aida.business..*) ||
                    get(*..*<javafx.scene..*+> de.aidsstiftung.aida.domain..*) ||
                    get(*..*<javafx.scene..*+> de.aidsstiftung.aida.exception..*) ||
                    get(*..*<javafx.scene..*+> de.aidsstiftung.aida.util..*);

//
//    declare error: setUIElementsOnModel() || setGenericUIElementsOnModel()
//        ||setUIElementsOnViewModel() || setGenericUIElementsOnViewModel():
//            "UI Elements were set on Model or ViewModel layer";
//    declare error: getUIElementsOnModel() || getGenericUIElementsOnModel() ||
//        getUIElementsOnViewModel() || getGenericUIElementsOnViewModel():
//            "UI Elements were accessed on Model or ViewModel layer";

}
