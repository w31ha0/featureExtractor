.class Lio/realm/FalkorRealmModuleMediator;
.super Lio/realm/internal/RealmProxyMediator;
.source "FalkorRealmModuleMediator.java"


# annotations
.annotation runtime Lio/realm/annotations/RealmModule;
.end annotation


# static fields
.field private static final MODEL_CLASSES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/RealmModel;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 30
    const-class v1, Lcom/netflix/falkor/cache/FalkorRealmCacheLruBased;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    const-class v1, Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    const-class v1, Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/realm/FalkorRealmModuleMediator;->MODEL_CLASSES:Ljava/util/Set;

    .line 34
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lio/realm/internal/RealmProxyMediator;-><init>()V

    return-void
.end method


# virtual methods
.method public copyOrUpdate(Lio/realm/Realm;Lio/realm/RealmModel;ZLjava/util/Map;)Lio/realm/RealmModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/Realm;",
            "TE;Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)TE;"
        }
    .end annotation

    .prologue
    .line 141
    instance-of v0, p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 143
    :goto_0
    const-class v1, Lcom/netflix/falkor/cache/FalkorRealmCacheLruBased;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    check-cast p2, Lcom/netflix/falkor/cache/FalkorRealmCacheLruBased;

    invoke-static {p1, p2, p3, p4}, Lio/realm/FalkorRealmCacheLruBasedRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/netflix/falkor/cache/FalkorRealmCacheLruBased;ZLjava/util/Map;)Lcom/netflix/falkor/cache/FalkorRealmCacheLruBased;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    .line 148
    :goto_1
    return-object v0

    .line 141
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 145
    :cond_1
    const-class v1, Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 146
    check-cast p2, Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;

    invoke-static {p1, p2, p3, p4}, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;ZLjava/util/Map;)Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    goto :goto_1

    .line 147
    :cond_2
    const-class v1, Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 148
    check-cast p2, Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;

    invoke-static {p1, p2, p3, p4}, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;ZLjava/util/Map;)Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    goto :goto_1

    .line 150
    :cond_3
    invoke-static {v0}, Lio/realm/FalkorRealmModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
.end method

