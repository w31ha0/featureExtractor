.class public interface abstract Lcom/mobfox/sdk/networking/AsyncCallback;
.super Ljava/lang/Object;
.source "AsyncCallback.java"


# virtual methods
.method public abstract onComplete(ILjava/lang/Object;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract onError(Ljava/lang/Exception;)V
.end method
