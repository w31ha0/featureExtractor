.class public Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;
.super Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;
.source "FalkorRealmCacheHomeLolomoRealmProxy.java"

# interfaces
.implements Lio/realm/FalkorRealmCacheHomeLolomoRealmProxyInterface;
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
.field private columnInfo:Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy$FalkorRealmCacheHomeLolomoColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState",
            "<",
            "Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    const-string/jumbo v1, "lolomosRef"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    const-string/jumbo v1, "expiry"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->FIELD_NAMES:Ljava/util/List;

    .line 73
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;-><init>()V

    .line 76
    iget-object v0, p0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    .line 77
    return-void
.end method

.method public static copy(Lio/realm/Realm;Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;ZLjava/util/Map;)Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;"
        }
    .end annotation

    .prologue
    .line 308
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 309
    if-eqz v0, :cond_0

    .line 310
    check-cast v0, Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;

    .line 317
    :goto_0
    return-object v0

    .line 313
    :cond_0
    const-class v0, Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;

    move-object v1, v0

    .line 314
    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 315
    check-cast v1, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxyInterface;

    move-object v2, p1

    check-cast v2, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxyInterface;->realmGet$lolomosRef()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxyInterface;->realmSet$lolomosRef(Ljava/lang/String;)V

    move-object v1, v0

    .line 316
    check-cast v1, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxyInterface;

    check-cast p1, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxyInterface;

    invoke-interface {p1}, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxyInterface;->realmGet$expiry()Ljava/util/Date;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxyInterface;->realmSet$expiry(Ljava/util/Date;)V

    goto :goto_0
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;ZLjava/util/Map;)Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;"
        }
    .end annotation

    .prologue
    .line 292
    instance-of v0, p1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    iget-wide v0, v0, Lio/realm/BaseRealm;->threadId:J

    iget-wide v2, p0, Lio/realm/Realm;->threadId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 293
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_0
    instance-of v0, p1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    :goto_0
    return-object p1

    .line 298
    :cond_1
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 299
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 300
    if-eqz v0, :cond_2

    .line 301
    check-cast v0, Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;

    move-object p1, v0

    goto :goto_0

    .line 303
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->copy(Lio/realm/Realm;Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;ZLjava/util/Map;)Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;

    move-result-object p1

    goto :goto_0
.end method

