package aspekte.aida.aida;

/**
 * Created by gerardo.balderas on 24.08.2016.
 */
public aspect Instancevariables {
//
//    de.aidsstiftung.aida.business..
//   de.aidsstiftung.aida.domain..
//    de.aidsstiftung.aida.exception..
//    de.aidsstiftung.aida.util..;

    pointcut getModelVarInView():
        get(de.aidsstiftung.aida.business..* de.saxsys.mvvmfx.FxmlView+.*) ||
        get(de.aidsstiftung.aida.domain..* de.saxsys.mvvmfx.FxmlView+.*) ||
        get(de.aidsstiftung.aida.exception..* de.saxsys.mvvmfx.FxmlView+.*) ||
        get(de.aidsstiftung.aida.util..* de.saxsys.mvvmfx.FxmlView+.*);
    pointcut getGenModelVarInView():
        get(*..*<de.aidsstiftung.aida.business..*> de.saxsys.mvvmfx.FxmlView+.*) ||
        get(*..*<de.aidsstiftung.aida.domain..*> de.saxsys.mvvmfx.FxmlView+.*) ||
        get(*..*<de.aidsstiftung.aida.exception..*> de.saxsys.mvvmfx.FxmlView+.*) ||
        get(*..*<de.aidsstiftung.aida.util..*> de.saxsys.mvvmfx.FxmlView+.*);


    pointcut getViewVarInViewModel(): get(de.saxsys.mvvmfx.FxmlView+ de.saxsys.mvvmfx.ViewModel+.*);
    pointcut getGenViewVarInViewModel(): get(*..*<de.saxsys.mvvmfx.FxmlView+> de.saxsys.mvvmfx.ViewModel+.*);


    pointcut getViewVarInModel():
        get(de.saxsys.mvvmfx.FxmlView+ de.aidsstiftung.aida.business..*) ||
        get(de.saxsys.mvvmfx.FxmlView+ de.aidsstiftung.aida.domain..*) ||
        get(de.saxsys.mvvmfx.FxmlView+ de.aidsstiftung.aida.exception..*) ||
        get(de.saxsys.mvvmfx.FxmlView+ de.aidsstiftung.aida.util..*);

    pointcut getGenViewVarInModel():
        get(*..*<de.saxsys.mvvmfx.FxmlView+> de.aidsstiftung.aida.business..*) ||
        get(*..*<de.saxsys.mvvmfx.FxmlView+> de.aidsstiftung.aida.domain..*) ||
        get(*..*<de.saxsys.mvvmfx.FxmlView+> de.aidsstiftung.aida.exception..*) ||
        get(*..*<de.saxsys.mvvmfx.FxmlView+> de.aidsstiftung.aida.util..*);

    pointcut getViewModelVarInModel():
        get(de.saxsys.mvvmfx.ViewModel+ de.aidsstiftung.aida.business*.*) ||
        get(de.saxsys.mvvmfx.ViewModel+ de.aidsstiftung.aida.domain..*) ||
        get(de.saxsys.mvvmfx.ViewModel+ de.aidsstiftung.aida.exception..*) ||
        get(de.saxsys.mvvmfx.ViewModel+ de.aidsstiftung.aida.util..*);

    pointcut getGenViewModelVarInModel():
        get(*..*<de.saxsys.mvvmfx.ViewModel+> de.aidsstiftung.aida.business..*) ||
        get(*..*<de.saxsys.mvvmfx.ViewModel+> de.aidsstiftung.aida.domain..*) ||
        get(*..*<de.saxsys.mvvmfx.ViewModel+> de.aidsstiftung.aida.exception..*) ||
        get(*..*<de.saxsys.mvvmfx.ViewModel+> de.aidsstiftung.aida.util..*);


//    declare error: getModelVarInView() || getGenModelVarInView(): "Model variable was accessed in View layer";
//
//    declare error: getViewVarInModel() || getGenViewVarInModel(): "View variable was accessed in ViewModel layer";
//
//    declare error: getViewVarInModel() || getGenViewVarInModel(): "View variable was accessed in Model layer";
//    declare error: getViewModelVarInModel() || getGenViewModelVarInModel(): "ViewModel variable was accessed in Model layer";


    pointcut setModelVarInView():
            set(de.aidsstiftung.aida.business..* de.saxsys.mvvmfx.FxmlView+.*) ||
            set(de.aidsstiftung.aida.domain..* de.saxsys.mvvmfx.FxmlView+.*) ||
            set(de.aidsstiftung.aida.exception..* de.saxsys.mvvmfx.FxmlView+.*) ||
            set(de.aidsstiftung.aida.util..* de.saxsys.mvvmfx.FxmlView+.*);
    pointcut setGenModelVarInView():
            set(*..*<de.aidsstiftung.aida.business..*> de.saxsys.mvvmfx.FxmlView+.*) ||
            set(*..*<de.aidsstiftung.aida.domain..*> de.saxsys.mvvmfx.FxmlView+.*) ||
            set(*..*<de.aidsstiftung.aida.exception..*> de.saxsys.mvvmfx.FxmlView+.*) ||
            set(*..*<de.aidsstiftung.aida.util..*> de.saxsys.mvvmfx.FxmlView+.*);


    pointcut setViewVarInViewModel(): set(de.saxsys.mvvmfx.FxmlView+ de.saxsys.mvvmfx.ViewModel+.*);
    pointcut setGenViewVarInViewModel(): set(*..*<de.saxsys.mvvmfx.FxmlView+> de.saxsys.mvvmfx.ViewModel+.*);


    pointcut setViewVarInModel():
            set(de.saxsys.mvvmfx.FxmlView+ de.aidsstiftung.aida.business..*) ||
                    set(de.saxsys.mvvmfx.FxmlView+ de.aidsstiftung.aida.domain..*) ||
                    set(de.saxsys.mvvmfx.FxmlView+ de.aidsstiftung.aida.exception..*) ||
                    set(de.saxsys.mvvmfx.FxmlView+ de.aidsstiftung.aida.util..*);

    pointcut setGenViewVarInModel():
            set(*..*<de.saxsys.mvvmfx.FxmlView+> de.aidsstiftung.aida.business..*) ||
                    set(*..*<de.saxsys.mvvmfx.FxmlView+> de.aidsstiftung.aida.domain..*) ||
                    set(*..*<de.saxsys.mvvmfx.FxmlView+> de.aidsstiftung.aida.exception..*) ||
                    set(*..*<de.saxsys.mvvmfx.FxmlView+> de.aidsstiftung.aida.util..*);

    pointcut setViewModelVarInModel():
            set(de.saxsys.mvvmfx.ViewModel+ de.aidsstiftung.aida.business..*) ||
                    set(de.saxsys.mvvmfx.ViewModel+ de.aidsstiftung.aida.domain..*) ||
                    set(de.saxsys.mvvmfx.ViewModel+ de.aidsstiftung.aida.exception..*) ||
                    set(de.saxsys.mvvmfx.ViewModel+ de.aidsstiftung.aida.util..*);

    pointcut setGenViewModelVarInModel():
            set(*..*<de.saxsys.mvvmfx.ViewModel+> de.aidsstiftung.aida.business..*) ||
                    set(*..*<de.saxsys.mvvmfx.ViewModel+> de.aidsstiftung.aida.domain..*) ||
                    set(*..*<de.saxsys.mvvmfx.ViewModel+> de.aidsstiftung.aida.exception..*) ||
                    set(*..*<de.saxsys.mvvmfx.ViewModel+> de.aidsstiftung.aida.util..*);

//    declare error: setModelVarInView() || setGenModelVarInView(): "Model variable was set in View layer";
//
//    declare error: setViewVarInModel() || setGenViewVarInModel(): "View variable was set in ViewModel layer";
//
//    declare error: setViewVarInModel() || setGenViewVarInModel(): "View variable was set in Model layer";
//    declare error: setViewModelVarInModel() || setGenViewModelVarInModel(): "ViewModel set was found in Model layer";


}
