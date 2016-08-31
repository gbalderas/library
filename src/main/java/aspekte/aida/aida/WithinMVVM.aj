package aspekte.aida.aida;

/**
 * Created by gerardo.balderas on 24.08.2016.
 */
public abstract aspect WithinMVVM {
    pointcut withinView(): within(de.saxsys.mvvmfx.FxmlView+);
    pointcut withinViewModel(): within(de.saxsys.mvvmfx.ViewModel+);

    pointcut withinModel():
            within(de.aidsstiftung.aida.business..*) ||
            within(de.aidsstiftung.aida.domain..*) ||
            within(de.aidsstiftung.aida.exception..*) ||
            within(de.aidsstiftung.aida.util..*);
}
