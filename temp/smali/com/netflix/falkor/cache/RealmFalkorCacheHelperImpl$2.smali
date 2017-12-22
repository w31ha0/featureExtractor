.class Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl$2;
.super Ljava/lang/Object;
.source "RealmFalkorCacheHelperImpl.java"

# interfaces
.implements Lio/realm/Realm$Transaction;


# instance fields
.field final synthetic this$0:Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;


# direct methods
.method constructor <init>(Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl$2;->this$0:Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .locals 4

    .prologue
    .line 279
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 281
    const-class v1, Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;

    invoke-virtual {p1, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string/jumbo v2, "expiry"

    invoke-virtual {v1, v2, v0}, Lio/realm/RealmQuery;->lessThan(Ljava/lang/String;Ljava/util/Date;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    .line 282
    invoke-static {}, Lcom/netflix/falkor/cache/FalkorCache;->getMonitor()Lcom/netflix/falkor/cache/FalkorCacheMonitor;

    move-result-object v2

    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->delete(I)V

    .line 283
    invoke-virtual {v1}, Lio/realm/RealmResults;->deleteAllFromRealm()Z

    .line 285
    const-class v1, Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;

    invoke-virtual {p1, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string/jumbo v2, "expiry"

    invoke-virtual {v1, v2, v0}, Lio/realm/RealmQuery;->lessThan(Ljava/lang/String;Ljava/util/Date;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Lio/realm/RealmResults;->size()I

    move-result v1

    .line 287
    invoke-static {}, Lcom/netflix/falkor/cache/FalkorCache;->getMonitor()Lcom/netflix/falkor/cache/FalkorCacheMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->delete(I)V

    .line 288
    invoke-virtual {v0}, Lio/realm/RealmResults;->deleteAllFromRealm()Z

    .line 290
    return-void
.end method
