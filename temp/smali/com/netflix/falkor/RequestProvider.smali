.class public interface abstract Lcom/netflix/falkor/RequestProvider;
.super Ljava/lang/Object;
.source "RequestProvider.java"


# virtual methods
.method public abstract call(Lcom/netflix/falkor/PQL;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/falkor/PQL;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)",
            "Ljava/io/InputStream;"
        }
    .end annotation
.end method

.method public abstract get(Ljava/util/Collection;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)",
            "Ljava/io/InputStream;"
        }
    .end annotation
.end method
