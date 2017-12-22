.class Lcom/netflix/falkor/cache/FalkorCache$LruBackup$LruHandler;
.super Landroid/os/Handler;
.source "FalkorCache.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/falkor/cache/FalkorCache$1;)V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/netflix/falkor/cache/FalkorCache$LruBackup$LruHandler;-><init>()V

    return-void
.end method

.method private evictRealmKeys()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 296
    invoke-static {}, Lcom/netflix/falkor/cache/FalkorCache$LruBackup;->access$200()[Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 297
    :try_start_0
    invoke-static {}, Lcom/netflix/falkor/cache/FalkorCache$LruBackup;->access$300()Ljava/util/LinkedList;

    move-result-object v5

    .line 298
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Lcom/netflix/falkor/cache/FalkorCache$LruBackup;->access$302(Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 299
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    const/4 v1, 0x0

    .line 303
    :try_start_1
    invoke-static {}, Lcom/netflix/falkor/cache/FalkorCache$RealmAccess;->getInstance()Lio/realm/Realm;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v3

    .line 304
    :try_start_2
    const-class v0, Lcom/netflix/falkor/cache/FalkorRealmCacheLruBased;

    invoke-virtual {v3, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmResults;->size()I

    move-result v6

    move v1, v2

    .line 306
    :goto_0
    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 307
    invoke-virtual {v5}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 308
    const-class v7, Lcom/netflix/falkor/cache/FalkorRealmCacheLruBased;

    invoke-virtual {v3, v7}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v7

    const-string/jumbo v8, "path"

    invoke-virtual {v7, v8, v0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v7

    .line 309
    invoke-virtual {v7}, Lio/realm/RealmResults;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 310
    if-nez v2, :cond_0

    .line 312
    invoke-static {v3}, Lcom/netflix/falkor/cache/FalkorCache$RealmAccess;->beginTransaction(Lio/realm/Realm;)V

    move v2, v4

    .line 315
    :cond_0
    invoke-virtual {v7}, Lio/realm/RealmResults;->size()I

    move-result v0

    add-int/2addr v0, v1

    .line 316
    invoke-static {}, Lcom/netflix/falkor/cache/FalkorCache;->getMonitor()Lcom/netflix/falkor/cache/FalkorCacheMonitor;

    move-result-object v1

    invoke-virtual {v7}, Lio/realm/RealmResults;->size()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->delete(I)V

    .line 317
    invoke-virtual {v7}, Lio/realm/RealmResults;->deleteAllFromRealm()Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move v1, v2

    :goto_1
    move v2, v1

    move v1, v0

    .line 319
    goto :goto_0

    .line 299
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 320
    :cond_1
    if-eqz v2, :cond_2

    .line 321
    :try_start_4
    invoke-static {v3}, Lcom/netflix/falkor/cache/FalkorCache$RealmAccess;->commitTransaction(Lio/realm/Realm;)V

    .line 323
    :cond_2
    const-class v0, Lcom/netflix/falkor/cache/FalkorRealmCacheLruBased;

    invoke-virtual {v3, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmResults;->size()I

    move-result v0

    .line 324
    const-string/jumbo v4, "FalkorCache.LruBackup"

    const-string/jumbo v5, "Entries deleted : %d (%d -> %d)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v8

    const/4 v1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v1

    const/4 v1, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v1

    invoke-static {v4, v5, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 331
    if-eqz v3, :cond_3

    .line 332
    invoke-static {v3}, Lcom/netflix/falkor/cache/FalkorCache$RealmAccess;->close(Lio/realm/Realm;)V

    .line 335
    :cond_3
    return-void

    .line 325
    :catch_0
    move-exception v0

    .line 326
    :goto_2
    if-eqz v2, :cond_4

    .line 327
    :try_start_5
    invoke-static {v1}, Lcom/netflix/falkor/cache/FalkorCache$RealmAccess;->cancelTransaction(Lio/realm/Realm;)V

    .line 329
    :cond_4
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 331
    :catchall_1
    move-exception v0

    move-object v3, v1

    :goto_3
    if-eqz v3, :cond_5

    .line 332
    invoke-static {v3}, Lcom/netflix/falkor/cache/FalkorCache$RealmAccess;->close(Lio/realm/Realm;)V

    :cond_5
    throw v0

    .line 331
    :catchall_2
    move-exception v0

    move-object v3, v1

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_3

    .line 325
    :catch_1
    move-exception v0

    move-object v1, v3

    goto :goto_2

    :cond_6
    move v0, v1

    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 289
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 290
    invoke-direct {p0}, Lcom/netflix/falkor/cache/FalkorCache$LruBackup$LruHandler;->evictRealmKeys()V

    .line 292
    :cond_0
    return-void
.end method
