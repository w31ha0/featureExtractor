.class public interface abstract Lio/realm/rx/RxObservableFactory;
.super Ljava/lang/Object;
.source "RxObservableFactory.java"


# virtual methods
.method public abstract from(Lio/realm/DynamicRealm;Lio/realm/DynamicRealmObject;)Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/DynamicRealm;",
            "Lio/realm/DynamicRealmObject;",
            ")",
            "Lrx/Observable",
            "<",
            "Lio/realm/DynamicRealmObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract from(Lio/realm/Realm;Lio/realm/RealmModel;)Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/Realm;",
            "TE;)",
            "Lrx/Observable",
            "<TE;>;"
        }
    .end annotation
.end method
