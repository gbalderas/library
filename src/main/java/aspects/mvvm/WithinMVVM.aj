package aspects.mvvm;

/**
 * Created by gerardo.balderas on 24.08.2016.
 */
public abstract aspect WithinMVVM {
    pointcut withinView(): within(de.saxsys.mvvmfx.FxmlView+);
    pointcut withinViewModel(): within(de.saxsys.mvvmfx.ViewModel+);
    pointcut withinModel(): within(aspects.mvvm.Model+);

    public interface Model{};

    //hier kommen die paketen namen, die werden durch || getrennt

    declare parents: de.saxsys.library.model..* implements aspects.mvvm.Model;

    declare parents: *..placeholder1..* || *..placeholder2..* || *..placeholder3..* implements aspects.mvvm.Model;



}
