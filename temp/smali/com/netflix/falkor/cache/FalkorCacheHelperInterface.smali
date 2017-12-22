.class public interface abstract Lcom/netflix/falkor/cache/FalkorCacheHelperInterface;
.super Ljava/lang/Object;
.source "FalkorCacheHelperInterface.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract addToCache(Ljava/util/ArrayList;Lcom/google/gson/JsonElement;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/gson/JsonElement;",
            ")V"
        }
    .end annotation
.end method

.method public abstract beginTransaction()V
.end method

.method public abstract cancelTransaction()V
.end method

.method public abstract close()V
.end method

.method public abstract commitTransaction()V
.end method

.method public abstract deleteSubPath(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract expireLolomoListsFromCache()V
.end method

.method public abstract purgeCache()V
.end method

.method public abstract retrieveFromCache(Ljava/util/List;ILjava/lang/String;Lcom/netflix/falkor/BranchNode;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/lang/String;",
            "Lcom/netflix/falkor/BranchNode;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
