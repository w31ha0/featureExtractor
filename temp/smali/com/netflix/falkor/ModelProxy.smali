.class public interface abstract Lcom/netflix/falkor/ModelProxy;
.super Ljava/lang/Object;
.source "ModelProxy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract get(Ljava/util/Collection;)Lcom/netflix/falkor/CachedModelProxy$GetResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)",
            "Lcom/netflix/falkor/CachedModelProxy$GetResult;"
        }
    .end annotation
.end method

.method public abstract getItemsAsList(Lcom/netflix/falkor/PQL;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I::",
            "Lcom/netflix/model/branches/FalkorObject;",
            ">(",
            "Lcom/netflix/falkor/PQL;",
            ")",
            "Ljava/util/List",
            "<TI;>;"
        }
    .end annotation
.end method

.method public abstract getItemsAsList(Ljava/util/Collection;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I::",
            "Lcom/netflix/model/branches/FalkorObject;",
            ">(",
            "Ljava/util/Collection",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)",
            "Ljava/util/List",
            "<TI;>;"
        }
    .end annotation
.end method

.method public abstract getServiceProvider()Lcom/netflix/falkor/ServiceProvider;
.end method

.method public abstract getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;
.end method
