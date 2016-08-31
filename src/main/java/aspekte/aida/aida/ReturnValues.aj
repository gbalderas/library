package aspekte.aida.aida;

/**
 * Created by gerardo.balderas on 24.08.2016.
 */
public aspect ReturnValues extends WithinMVVM {

    // MODEL
    pointcut executionModelReturn():
        execution(de.aidsstiftung.aida.business..* *.*(..)) ||
        execution(de.aidsstiftung.aida.domain..* *.*(..)) ||
        execution(de.aidsstiftung.aida.exception..* *.*(..)) ||
        execution(de.aidsstiftung.aida.util..* *.*(..));

    pointcut executionGenTypeModel():
        execution(*..*<de.aidsstiftung.aida.business..*> *.*(..)) ||
        execution(*..*<de.aidsstiftung.aida.domain..*> *.*(..)) ||
        execution(*..*<de.aidsstiftung.aida.exception..*> *.*(..)) ||
        execution(*..*<de.aidsstiftung.aida.util..*> *.*(..));

    pointcut callModelReturn():
        call(de.aidsstiftung.aida.business..* *.*(..)) ||
        call(de.aidsstiftung.aida.domain..* *.*(..)) ||
        call(de.aidsstiftung.aida.exception..* *.*(..)) ||
        call(de.aidsstiftung.aida.util..* *.*(..));

    pointcut callGenTypeModel():
        call(*..*<de.aidsstiftung.aida.business..*> *.*(..)) ||
        call(*..*<de.aidsstiftung.aida.domain..*> *.*(..)) ||
        call(*..*<de.aidsstiftung.aida.exception..*> *.*(..)) ||
        call(*..*<de.aidsstiftung.aida.util..*> *.*(..));

    // VIEW-MODEL
    pointcut executionViewModelReturn(): execution(de.saxsys.mvvmfx.ViewModel+ *.*(..));
    pointcut executionGenTypeViewModel(): execution(*..*<de.saxsys.mvvmfx.ViewModel+> *.*(..));
    pointcut callViewModelReturn(): call(de.saxsys.mvvmfx.ViewModel+ *.*(..));
    pointcut callGenTypeViewModel(): call(*..*<de.saxsys.mvvmfx.ViewModel+> *.*(..));

    // VIEW
    pointcut executionViewReturn(): execution(de.saxsys.mvvmfx.FxmlView+ *.*(..));
    pointcut executionGenTypeView(): execution(*..*<de.saxsys.mvvmfx.FxmlView+> *.*(..));
    pointcut callViewReturn(): call(de.saxsys.mvvmfx.FxmlView+ *.*(..));
    pointcut callGenTypeView(): call(*..*<de.saxsys.mvvmfx.FxmlView+> *.*(..));


    // MODEL
    declare error: withinModel() && (executionViewModelReturn() || executionGenTypeViewModel()):
            "Method with a return value of type ViewModel was executed in the Model layer";
    declare error: withinModel() && (callViewModelReturn() || callGenTypeViewModel()):
            "A method with a return value of type ViewModel called within the Model layer";
    declare error: withinModel() && (executionViewReturn() || executionGenTypeView()):
            "Method with a return value of type ViewModel was executed in the Model layer";
    declare error: withinModel() && (callViewReturn() || callGenTypeView()):
            "A method with a return value of type ViewModel called within the Model layer";

    // VIEW-MODEL
    declare error: withinViewModel() && (executionViewReturn() || executionGenTypeView()):
            "Method with a return value of type View was executed in the ViewModel layer";
    declare error: withinViewModel() && (callViewReturn() || callGenTypeView()):
            "A method with a return value of type View called within the ViewModel layer";


    // VIEW
    declare error: withinView() && (executionModelReturn() || executionGenTypeModel()):
            "Method with a return value of type Model was executed in the View layer";
    declare error: withinView() && (callModelReturn() || callGenTypeModel()):
            "A method with a return value of type Model called within the View layer";



}
