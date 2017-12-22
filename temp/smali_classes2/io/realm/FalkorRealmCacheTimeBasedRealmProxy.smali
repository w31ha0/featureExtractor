.class public Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;
.super Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;
.source "FalkorRealmCacheTimeBasedRealmProxy.java"

# interfaces
.implements Lio/realm/FalkorRealmCacheTimeBasedRealmProxyInterface;
.implements Lio/realm/internal/RealmObjectProxy;


# static fields
.field private static final FIELD_NAMES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private columnInfo:Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState",
            "<",
            "Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    const-string/jumbo v1, "path"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    const-string/jumbo v1, "payload"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    const-string/jumbo v1, "expiry"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    const-string/jumbo v1, "lastModified"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    const-string/jumbo v1, "sentinel"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->FIELD_NAMES:Ljava/util/List;

    .line 88
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;-><init>()V

    .line 91
    iget-object v0, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    .line 92
    return-void
.end method

.method public static copy(Lio/realm/Realm;Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;ZLjava/util/Map;)Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;"
        }
    .end annotation

    .prologue
    .line 513
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 514
    if-eqz v0, :cond_0

    .line 515
    check-cast v0, Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;

    .line 524
    :goto_0
    return-object v0

    .line 518
    :cond_0
    const-class v1, Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;

    move-object v0, p1

    check-cast v0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxyInterface;

    invoke-interface {v0}, Lio/realm/FalkorRealmCacheTimeBasedRealmProxyInterface;->realmGet$path()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v1, v0, v2, v3}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;

    move-object v1, v0

    .line 519
    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 520
    check-cast v1, Lio/realm/FalkorRealmCacheTimeBasedRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/FalkorRealmCacheTimeBasedRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/FalkorRealmCacheTimeBasedRealmProxyInterface;->realmGet$payload()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/FalkorRealmCacheTimeBasedRealmProxyInterface;->realmSet$payload(Ljava/lang/String;)V

    move-object v1, v0

    .line 521
    check-cast v1, Lio/realm/FalkorRealmCacheTimeBasedRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/FalkorRealmCacheTimeBasedRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/FalkorRealmCacheTimeBasedRealmProxyInterface;->realmGet$expiry()Ljava/util/Date;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/FalkorRealmCacheTimeBasedRealmProxyInterface;->realmSet$expiry(Ljava/util/Date;)V

    move-object v1, v0

    .line 522
    check-cast v1, Lio/realm/FalkorRealmCacheTimeBasedRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/FalkorRealmCacheTimeBasedRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/FalkorRealmCacheTimeBasedRealmProxyInterface;->realmGet$lastModified()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lio/realm/FalkorRealmCacheTimeBasedRealmProxyInterface;->realmSet$lastModified(J)V

    move-object v1, v0

    .line 523
    check-cast v1, Lio/realm/FalkorRealmCacheTimeBasedRealmProxyInterface;

    check-cast p1, Lio/realm/FalkorRealmCacheTimeBasedRealmProxyInterface;

    invoke-interface {p1}, Lio/realm/FalkorRealmCacheTimeBasedRealmProxyInterface;->realmGet$sentinel()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/FalkorRealmCacheTimeBasedRealmProxyInterface;->realmSet$sentinel(Z)V

    goto :goto_0
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;ZLjava/util/Map;)Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 474
    instance-of v2, p1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v2}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v2}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    iget-wide v2, v2, Lio/realm/BaseRealm;->threadId:J

    iget-wide v6, p0, Lio/realm/Realm;->threadId:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    .line 475
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 477
    :cond_0
    instance-of v2, p1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v2}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v2}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 507
    :goto_0
    return-object p1

    .line 480
    :cond_1
    sget-object v2, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v2}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/BaseRealm$RealmObjectContext;

    .line 481
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    .line 482
    if-eqz v3, :cond_2

    .line 483
    check-cast v3, Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;

    move-object p1, v3

    goto :goto_0

    .line 485
    :cond_2
    const/4 v5, 0x0

    .line 487
    if-eqz p2, :cond_5

    .line 488
    const-class v3, Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;

    invoke-virtual {p0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v6

    .line 489
    invoke-virtual {v6}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v8

    move-object v3, p1

    .line 490
    check-cast v3, Lio/realm/FalkorRealmCacheTimeBasedRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/FalkorRealmCacheTimeBasedRealmProxyInterface;->realmGet$path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v8, v9, v3}, Lio/realm/internal/Table;->findFirstString(JLjava/lang/String;)J

    move-result-wide v8

    .line 491
    const-wide/16 v10, -0x1

    cmp-long v3, v8, v10

    if-eqz v3, :cond_3

    .line 493
    :try_start_0
    invoke-virtual {v6, v8, v9}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v4

    iget-object v3, p0, Lio/realm/Realm;->schema:Lio/realm/RealmSchema;

    const-class v5, Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;

    invoke-virtual {v3, v5}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 494
    new-instance v4, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;

    invoke-direct {v4}, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;-><init>()V

    .line 495
    move-object v0, v4

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    move-object v3, v0

    invoke-interface {p3, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    invoke-virtual {v2}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    move v2, p2

    .line 504
    :goto_1
    if-eqz v2, :cond_4

    .line 505
    invoke-static {p0, v4, p1, p3}, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->update(Lio/realm/Realm;Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;Ljava/util/Map;)Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;

    move-result-object p1

    goto :goto_0

    .line 497
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    throw v3

    :cond_3
    move v2, v4

    move-object v4, v5

    .line 500
    goto :goto_1

    .line 507
    :cond_4
    invoke-static {p0, p1, p2, p3}, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->copy(Lio/realm/Realm;Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;ZLjava/util/Map;)Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;

    move-result-object p1

    goto :goto_0

    :cond_5
    move v2, p2

    move-object v4, v5

    goto :goto_1
.end method

.method public static createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 224
    const-string/jumbo v0, "FalkorRealmCacheTimeBased"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    const-string/jumbo v0, "FalkorRealmCacheTimeBased"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->create(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v10

    .line 226
    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "path"

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 227
    new-instance v4, Lio/realm/Property;

    const-string/jumbo v5, "payload"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v7

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 228
    new-instance v4, Lio/realm/Property;

    const-string/jumbo v5, "expiry"

    sget-object v6, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v7

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 229
    new-instance v4, Lio/realm/Property;

    const-string/jumbo v5, "lastModified"

    sget-object v6, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 230
    new-instance v4, Lio/realm/Property;

    const-string/jumbo v5, "sentinel"

    sget-object v6, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    move-object v0, v10

    .line 233
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "FalkorRealmCacheTimeBased"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    const-string/jumbo v0, "class_FalkorRealmCacheTimeBased"

    return-object v0
.end method

.method public static initTable(Lio/realm/internal/SharedRealm;)Lio/realm/internal/Table;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 237
    const-string/jumbo v0, "class_FalkorRealmCacheTimeBased"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    const-string/jumbo v0, "class_FalkorRealmCacheTimeBased"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 239
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "path"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 240
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "payload"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 241
    sget-object v1, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "expiry"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 242
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "lastModified"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 243
    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "sentinel"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 244
    const-string/jumbo v1, "path"

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->addSearchIndex(J)V

    .line 245
    const-string/jumbo v1, "path"

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->setPrimaryKey(Ljava/lang/String;)V

    .line 248
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "class_FalkorRealmCacheTimeBased"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0
.end method

.method static update(Lio/realm/Realm;Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;Ljava/util/Map;)Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;",
            "Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;",
            "Ljava/util/Map",
            "<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;"
        }
    .end annotation

    .prologue
    .line 699
    move-object v0, p1

    check-cast v0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/FalkorRealmCacheTimeBasedRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/FalkorRealmCacheTimeBasedRealmProxyInterface;->realmGet$payload()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/FalkorRealmCacheTimeBasedRealmProxyInterface;->realmSet$payload(Ljava/lang/String;)V

    move-object v0, p1

    .line 700
    check-cast v0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/FalkorRealmCacheTimeBasedRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/FalkorRealmCacheTimeBasedRealmProxyInterface;->realmGet$expiry()Ljava/util/Date;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/FalkorRealmCacheTimeBasedRealmProxyInterface;->realmSet$expiry(Ljava/util/Date;)V

    move-object v0, p1

    .line 701
    check-cast v0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxyInterface;

    move-object v1, p2

    check-cast v1, Lio/realm/FalkorRealmCacheTimeBasedRealmProxyInterface;

    invoke-interface {v1}, Lio/realm/FalkorRealmCacheTimeBasedRealmProxyInterface;->realmGet$lastModified()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lio/realm/FalkorRealmCacheTimeBasedRealmProxyInterface;->realmSet$lastModified(J)V

    move-object v0, p1

    .line 702
    check-cast v0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxyInterface;

    check-cast p2, Lio/realm/FalkorRealmCacheTimeBasedRealmProxyInterface;

    invoke-interface {p2}, Lio/realm/FalkorRealmCacheTimeBasedRealmProxyInterface;->realmGet$sentinel()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/FalkorRealmCacheTimeBasedRealmProxyInterface;->realmSet$sentinel(Z)V

    .line 703
    return-object p1
.end method

.method public static validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;
    .locals 8

    .prologue
    const-wide/16 v6, 0x5

    .line 252
    const-string/jumbo v0, "class_FalkorRealmCacheTimeBased"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 253
    const-string/jumbo v0, "class_FalkorRealmCacheTimeBased"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v2

    .line 254
    invoke-virtual {v2}, Lio/realm/internal/Table;->getColumnCount()J

    move-result-wide v4

    .line 255
    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    .line 256
    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    .line 257
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Field count is less than expected - expected 5 but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_0
    if-eqz p1, :cond_2

    .line 260
    const-string/jumbo v0, "Field count is more than expected - expected 5 but was %1$d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v1, v3

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 266
    const-wide/16 v0, 0x0

    :goto_0
    cmp-long v6, v0, v4

    if-gez v6, :cond_3

    .line 267
    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->getColumnName(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    goto :goto_0

    .line 262
    :cond_2
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Field count is more than expected - expected 5 but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_3
    new-instance v0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;-><init>(Ljava/lang/String;Lio/realm/internal/Table;)V

    .line 272
    invoke-virtual {v2}, Lio/realm/internal/Table;->hasPrimaryKey()Z

    move-result v1

    if-nez v1, :cond_4

    .line 273
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Primary key not defined for field \'path\' in existing Realm file. @PrimaryKey was added."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_4
    invoke-virtual {v2}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v4

    iget-wide v6, v0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;->pathIndex:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    .line 276
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Primary Key annotation definition was changed, from field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->getColumnName(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to field path"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_5
    const-string/jumbo v1, "path"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 281
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'path\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_6
    const-string/jumbo v1, "path"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_7

    .line 284
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'path\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_7
    iget-wide v4, v0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;->pathIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-wide v4, v0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;->pathIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->findFirstNull(J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_8

    .line 287
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot migrate an object with null value in field \'path\'. Either maintain the same type for primary key field \'path\', or remove the object with null value before migration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_8
    const-string/jumbo v1, "path"

    invoke-virtual {v2, v1}, Lio/realm/internal/Table;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->hasSearchIndex(J)Z

    move-result v1

    if-nez v1, :cond_9

    .line 290
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Index not defined for field \'path\' in existing Realm file. Either set @Index or migrate using io.realm.internal.Table.removeSearchIndex()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_9
    const-string/jumbo v1, "payload"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 293
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'payload\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_a
    const-string/jumbo v1, "payload"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_b

    .line 296
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'payload\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_b
    iget-wide v4, v0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;->payloadIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_c

    .line 299
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'payload\' is required. Either set @Required to field \'payload\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_c
    const-string/jumbo v1, "expiry"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 302
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'expiry\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_d
    const-string/jumbo v1, "expiry"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_e

    .line 305
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'Date\' for field \'expiry\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_e
    iget-wide v4, v0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;->expiryIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_f

    .line 308
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'expiry\' is required. Either set @Required to field \'expiry\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_f
    const-string/jumbo v1, "lastModified"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 311
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'lastModified\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_10
    const-string/jumbo v1, "lastModified"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_11

    .line 314
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'long\' for field \'lastModified\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_11
    iget-wide v4, v0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;->lastModifiedIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 317
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'lastModified\' does support null values in the existing Realm file. Use corresponding boxed type for field \'lastModified\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_12
    const-string/jumbo v1, "sentinel"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 320
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'sentinel\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_13
    const-string/jumbo v1, "sentinel"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v3, :cond_14

    .line 323
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'boolean\' for field \'sentinel\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_14
    iget-wide v4, v0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;->sentinelIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 326
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'sentinel\' does support null values in the existing Realm file. Use corresponding boxed type for field \'sentinel\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_15
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "The \'FalkorRealmCacheTimeBased\' class is missing from the schema for this Realm."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_16
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 755
    if-ne p0, p1, :cond_1

    .line 769
    :cond_0
    :goto_0
    return v0

    .line 756
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 757
    :cond_3
    check-cast p1, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;

    .line 759
    iget-object v2, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 760
    iget-object v3, p1, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 761
    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    if-nez v3, :cond_4

    .line 763
    :cond_6
    iget-object v2, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 764
    iget-object v3, p1, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v3

    .line 765
    if-eqz v2, :cond_8

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    if-nez v3, :cond_7

    .line 767
    :cond_9
    iget-object v2, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    iget-object v4, p1, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 742
    iget-object v1, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 743
    iget-object v2, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 744
    iget-object v3, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    .line 747
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit16 v1, v1, 0x20f

    .line 748
    mul-int/lit8 v1, v1, 0x1f

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_0
    add-int/2addr v0, v1

    .line 749
    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v2, v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 750
    return v0

    :cond_1
    move v1, v0

    .line 747
    goto :goto_0
.end method

.method public realm$injectObjectContext()V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 99
    :cond_0
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 100
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;

    iput-object v1, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->columnInfo:Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;

    .line 101
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 102
    iget-object v1, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 103
    iget-object v1, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 104
    iget-object v1, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 105
    iget-object v1, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    goto :goto_0
.end method

.method public realmGet$expiry()Ljava/util/Date;
    .locals 4

    .prologue
    .line 154
    iget-object v0, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 155
    iget-object v0, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->columnInfo:Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;

    iget-wide v2, v1, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;->expiryIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 158
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->columnInfo:Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;

    iget-wide v2, v1, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;->expiryIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getDate(J)Ljava/util/Date;

    move-result-object v0

    goto :goto_0
.end method

.method public realmGet$lastModified()J
    .locals 4

    .prologue
    .line 185
    iget-object v0, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 186
    iget-object v0, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->columnInfo:Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;

    iget-wide v2, v1, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;->lastModifiedIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$path()Ljava/lang/String;
    .locals 4

    .prologue
    .line 110
    iget-object v0, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 111
    iget-object v0, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->columnInfo:Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;

    iget-wide v2, v1, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;->pathIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$payload()Ljava/lang/String;
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 127
    iget-object v0, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->columnInfo:Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;

    iget-wide v2, v1, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;->payloadIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$proxyState()Lio/realm/ProxyState;
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$sentinel()Z
    .locals 4

    .prologue
    .line 205
    iget-object v0, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 206
    iget-object v0, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->columnInfo:Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;

    iget-wide v2, v1, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;->sentinelIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmSet$expiry(Ljava/util/Date;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 162
    iget-object v0, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    .line 167
    if-nez p1, :cond_1

    .line 168
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->columnInfo:Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;

    iget-wide v2, v0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;->expiryIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    .line 171
    :cond_1
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->columnInfo:Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;

    iget-wide v1, v1, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;->expiryIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->setDate(JJLjava/util/Date;Z)V

    goto :goto_0

    .line 175
    :cond_2
    iget-object v0, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 176
    if-nez p1, :cond_3

    .line 177
    iget-object v0, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->columnInfo:Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;

    iget-wide v2, v1, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;->expiryIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    .line 180
    :cond_3
    iget-object v0, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->columnInfo:Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;

    iget-wide v2, v1, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;->expiryIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setDate(JLjava/util/Date;)V

    goto :goto_0
.end method

.method public realmSet$lastModified(J)V
    .locals 9

    .prologue
    .line 190
    iget-object v0, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 195
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->columnInfo:Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;

    iget-wide v2, v2, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;->lastModifiedIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v8, 0x1

    move-wide v6, p1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 200
    iget-object v0, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->columnInfo:Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;

    iget-wide v2, v1, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;->lastModifiedIndex:J

    invoke-interface {v0, v2, v3, p1, p2}, Lio/realm/internal/Row;->setLong(JJ)V

    goto :goto_0
.end method

.method public realmSet$path(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 121
    new-instance v0, Lio/realm/exceptions/RealmException;

    const-string/jumbo v1, "Primary key field \'path\' cannot be changed after object was created."

    invoke-direct {v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public realmSet$payload(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 131
    iget-object v0, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    .line 136
    if-nez p1, :cond_1

    .line 137
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->columnInfo:Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;

    iget-wide v2, v0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;->payloadIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    .line 140
    :cond_1
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->columnInfo:Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;

    iget-wide v1, v1, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;->payloadIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    goto :goto_0

    .line 144
    :cond_2
    iget-object v0, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 145
    if-nez p1, :cond_3

    .line 146
    iget-object v0, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->columnInfo:Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;

    iget-wide v2, v1, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;->payloadIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    .line 149
    :cond_3
    iget-object v0, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->columnInfo:Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;

    iget-wide v2, v1, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;->payloadIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$sentinel(Z)V
    .locals 8

    .prologue
    .line 210
    iget-object v0, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 215
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->columnInfo:Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;

    iget-wide v2, v2, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;->sentinelIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    goto :goto_0

    .line 219
    :cond_1
    iget-object v0, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 220
    iget-object v0, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->columnInfo:Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;

    iget-wide v2, v1, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;->sentinelIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 708
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 709
    const-string/jumbo v0, "Invalid object"

    .line 732
    :goto_0
    return-object v0

    .line 711
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "FalkorRealmCacheTimeBased = ["

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 712
    const-string/jumbo v0, "{path:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    invoke-virtual {p0}, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->realmGet$path()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    const-string/jumbo v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    const-string/jumbo v0, "{payload:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    invoke-virtual {p0}, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->realmGet$payload()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->realmGet$payload()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    const-string/jumbo v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    const-string/jumbo v0, "{expiry:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    invoke-virtual {p0}, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->realmGet$expiry()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->realmGet$expiry()Ljava/util/Date;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 722
    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    const-string/jumbo v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    const-string/jumbo v0, "{lastModified:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    invoke-virtual {p0}, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->realmGet$lastModified()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 726
    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    const-string/jumbo v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    const-string/jumbo v0, "{sentinel:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    invoke-virtual {p0}, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->realmGet$sentinel()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 730
    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    const-string/jumbo v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 717
    :cond_1
    const-string/jumbo v0, "null"

    goto :goto_1

    .line 721
    :cond_2
    const-string/jumbo v0, "null"

    goto :goto_2
.end method
