.class public interface abstract Lcom/netflix/msl/msg/ErrorMessageRegistry;
.super Ljava/lang/Object;
.source "ErrorMessageRegistry.java"


# virtual methods
.method public abstract getUserMessage(Lcom/netflix/msl/MslError;Ljava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/MslError;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getUserMessage(Ljava/lang/Throwable;Ljava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