.method public createRealmObjectSchema(Ljava/lang/Class;Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/RealmModel;",
            ">;",
            "Lio/realm/RealmSchema;",
            ")",
            "Lio/realm/RealmObjectSchema;"
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {p1}, Lio/realm/FalkorRealmModuleMediator;->checkClass(Ljava/lang/Class;)V

    .line 55
    const-class v0, Lcom/netflix/falkor/cache/FalkorRealmCacheLruBased;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-static {p2}, Lio/realm/FalkorRealmCacheLruBasedRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    .line 57
    :cond_0
    const-class v0, Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    invoke-static {p2}, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    goto :goto_0

    .line 59
    :cond_1
    const-class v0, Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    invoke-static {p2}, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->createRealmObjectSchema(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_2
    invoke-static {p1}, Lio/realm/FalkorRealmModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
.end method

.method public createTable(Ljava/lang/Class;Lio/realm/internal/SharedRealm;)Lio/realm/internal/Table;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/RealmModel;",
            ">;",
            "Lio/realm/internal/SharedRealm;",
            ")",
            "Lio/realm/internal/Table;"
        }
    .end annotation

    .prologue
    .line 38
    invoke-static {p1}, Lio/realm/FalkorRealmModuleMediator;->checkClass(Ljava/lang/Class;)V

    .line 40
    const-class v0, Lcom/netflix/falkor/cache/FalkorRealmCacheLruBased;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-static {p2}, Lio/realm/FalkorRealmCacheLruBasedRealmProxy;->initTable(Lio/realm/internal/SharedRealm;)Lio/realm/internal/Table;

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    .line 42
    :cond_0
    const-class v0, Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    invoke-static {p2}, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->initTable(Lio/realm/internal/SharedRealm;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0

    .line 44
    :cond_1
    const-class v0, Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    invoke-static {p2}, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->initTable(Lio/realm/internal/SharedRealm;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0

    .line 47
    :cond_2
    invoke-static {p1}, Lio/realm/FalkorRealmModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
.end method

.method public getModelClasses()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/RealmModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 134
    sget-object v0, Lio/realm/FalkorRealmModuleMediator;->MODEL_CLASSES:Ljava/util/Set;

    return-object v0
.end method

.method public getTableName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/RealmModel;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 98
    invoke-static {p1}, Lio/realm/FalkorRealmModuleMediator;->checkClass(Ljava/lang/Class;)V

    .line 100
    const-class v0, Lcom/netflix/falkor/cache/FalkorRealmCacheLruBased;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-static {}, Lio/realm/FalkorRealmCacheLruBasedRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    .line 102
    :cond_0
    const-class v0, Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    invoke-static {}, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 104
    :cond_1
    const-class v0, Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    invoke-static {}, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->getTableName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_2
    invoke-static {p1}, Lio/realm/FalkorRealmModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
.end method

.method public newInstance(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)Lio/realm/RealmModel;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Object;",
            "Lio/realm/internal/Row;",
            "Lio/realm/internal/ColumnInfo;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)TE;"
        }
    .end annotation

    .prologue
    .line 113
    sget-object v1, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v1}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/BaseRealm$RealmObjectContext;

    .line 115
    :try_start_0
    move-object v0, p2

    check-cast v0, Lio/realm/BaseRealm;

    move-object v2, v0

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 116
    invoke-static {p1}, Lio/realm/FalkorRealmModuleMediator;->checkClass(Ljava/lang/Class;)V

    .line 118
    const-class v2, Lcom/netflix/falkor/cache/FalkorRealmCacheLruBased;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    new-instance v2, Lio/realm/FalkorRealmCacheLruBasedRealmProxy;

    invoke-direct {v2}, Lio/realm/FalkorRealmCacheLruBasedRealmProxy;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/RealmModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 123
    :goto_0
    return-object v2

    .line 120
    :cond_0
    :try_start_1
    const-class v2, Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    new-instance v2, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;

    invoke-direct {v2}, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/RealmModel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    goto :goto_0

    .line 122
    :cond_1
    :try_start_2
    const-class v2, Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 123
    new-instance v2, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;

    invoke-direct {v2}, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/RealmModel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    goto :goto_0

    .line 125
    :cond_2
    :try_start_3
    invoke-static {p1}, Lio/realm/FalkorRealmModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v2

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 128
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    throw v2
.end method

.method public transformerApplied()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public validateTable(Ljava/lang/Class;Lio/realm/internal/SharedRealm;Z)Lio/realm/internal/ColumnInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/RealmModel;",
            ">;",
            "Lio/realm/internal/SharedRealm;",
            "Z)",
            "Lio/realm/internal/ColumnInfo;"
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {p1}, Lio/realm/FalkorRealmModuleMediator;->checkClass(Ljava/lang/Class;)V

    .line 70
    const-class v0, Lcom/netflix/falkor/cache/FalkorRealmCacheLruBased;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-static {p2, p3}, Lio/realm/FalkorRealmCacheLruBasedRealmProxy;->validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/FalkorRealmCacheLruBasedRealmProxy$FalkorRealmCacheLruBasedColumnInfo;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    .line 72
    :cond_0
    const-class v0, Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    invoke-static {p2, p3}, Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy;->validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/FalkorRealmCacheHomeLolomoRealmProxy$FalkorRealmCacheHomeLolomoColumnInfo;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_1
    const-class v0, Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    invoke-static {p2, p3}, Lio/realm/FalkorRealmCacheTimeBasedRealmProxy;->validateTable(Lio/realm/internal/SharedRealm;Z)Lio/realm/FalkorRealmCacheTimeBasedRealmProxy$FalkorRealmCacheTimeBasedColumnInfo;

    move-result-object v0

    goto :goto_0

    .line 77
    :cond_2
    invoke-static {p1}, Lio/realm/FalkorRealmModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
.end method