.method public static createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 151
    const-string/jumbo v0, "FalkorRealmCacheHomeLolomo"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    const-string/jumbo v0, "FalkorRealmCacheHomeLolomo"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->create(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v6

    .line 153
    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "lolomosRef"

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v5, 0x1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v6, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 154
    new-instance v0, Lio/realm/Property;

    const-string/jumbo v1, "expiry"

    sget-object v2, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v6, v0}, Lio/realm/RealmObjectSchema;->add(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    move-object v0, v6

    .line 157
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "FalkorRealmCacheHomeLolomo"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    const-string/jumbo v0, "class_FalkorRealmCacheHomeLolomo"

    return-object v0
.end method

.method public static initTable(Lio/realm/internal/SharedRealm;)Lio/realm/internal/Table;
    .locals 4

    .prologue
    .line 161
    const-string/jumbo v0, "class_FalkorRealmCacheHomeLolomo"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    const-string/jumbo v0, "class_FalkorRealmCacheHomeLolomo"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 163
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "lolomosRef"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 164
    sget-object v1, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const-string/jumbo v2, "expiry"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 165
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->setPrimaryKey(Ljava/lang/String;)V

    .line 168
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "class_FalkorRealmCacheHomeLolomo"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0
.end method

.method public static validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy$FalkorRealmCacheHomeLolomoColumnInfo;
    .locals 8

    .prologue
    const-wide/16 v6, 0x2

    .line 172
    const-string/jumbo v0, "class_FalkorRealmCacheHomeLolomo"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 173
    const-string/jumbo v0, "class_FalkorRealmCacheHomeLolomo"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v2

    .line 174
    invoke-virtual {v2}, Lio/realm/internal/Table;->getColumnCount()J

    move-result-wide v4

    .line 175
    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    .line 176
    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    .line 177
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Field count is less than expected - expected 2 but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    if-eqz p1, :cond_2

    .line 180
    const-string/jumbo v0, "Field count is more than expected - expected 2 but was %1$d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v1, v3

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 186
    const-wide/16 v0, 0x0

    :goto_0
    cmp-long v6, v0, v4

    if-gez v6, :cond_3

    .line 187
    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->getColumnName(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    goto :goto_0

    .line 182
    :cond_2
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Field count is more than expected - expected 2 but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_3
    new-instance v0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy$FalkorRealmCacheHomeLolomoColumnInfo;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy$FalkorRealmCacheHomeLolomoColumnInfo;-><init>(Ljava/lang/String;Lio/realm/internal/Table;)V

    .line 192
    invoke-virtual {v2}, Lio/realm/internal/Table;->hasPrimaryKey()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 193
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Primary Key defined for field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lio/realm/internal/Table;->getPrimaryKey()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->getColumnName(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " was removed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_4
    const-string/jumbo v1, "lolomosRef"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 197
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'lolomosRef\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_5
    const-string/jumbo v1, "lolomosRef"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_6

    .line 200
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'String\' for field \'lolomosRef\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_6
    iget-wide v4, v0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy$FalkorRealmCacheHomeLolomoColumnInfo;->lolomosRefIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 203
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'lolomosRef\' does support null values in the existing Realm file. Remove @Required or @PrimaryKey from field \'lolomosRef\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_7
    const-string/jumbo v1, "expiry"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 206
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Missing field \'expiry\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_8
    const-string/jumbo v1, "expiry"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    if-eq v1, v3, :cond_9

    .line 209
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid type \'Date\' for field \'expiry\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_9
    iget-wide v4, v0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy$FalkorRealmCacheHomeLolomoColumnInfo;->expiryIndex:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v1

    if-nez v1, :cond_b

    .line 212
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Field \'expiry\' is required. Either set @Required to field \'expiry\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_a
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "The \'FalkorRealmCacheHomeLolomo\' class is missing from the schema for this Realm."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_b
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 481
    if-ne p0, p1, :cond_1

    .line 495
    :cond_0
    :goto_0
    return v0

    .line 482
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

    .line 483
    :cond_3
    check-cast p1, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;

    .line 485
    iget-object v2, p0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 486
    iget-object v3, p1, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 487
    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    if-nez v3, :cond_4

    .line 489
    :cond_6
    iget-object v2, p0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 490
    iget-object v3, p1, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v3

    .line 491
    if-eqz v2, :cond_8

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    if-nez v3, :cond_7

    .line 493
    :cond_9
    iget-object v2, p0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    iget-object v4, p1, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->proxyState:Lio/realm/ProxyState;

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

    .line 468
    iget-object v1, p0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 469
    iget-object v2, p0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 470
    iget-object v3, p0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    .line 473
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit16 v1, v1, 0x20f

    .line 474
    mul-int/lit8 v1, v1, 0x1f

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_0
    add-int/2addr v0, v1

    .line 475
    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v2, v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 476
    return v0

    :cond_1
    move v1, v0

    .line 473
    goto :goto_0
.end method

.method public realm$injectObjectContext()V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 84
    :cond_0
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 85
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy$FalkorRealmCacheHomeLolomoColumnInfo;

    iput-object v1, p0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->columnInfo:Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy$FalkorRealmCacheHomeLolomoColumnInfo;

    .line 86
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 87
    iget-object v1, p0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 88
    iget-object v1, p0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 89
    iget-object v1, p0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 90
    iget-object v1, p0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    goto :goto_0
.end method

.method public realmGet$expiry()Ljava/util/Date;
    .locals 4

    .prologue
    .line 121
    iget-object v0, p0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 122
    iget-object v0, p0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->columnInfo:Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy$FalkorRealmCacheHomeLolomoColumnInfo;

    iget-wide v2, v1, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy$FalkorRealmCacheHomeLolomoColumnInfo;->expiryIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const/4 v0, 0x0

    .line 125
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->columnInfo:Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy$FalkorRealmCacheHomeLolomoColumnInfo;

    iget-wide v2, v1, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy$FalkorRealmCacheHomeLolomoColumnInfo;->expiryIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getDate(J)Ljava/util/Date;

    move-result-object v0

    goto :goto_0
.end method

.method public realmGet$lolomosRef()Ljava/lang/String;
    .locals 4

    .prologue
    .line 95
    iget-object v0, p0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 96
    iget-object v0, p0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->columnInfo:Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy$FalkorRealmCacheHomeLolomoColumnInfo;

    iget-wide v2, v1, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy$FalkorRealmCacheHomeLolomoColumnInfo;->lolomosRefIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$proxyState()Lio/realm/ProxyState;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmSet$expiry(Ljava/util/Date;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 129
    iget-object v0, p0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    .line 134
    if-nez p1, :cond_1

    .line 135
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->columnInfo:Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy$FalkorRealmCacheHomeLolomoColumnInfo;

    iget-wide v2, v0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy$FalkorRealmCacheHomeLolomoColumnInfo;->expiryIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_0

    .line 138
    :cond_1
    invoke-interface {v4}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->columnInfo:Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy$FalkorRealmCacheHomeLolomoColumnInfo;

    iget-wide v1, v1, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy$FalkorRealmCacheHomeLolomoColumnInfo;->expiryIndex:J

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->setDate(JJLjava/util/Date;Z)V

    goto :goto_0

    .line 142
    :cond_2
    iget-object v0, p0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 143
    if-nez p1, :cond_3

    .line 144
    iget-object v0, p0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->columnInfo:Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy$FalkorRealmCacheHomeLolomoColumnInfo;

    iget-wide v2, v1, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy$FalkorRealmCacheHomeLolomoColumnInfo;->expiryIndex:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    goto :goto_0

    .line 147
    :cond_3
    iget-object v0, p0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->columnInfo:Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy$FalkorRealmCacheHomeLolomoColumnInfo;

    iget-wide v2, v1, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy$FalkorRealmCacheHomeLolomoColumnInfo;->expiryIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setDate(JLjava/util/Date;)V

    goto :goto_0
.end method

.method public realmSet$lolomosRef(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 100
    iget-object v0, p0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 105
    if-nez p1, :cond_1

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Trying to set non-nullable field \'lolomosRef\' to null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->columnInfo:Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy$FalkorRealmCacheHomeLolomoColumnInfo;

    iget-wide v2, v2, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy$FalkorRealmCacheHomeLolomoColumnInfo;->lolomosRefIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    goto :goto_0

    .line 112
    :cond_2
    iget-object v0, p0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 113
    if-nez p1, :cond_3

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Trying to set non-nullable field \'lolomosRef\' to null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_3
    iget-object v0, p0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->columnInfo:Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy$FalkorRealmCacheHomeLolomoColumnInfo;

    iget-wide v2, v1, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy$FalkorRealmCacheHomeLolomoColumnInfo;->lolomosRefIndex:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 446
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 447
    const-string/jumbo v0, "Invalid object"

    .line 458
    :goto_0
    return-object v0

    .line 449
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "FalkorRealmCacheHomeLolomo = ["

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 450
    const-string/jumbo v0, "{lolomosRef:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {p0}, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->realmGet$lolomosRef()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    const-string/jumbo v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    const-string/jumbo v0, "{expiry:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-virtual {p0}, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->realmGet$expiry()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->realmGet$expiry()Ljava/util/Date;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 456
    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    const-string/jumbo v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 455
    :cond_1
    const-string/jumbo v0, "null"

    goto :goto_1
.end method
