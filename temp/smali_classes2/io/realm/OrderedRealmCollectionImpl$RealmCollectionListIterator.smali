.class Lio/realm/OrderedRealmCollectionImpl$RealmCollectionListIterator;
.super Lio/realm/internal/Collection$ListIterator;
.source "OrderedRealmCollectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/internal/Collection$ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/OrderedRealmCollectionImpl;


# direct methods
.method constructor <init>(Lio/realm/OrderedRealmCollectionImpl;I)V
    .locals 1

    .prologue
    .line 540
    iput-object p1, p0, Lio/realm/OrderedRealmCollectionImpl$RealmCollectionListIterator;->this$0:Lio/realm/OrderedRealmCollectionImpl;

    .line 541
    iget-object v0, p1, Lio/realm/OrderedRealmCollectionImpl;->collection:Lio/realm/internal/Collection;

    invoke-direct {p0, v0, p2}, Lio/realm/internal/Collection$ListIterator;-><init>(Lio/realm/internal/Collection;I)V

    .line 542
    return-void
.end method


# virtual methods
.method protected convertRowToObject(Lio/realm/internal/UncheckedRow;)Lio/realm/RealmModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/UncheckedRow;",
            ")TE;"
        }
    .end annotation

    .prologue
    .line 546
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl$RealmCollectionListIterator;->this$0:Lio/realm/OrderedRealmCollectionImpl;

    iget-object v0, v0, Lio/realm/OrderedRealmCollectionImpl;->realm:Lio/realm/BaseRealm;

    iget-object v1, p0, Lio/realm/OrderedRealmCollectionImpl$RealmCollectionListIterator;->this$0:Lio/realm/OrderedRealmCollectionImpl;

    iget-object v1, v1, Lio/realm/OrderedRealmCollectionImpl;->classSpec:Ljava/lang/Class;

    iget-object v2, p0, Lio/realm/OrderedRealmCollectionImpl$RealmCollectionListIterator;->this$0:Lio/realm/OrderedRealmCollectionImpl;

    iget-object v2, v2, Lio/realm/OrderedRealmCollectionImpl;->className:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;Ljava/lang/String;Lio/realm/internal/UncheckedRow;)Lio/realm/RealmModel;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic convertRowToObject(Lio/realm/internal/UncheckedRow;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 539
    invoke-virtual {p0, p1}, Lio/realm/OrderedRealmCollectionImpl$RealmCollectionListIterator;->convertRowToObject(Lio/realm/internal/UncheckedRow;)Lio/realm/RealmModel;

    move-result-object v0

    return-object v0
.end method
