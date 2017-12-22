.class public Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;
.super Ljava/lang/Object;
.source "RealmFalkorCacheHelperImpl.java"

# interfaces
.implements Lcom/netflix/falkor/cache/FalkorCacheHelperInterface;


# static fields
.field protected static DEFAULT_LOLOMO_EXPIRY_MS:J = 0x0L

.field private static final DEFAULT_LRU_EXPIRY_MS:J

.field private static final TAG:Ljava/lang/String; = "FalkorCache.RealmHelper"

.field private static final VOLATILE_LEAF_NODES:Ljava/util/HashSet;


# instance fields
.field protected mRealm:Lio/realm/Realm;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 44
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "bookmark"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "current"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "inQueue"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "rating"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "hasWatched"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;->VOLATILE_LEAF_NODES:Ljava/util/HashSet;

    .line 49
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;->DEFAULT_LOLOMO_EXPIRY_MS:J

    .line 51
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5a

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;->DEFAULT_LRU_EXPIRY_MS:J

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;->mRealm:Lio/realm/Realm;

    .line 71
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;->mRealm:Lio/realm/Realm;

    .line 63
    sput-wide p1, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;->DEFAULT_LOLOMO_EXPIRY_MS:J

    .line 64
    invoke-static {}, Lcom/netflix/falkor/cache/FalkorCache$RealmAccess;->getInstance()Lio/realm/Realm;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;->mRealm:Lio/realm/Realm;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/util/Date;
    .locals 1

    .prologue
    .line 41
    invoke-static {p0, p1}, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;->createExpirationDate(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;->VOLATILE_LEAF_NODES:Ljava/util/HashSet;

    return-object v0
.end method

.method private static createExpirationDate(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/util/Date;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/RealmModel;",
            ">;)",
            "Ljava/util/Date;"
        }
    .end annotation

    .prologue
    .line 386
    invoke-static {p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->createDateFromExpires(Lcom/google/gson/JsonElement;)Ljava/util/Date;

    move-result-object v0

    .line 387
    if-nez v0, :cond_0

    .line 388
    const-class v1, Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;

    if-ne p1, v1, :cond_1

    .line 389
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;->DEFAULT_LOLOMO_EXPIRY_MS:J

    add-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 397
    :cond_0
    :goto_0
    return-object v0

    .line 390
    :cond_1
    const-class v1, Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;

    if-ne p1, v1, :cond_2

    .line 391
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;->DEFAULT_LOLOMO_EXPIRY_MS:J

    add-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    .line 392
    :cond_2
    const-class v1, Lcom/netflix/falkor/cache/FalkorRealmCacheLruBased;

    if-ne p1, v1, :cond_0

    .line 393
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;->DEFAULT_LRU_EXPIRY_MS:J

    add-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method private doRetrieveFromCache(Ljava/util/List;ILjava/lang/String;Lcom/netflix/falkor/BranchNode;Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/lang/String;",
            "Lcom/netflix/falkor/BranchNode;",
            "Ljava/lang/Class;",
            "Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 402
    invoke-interface {p4, p3}, Lcom/netflix/falkor/BranchNode;->getOrCreate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 406
    if-eqz v3, :cond_3

    .line 407
    instance-of v0, v3, Lcom/netflix/falkor/Ref;

    if-nez v0, :cond_0

    instance-of v0, v3, Lcom/netflix/mediaclient/servicemgr/interface_/JsonPopulator;

    if-eqz v0, :cond_b

    .line 408
    :cond_0
    invoke-interface {p1, v1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 410
    if-eqz p6, :cond_4

    .line 411
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 412
    iget-object v4, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;->mRealm:Lio/realm/Realm;

    invoke-virtual {v4, p5}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v4

    const-string/jumbo v5, "path"

    invoke-virtual {v4, v5, v0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string/jumbo v4, "expiry"

    invoke-virtual {v0, v4, v1}, Lio/realm/RealmQuery;->greaterThan(Ljava/lang/String;Ljava/util/Date;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findFirst()Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/cache/FalkorCache$FalkorCacheable;

    move-object v1, v0

    .line 417
    :goto_0
    instance-of v0, v1, Lcom/netflix/falkor/cache/FalkorCache$FalkorEvictable;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 418
    check-cast v0, Lcom/netflix/falkor/cache/FalkorCache$FalkorEvictable;

    invoke-static {v0}, Lcom/netflix/falkor/cache/FalkorCache$LruBackup;->markAccessed(Lcom/netflix/falkor/cache/FalkorCache$FalkorEvictable;)V

    .line 421
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/netflix/falkor/cache/FalkorCache$FalkorCacheable;->getPayload()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 424
    :cond_2
    invoke-static {}, Lcom/netflix/falkor/cache/FalkorCache;->getMonitor()Lcom/netflix/falkor/cache/FalkorCacheMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->miss()V

    :goto_1
    move-object v3, v2

    .line 474
    :cond_3
    :goto_2
    return-object v3

    .line 414
    :cond_4
    iget-object v1, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;->mRealm:Lio/realm/Realm;

    invoke-virtual {v1, p5}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string/jumbo v4, "path"

    invoke-virtual {v1, v4, v0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findFirst()Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/cache/FalkorCache$FalkorCacheable;

    move-object v1, v0

    goto :goto_0

    .line 426
    :cond_5
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    .line 427
    invoke-interface {v1}, Lcom/netflix/falkor/cache/FalkorCache$FalkorCacheable;->getPayload()Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/google/gson/JsonElement;

    invoke-virtual {v0, v2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    .line 428
    instance-of v2, v3, Lcom/netflix/falkor/Ref;

    if-eqz v2, :cond_9

    .line 429
    invoke-interface {v1}, Lcom/netflix/falkor/cache/FalkorCache$FalkorCacheable;->getSentinel()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v2

    if-nez v2, :cond_8

    .line 430
    :cond_6
    invoke-static {}, Lcom/netflix/falkor/Undefined;->getInstance()Lcom/netflix/falkor/Undefined;

    move-result-object v3

    .line 434
    :goto_3
    invoke-interface {p4, p3, v3}, Lcom/netflix/falkor/BranchNode;->set(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v2, v3

    .line 442
    :goto_4
    instance-of v0, v2, Lcom/netflix/model/leafs/BaseFalkorLeafItem;

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/netflix/falkor/Undefined;->getInstance()Lcom/netflix/falkor/Undefined;

    move-result-object v0

    if-eq v2, v0, :cond_7

    move-object v0, v2

    .line 443
    check-cast v0, Lcom/netflix/model/leafs/BaseFalkorLeafItem;

    invoke-interface {v1}, Lcom/netflix/falkor/cache/FalkorCache$FalkorCacheable;->getLastModifiedTime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/netflix/model/leafs/BaseFalkorLeafItem;->setLastModifiedInCache(J)V

    .line 446
    :cond_7
    invoke-static {}, Lcom/netflix/falkor/cache/FalkorCache;->getMonitor()Lcom/netflix/falkor/cache/FalkorCacheMonitor;

    move-result-object v0

    invoke-interface {v1}, Lcom/netflix/falkor/cache/FalkorCache$FalkorCacheable;->getPayload()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->hit(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    move-object v2, v3

    .line 432
    check-cast v2, Lcom/netflix/falkor/Ref;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->fromJsonArray(Lcom/google/gson/JsonArray;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/falkor/Ref;->setRefPath(Lcom/netflix/falkor/PQL;)V

    goto :goto_3

    .line 435
    :cond_9
    instance-of v2, v3, Lcom/netflix/mediaclient/servicemgr/interface_/JsonPopulator;

    if-eqz v2, :cond_a

    move-object v2, v3

    .line 437
    check-cast v2, Lcom/netflix/mediaclient/servicemgr/interface_/JsonPopulator;

    invoke-interface {v2, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/JsonPopulator;->populate(Lcom/google/gson/JsonElement;)V

    .line 438
    invoke-interface {p4, p3, v3}, Lcom/netflix/falkor/BranchNode;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    move-object v2, v3

    goto :goto_4

    .line 448
    :cond_b
    instance-of v0, v3, Lcom/netflix/falkor/Sentinel;

    if-eqz v0, :cond_3

    move-object v0, v3

    check-cast v0, Lcom/netflix/falkor/Sentinel;

    invoke-virtual {v0}, Lcom/netflix/falkor/Sentinel;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/model/leafs/ListOfListOfGenres;

    if-eqz v0, :cond_3

    .line 451
    invoke-interface {p1, v1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 453
    if-eqz p6, :cond_d

    .line 454
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 455
    iget-object v4, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;->mRealm:Lio/realm/Realm;

    invoke-virtual {v4, p5}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v4

    const-string/jumbo v5, "path"

    invoke-virtual {v4, v5, v0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string/jumbo v4, "expiry"

    invoke-virtual {v0, v4, v1}, Lio/realm/RealmQuery;->greaterThan(Ljava/lang/String;Ljava/util/Date;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findFirst()Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/cache/FalkorCache$FalkorCacheable;

    move-object v4, v0

    .line 460
    :goto_5
    if-eqz v4, :cond_c

    invoke-interface {v4}, Lcom/netflix/falkor/cache/FalkorCache$FalkorCacheable;->getPayload()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    move-object v3, v2

    .line 462
    goto/16 :goto_2

    .line 457
    :cond_d
    iget-object v1, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;->mRealm:Lio/realm/Realm;

    invoke-virtual {v1, p5}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string/jumbo v4, "path"

    invoke-virtual {v1, v4, v0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findFirst()Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/cache/FalkorCache$FalkorCacheable;

    move-object v4, v0

    goto :goto_5

    .line 464
    :cond_e
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    .line 465
    invoke-interface {v4}, Lcom/netflix/falkor/cache/FalkorCache$FalkorCacheable;->getPayload()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/gson/JsonElement;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    move-object v1, v3

    .line 466
    check-cast v1, Lcom/netflix/falkor/Sentinel;

    invoke-virtual {v1}, Lcom/netflix/falkor/Sentinel;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/JsonPopulator;

    .line 467
    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/JsonPopulator;->populate(Lcom/google/gson/JsonElement;)V

    .line 469
    invoke-static {}, Lcom/netflix/falkor/cache/FalkorCache;->getMonitor()Lcom/netflix/falkor/cache/FalkorCacheMonitor;

    move-result-object v0

    invoke-interface {v4}, Lcom/netflix/falkor/cache/FalkorCache$FalkorCacheable;->getPayload()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->hit(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private static getRealmModelClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/RealmModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 345
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 368
    const/4 v0, 0x0

    .line 372
    :goto_1
    return-object v0

    .line 345
    :sswitch_0
    const-string/jumbo v1, "lolomo"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "flatGenre"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "topGenres"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "genreList"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "evidenceLists"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v1, "lolomos"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v1, "lists"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v1, "characters"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v1, "movies"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const-string/jumbo v1, "shows"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :sswitch_a
    const-string/jumbo v1, "episodes"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :sswitch_b
    const-string/jumbo v1, "seasons"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_0

    .line 347
    :pswitch_0
    const-class v0, Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;

    goto/16 :goto_1

    .line 356
    :pswitch_1
    const-class v0, Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;

    goto/16 :goto_1

    .line 364
    :pswitch_2
    const-class v0, Lcom/netflix/falkor/cache/FalkorRealmCacheLruBased;

    goto/16 :goto_1

    .line 345
    :sswitch_data_0
    .sparse-switch
        -0x44762276 -> :sswitch_1
        -0x4165a598 -> :sswitch_0
        -0x3fac58bd -> :sswitch_8
        -0x25b9fe28 -> :sswitch_a
        -0x22b63efb -> :sswitch_2
        0x6236395 -> :sswitch_6
        0x6858516 -> :sswitch_9
        0x14b0f30b -> :sswitch_5
        0x2688b4c1 -> :sswitch_3
        0x4a3baa6a -> :sswitch_7
        0x6b95337e -> :sswitch_4
        0x7552f1f0 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addToCache(Ljava/util/ArrayList;Lcom/google/gson/JsonElement;)V
    .locals 4
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
    .line 178
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 181
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;->getRealmModelClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_0

    .line 183
    const-class v1, Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;

    if-ne v0, v1, :cond_1

    .line 184
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;->mRealm:Lio/realm/Realm;

    new-instance v2, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl$1;-><init>(Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    invoke-static {v1, v2}, Lcom/netflix/falkor/cache/FalkorCache$RealmAccess;->executeTransaction(Lio/realm/Realm;Lio/realm/Realm$Transaction;)V

    .line 199
    invoke-static {}, Lcom/netflix/falkor/cache/FalkorCache;->getMonitor()Lcom/netflix/falkor/cache/FalkorCacheMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->add(Ljava/lang/String;)V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;->mRealm:Lio/realm/Realm;

    new-instance v2, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl$FalkorTransaction;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, p2, v3}, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl$FalkorTransaction;-><init>(Ljava/lang/Class;Ljava/util/ArrayList;Lcom/google/gson/JsonElement;Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl$1;)V

    invoke-static {v1, v2}, Lcom/netflix/falkor/cache/FalkorCache$RealmAccess;->executeTransaction(Lio/realm/Realm;Lio/realm/Realm$Transaction;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    :goto_1
    const-string/jumbo v1, "addToCache"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 209
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public beginTransaction()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;->mRealm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/netflix/falkor/cache/FalkorCache$RealmAccess;->beginTransaction(Lio/realm/Realm;)V

    .line 100
    return-void
.end method

.method public cancelTransaction()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;->mRealm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/netflix/falkor/cache/FalkorCache$RealmAccess;->cancelTransaction(Lio/realm/Realm;)V

    .line 108
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;->mRealm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/netflix/falkor/cache/FalkorCache$RealmAccess;->close(Lio/realm/Realm;)V

    .line 79
    return-void
.end method

.method public commitTransaction()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;->mRealm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/netflix/falkor/cache/FalkorCache$RealmAccess;->commitTransaction(Lio/realm/Realm;)V

    .line 104
    return-void
.end method

.method public deleteSubPath(Ljava/util/List;)V
    .locals 11
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
    .line 307
    :try_start_0
    invoke-static {}, Lcom/netflix/falkor/cache/FalkorCache$RealmAccess;->getInstance()Lio/realm/Realm;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    const/4 v1, 0x0

    .line 309
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;->getRealmModelClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_0

    .line 312
    invoke-static {}, Lcom/netflix/falkor/cache/FalkorCache;->getMonitor()Lcom/netflix/falkor/cache/FalkorCacheMonitor;

    invoke-static {v2}, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->getRealmTableCounts(Lio/realm/Realm;)Lorg/json/JSONObject;

    move-result-object v3

    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 315
    new-instance v6, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl$3;

    invoke-direct {v6, p0, p1, v0}, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl$3;-><init>(Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;Ljava/util/List;Ljava/lang/Class;)V

    invoke-static {v2, v6}, Lcom/netflix/falkor/cache/FalkorCache$RealmAccess;->executeTransaction(Lio/realm/Realm;Lio/realm/Realm$Transaction;)V

    .line 328
    invoke-static {}, Lcom/netflix/falkor/cache/FalkorCache;->getMonitor()Lcom/netflix/falkor/cache/FalkorCacheMonitor;

    move-result-object v0

    const-string/jumbo v6, "trim"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v4

    long-to-int v4, v4

    invoke-virtual {v0, v6, v4, v3}, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->logCacheAction(Ljava/lang/String;ILorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 331
    :cond_0
    if-eqz v2, :cond_1

    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v2}, Lio/realm/Realm;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 334
    :cond_1
    :goto_0
    return-void

    .line 331
    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 332
    const-string/jumbo v1, "expireLolomoListsFromCache"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 331
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Lio/realm/Realm;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 307
    :catch_2
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 331
    :catchall_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_1
    if-eqz v2, :cond_3

    if-eqz v1, :cond_4

    :try_start_6
    invoke-virtual {v2}, Lio/realm/Realm;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_3
    :goto_2
    :try_start_7
    throw v0

    :catch_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lio/realm/Realm;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public expireLolomoListsFromCache()V
    .locals 11

    .prologue
    .line 271
    :try_start_0
    invoke-static {}, Lcom/netflix/falkor/cache/FalkorCache$RealmAccess;->getInstance()Lio/realm/Realm;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    const/4 v1, 0x0

    .line 273
    :try_start_1
    invoke-static {}, Lcom/netflix/falkor/cache/FalkorCache;->getMonitor()Lcom/netflix/falkor/cache/FalkorCacheMonitor;

    invoke-static {v2}, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->getRealmTableCounts(Lio/realm/Realm;)Lorg/json/JSONObject;

    move-result-object v0

    .line 274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 276
    new-instance v3, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl$2;

    invoke-direct {v3, p0}, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl$2;-><init>(Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;)V

    invoke-static {v2, v3}, Lcom/netflix/falkor/cache/FalkorCache$RealmAccess;->executeTransaction(Lio/realm/Realm;Lio/realm/Realm$Transaction;)V

    .line 293
    invoke-static {}, Lcom/netflix/falkor/cache/FalkorCache;->getMonitor()Lcom/netflix/falkor/cache/FalkorCacheMonitor;

    move-result-object v3

    const-string/jumbo v6, "trim"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v4

    long-to-int v4, v4

    invoke-virtual {v3, v6, v4, v0}, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->logCacheAction(Ljava/lang/String;ILorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 295
    if-eqz v2, :cond_0

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v2}, Lio/realm/Realm;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 295
    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 296
    const-string/jumbo v1, "expireLolomoListsFromCache"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 295
    :cond_1
    :try_start_4
    invoke-virtual {v2}, Lio/realm/Realm;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 271
    :catch_2
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 295
    :catchall_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v2}, Lio/realm/Realm;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_2
    :goto_2
    :try_start_7
    throw v0

    :catch_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lio/realm/Realm;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public purgeCache()V
    .locals 4

    .prologue
    .line 86
    invoke-static {}, Lcom/netflix/falkor/cache/FalkorCache;->getMonitor()Lcom/netflix/falkor/cache/FalkorCacheMonitor;

    move-result-object v0

    const-string/jumbo v1, "purge"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->logCacheAction(Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 89
    invoke-static {}, Lcom/netflix/falkor/cache/FalkorCache;->getMonitor()Lcom/netflix/falkor/cache/FalkorCacheMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->resetAll()V

    .line 92
    :try_start_0
    invoke-static {}, Lcom/netflix/falkor/cache/FalkorCache$RealmAccess;->purge()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    const-string/jumbo v1, "purgeCache"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public retrieveFromCache(Ljava/util/List;ILjava/lang/String;Lcom/netflix/falkor/BranchNode;)Ljava/lang/Object;
    .locals 8
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
    const/4 v7, 0x0

    .line 227
    .line 229
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 232
    invoke-static {v0}, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;->getRealmModelClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 233
    if-eqz v5, :cond_3

    .line 235
    const-class v1, Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;

    if-ne v5, v1, :cond_2

    .line 237
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 239
    iget-object v2, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;->mRealm:Lio/realm/Realm;

    const-class v3, Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;

    invoke-virtual {v2, v3}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v2

    const-string/jumbo v3, "expiry"

    invoke-virtual {v2, v3, v1}, Lio/realm/RealmQuery;->greaterThan(Ljava/lang/String;Ljava/util/Date;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findFirst()Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;

    .line 240
    if-eqz v1, :cond_1

    .line 241
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    .line 242
    invoke-virtual {v1}, Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;->getLolomosRef()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/google/gson/JsonElement;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    .line 243
    new-instance v3, Lcom/netflix/falkor/Ref;

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/falkor/PQL;->fromJsonArray(Lcom/google/gson/JsonArray;)Lcom/netflix/falkor/PQL;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/netflix/falkor/Ref;-><init>(Lcom/netflix/falkor/PQL;)V

    .line 244
    invoke-interface {p4, v0, v3}, Lcom/netflix/falkor/BranchNode;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 246
    invoke-static {}, Lcom/netflix/falkor/cache/FalkorCache;->getMonitor()Lcom/netflix/falkor/cache/FalkorCacheMonitor;

    move-result-object v0

    invoke-virtual {v1}, Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;->getLolomosRef()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->hit(Ljava/lang/String;)V

    move-object v0, v3

    :goto_0
    move-object v7, v0

    .line 262
    :cond_0
    :goto_1
    return-object v7

    .line 248
    :cond_1
    invoke-static {}, Lcom/netflix/falkor/cache/FalkorCache;->getMonitor()Lcom/netflix/falkor/cache/FalkorCacheMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->miss()V

    move-object v0, v7

    goto :goto_0

    .line 252
    :cond_2
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;->doRetrieveFromCache(Ljava/util/List;ILjava/lang/String;Lcom/netflix/falkor/BranchNode;Ljava/lang/Class;Z)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    :goto_2
    const-string/jumbo v1, "retrieveFromCache"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 256
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :cond_3
    move-object v0, v7

    goto :goto_0
.end method
