.class Lio/realm/internal/Collection$CollectionObserverPair;
.super Lio/realm/internal/ObserverPairList$ObserverPair;
.source "Collection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/realm/internal/ObserverPairList$ObserverPair",
        "<TT;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/internal/Collection;


# direct methods
.method public constructor <init>(Lio/realm/internal/Collection;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    iput-object p1, p0, Lio/realm/internal/Collection$CollectionObserverPair;->this$0:Lio/realm/internal/Collection;

    .line 36
    invoke-direct {p0, p2, p3}, Lio/realm/internal/ObserverPairList$ObserverPair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/Object;Lio/realm/OrderedCollectionChangeSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lio/realm/OrderedCollectionChangeSet;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lio/realm/internal/Collection$CollectionObserverPair;->listener:Ljava/lang/Object;

    instance-of v0, v0, Lio/realm/OrderedRealmCollectionChangeListener;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lio/realm/internal/Collection$CollectionObserverPair;->listener:Ljava/lang/Object;

    check-cast v0, Lio/realm/OrderedRealmCollectionChangeListener;

    invoke-interface {v0, p1, p2}, Lio/realm/OrderedRealmCollectionChangeListener;->onChange(Ljava/lang/Object;Lio/realm/OrderedCollectionChangeSet;)V

    .line 49
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lio/realm/internal/Collection$CollectionObserverPair;->listener:Ljava/lang/Object;

    instance-of v0, v0, Lio/realm/RealmChangeListener;

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lio/realm/internal/Collection$CollectionObserverPair;->listener:Ljava/lang/Object;

    check-cast v0, Lio/realm/RealmChangeListener;

    invoke-interface {v0, p1}, Lio/realm/RealmChangeListener;->onChange(Ljava/lang/Object;)V

    goto :goto_0

    .line 47
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported listener type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/realm/internal/Collection$CollectionObserverPair;->listener:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
