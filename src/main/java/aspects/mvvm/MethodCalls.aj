package aspects.mvvm;

/**
 * Created by gerardo.balderas on 24.08.2016.
 */
public aspect MethodCalls extends WithinMVVM {

    pointcut callToView(): call(* de.saxsys.mvvmfx.FxmlView+.*(..));
    pointcut callToViewModel(): call(* de.saxsys.mvvmfx.ViewModel+.*(..));
    pointcut callToModel(): call(* aspects.mvvm.Model+.*(..));


//    declare error: withinView() && callToModel():"The Model layer was called within the View layer";
//    declare error: withinViewModel() && callToView():"The View layer was called within the Viewmodel layer";
//    declare error: withinModel() && (withinView() || withinViewModel()):
//            "The View or ViewModel layer was called within the Model layer";


    pointcut callWithModelArgs(): call(* *.*(.., aspects.mvvm.Model+, ..));
    pointcut callWithGenericArgsModel(): call(* *.*(.., *..*<aspects.mvvm.Model+>, ..));

    pointcut callWithViewModelArgs(): call(* *.*(.., de.saxsys.mvvmfx.ViewModel+, ..));
    pointcut callWithGenericArgsViewModel(): call(* *.*(.., *..*<de.saxsys.mvvmfx.ViewModel+>, ..));
    pointcut callWithViewArgs(): call(* *.*(.., de.saxsys.mvvmfx.FxmlView+, ..));
    pointcut callWithGenericArgsView(): call(* *.*(.., *..*<de.saxsys.mvvmfx.FxmlView+>, ..));

//    declare error: withinModel() &&
//            (callWithViewModelArgs() || callWithGenericArgsViewModel() || callWithViewArgs() || callWithGenericArgsView()):
//            "Call with dependant arguments of ViewModel or View was made within the Model";
//
//    declare error: withinViewModel() && (callWithViewArgs() || callWithGenericArgsView()):
//            "Call with dependant arguments of View was made within the ViewModel";
//    declare error: withinView() && (callWithModelArgs() || callWithGenericArgsModel()):
//            "Call with dependant arguments of Model was made within the View";

}