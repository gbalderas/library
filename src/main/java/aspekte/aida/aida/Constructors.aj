package aspekte.aida.aida;

/**
 * Created by gerardo.balderas on 24.08.2016.
 */
public aspect Constructors extends WithinMVVM {

    pointcut newViewCall(): call(de.saxsys.mvvmfx.FxmlView+.new(..));
    pointcut newViewModelCall(): call(de.saxsys.mvvmfx.ViewModel+.new(..));
    pointcut newModelCall(): call(de.aidsstiftung.aida.business..new(..))
            || call(de.aidsstiftung.aida.domain..new(..))
            || call(de.aidsstiftung.aida.exception..new(..))
            || call(de.aidsstiftung.aida.util..new(..));

//    declare error: withinView() && newModelCall():"A Model Instance was made within the View Layer";
//    declare error: withinViewModel() && newViewCall():"A View Instance was made within the Viewmodel Layer";
//    declare error: withinModel() && (newViewCall() || newViewModelCall()):"A View or ViewModel Instance was made within the Model Layer";
}
