package aspects.mvvm;

/**
 * Created by gerardo.balderas on 24.08.2016.
 */
public aspect Instancevariables {

    pointcut getModelVarInView(): get(aspects.mvvm.Model+ de.saxsys.mvvmfx.FxmlView+.*);
    pointcut getGenModelVarInView(): get(*..*<aspects.mvvm.Model+> de.saxsys.mvvmfx.FxmlView+.*);


    pointcut getViewVarInViewModel(): get(de.saxsys.mvvmfx.FxmlView+ de.saxsys.mvvmfx.ViewModel+.*);
    pointcut getGenViewVarInViewModel(): get(*..*<de.saxsys.mvvmfx.FxmlView+> de.saxsys.mvvmfx.ViewModel+.*);


    pointcut getViewVarInModel(): get(de.saxsys.mvvmfx.FxmlView+ aspects.mvvm.Model+.*);
    pointcut getGenViewVarInModel(): get(*..*<de.saxsys.mvvmfx.FxmlView+> aspects.mvvm.Model+.*);
    pointcut getViewModelVarInModel(): get(de.saxsys.mvvmfx.ViewModel+ aspects.mvvm.Model+.*);
    pointcut getGenViewModelVarInModel(): get(*..*<de.saxsys.mvvmfx.ViewModel+> aspects.mvvm.Model+.*);


//    declare error: getModelVarInView() || getGenModelVarInView(): "Model variable was accessed in View layer";
//
//    declare error: getViewVarInModel() || getGenViewVarInModel(): "View variable was accessed in ViewModel layer";
//
//    declare error: getViewVarInModel() || getGenViewVarInModel(): "View variable was accessed in Model layer";
//    declare error: getViewModelVarInModel() || getGenViewModelVarInModel(): "ViewModel variable was accessed in Model layer";



    pointcut setModelVarInView(): set(aspects.mvvm.Model+ de.saxsys.mvvmfx.FxmlView+.*);
    pointcut setGenModelVarInView(): set(*..*<aspects.mvvm.Model+> de.saxsys.mvvmfx.FxmlView+.*);


    pointcut setViewVarInViewModel(): set(de.saxsys.mvvmfx.FxmlView+ de.saxsys.mvvmfx.ViewModel+.*);
    pointcut setGenViewVarInViewModel(): set(*..*<de.saxsys.mvvmfx.FxmlView+> de.saxsys.mvvmfx.ViewModel+.*);


    pointcut setViewVarInModel(): set(de.saxsys.mvvmfx.FxmlView+ aspects.mvvm.Model+.*);
    pointcut setViewModelVarInModel(): set(de.saxsys.mvvmfx.ViewModel+ aspects.mvvm.Model+.*);
    pointcut setGenViewVarInModel(): set(*..*<de.saxsys.mvvmfx.FxmlView+> aspects.mvvm.Model+.*);
    pointcut setGenViewModelVarInModel(): set(*..*<de.saxsys.mvvmfx.ViewModel+> aspects.mvvm.Model+.*);

//    declare error: setModelVarInView() || setGenModelVarInView(): "Model variable was set in View layer";
//
//    declare error: setViewVarInModel() || setGenViewVarInModel(): "View variable was set in ViewModel layer";
//
//    declare error: setViewVarInModel() || setGenViewVarInModel(): "View variable was set in Model layer";
//    declare error: setViewModelVarInModel() || setGenViewModelVarInModel(): "ViewModel set was found in Model layer";


}
