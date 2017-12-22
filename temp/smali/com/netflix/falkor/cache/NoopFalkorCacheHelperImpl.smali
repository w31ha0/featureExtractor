.class Lcom/netflix/falkor/cache/NoopFalkorCacheHelperImpl;
.super Ljava/lang/Object;
.source "NoopFalkorCacheHelperImpl.java"

# interfaces
.implements Lcom/netflix/falkor/cache/FalkorCacheHelperInterface;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addToCache(Ljava/util/ArrayList;Lcom/google/gson/JsonElement;)V
    .locals 0
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

    .prologue
    .line 33
    return-void
.end method

.method public beginTransaction()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public cancelTransaction()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public commitTransaction()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public deleteSubPath(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    return-void
.end method

.method public expireLolomoListsFromCache()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public purgeCache()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method public retrieveFromCache(Ljava/util/List;ILjava/lang/String;Lcom/netflix/falkor/BranchNode;)Ljava/lang/Object;
    .locals 1
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

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method
