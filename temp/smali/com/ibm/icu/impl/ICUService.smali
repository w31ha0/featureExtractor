.class public Lcom/ibm/icu/impl/ICUService;
.super Lcom/ibm/icu/impl/ICUNotifier;
.source "ICUService.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/impl/ICUService$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private defaultSize:I

.field private dnref:Lcom/ibm/icu/impl/ICUService$LocaleRef;

.field private final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ibm/icu/impl/ICUService$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final factoryLock:Lcom/ibm/icu/impl/ICURWLock;

.field private idcache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/impl/ICUService$Factory;",
            ">;"
        }
    .end annotation
.end field

.field protected final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const-string/jumbo v0, "service"

    invoke-static {v0}, Lcom/ibm/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/ibm/icu/impl/ICUService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/ibm/icu/impl/ICUNotifier;-><init>()V

    .line 120
    new-instance v0, Lcom/ibm/icu/impl/ICURWLock;

    invoke-direct {v0}, Lcom/ibm/icu/impl/ICURWLock;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUService;->factoryLock:Lcom/ibm/icu/impl/ICURWLock;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUService;->factories:Ljava/util/List;

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/ICUService;->defaultSize:I

    .line 112
    iput-object p1, p0, Lcom/ibm/icu/impl/ICUService;->name:Ljava/lang/String;

    .line 113
    return-void
.end method


# virtual methods
.method protected clearCaches()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 899
    iput-object v0, p0, Lcom/ibm/icu/impl/ICUService;->cache:Ljava/util/Map;

    .line 900
    iput-object v0, p0, Lcom/ibm/icu/impl/ICUService;->idcache:Ljava/util/Map;

    .line 901
    iput-object v0, p0, Lcom/ibm/icu/impl/ICUService;->dnref:Lcom/ibm/icu/impl/ICUService$LocaleRef;

    .line 902
    return-void
.end method

.method protected clearServiceCache()V
    .locals 1

    .prologue
    .line 911
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUService;->cache:Ljava/util/Map;

    .line 912
    return-void
.end method

.method public getKey(Lcom/ibm/icu/impl/ICUService$Key;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/impl/ICUService;->getKey(Lcom/ibm/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKey(Lcom/ibm/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ibm/icu/impl/ICUService;->getKey(Lcom/ibm/icu/impl/ICUService$Key;[Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$Factory;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKey(Lcom/ibm/icu/impl/ICUService$Key;[Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$Factory;)Ljava/lang/Object;
    .locals 15

    .prologue
    .line 394
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUService;->factories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 395
    invoke-virtual/range {p0 .. p2}, Lcom/ibm/icu/impl/ICUService;->handleDefault(Lcom/ibm/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 521
    :goto_0
    return-object v1

    .line 398
    :cond_0
    sget-boolean v1, Lcom/ibm/icu/impl/ICUService;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ibm/icu/impl/ICUService;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/ICUService$Key;->canonicalID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 401
    :cond_1
    if-eqz p1, :cond_15

    .line 406
    :try_start_0
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUService;->factoryLock:Lcom/ibm/icu/impl/ICURWLock;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/ICURWLock;->acquireRead()V

    .line 408
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUService;->cache:Ljava/util/Map;

    .line 409
    if-nez v1, :cond_1c

    .line 410
    sget-boolean v1, Lcom/ibm/icu/impl/ICUService;->DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ibm/icu/impl/ICUService;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " cache was empty"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 413
    :cond_2
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v8, v1

    .line 417
    :goto_1
    const/4 v4, 0x0

    .line 418
    const/4 v2, 0x0

    .line 420
    const/4 v6, 0x0

    .line 422
    const/4 v5, 0x0

    .line 423
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUService;->factories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    .line 424
    const/4 v3, 0x1

    .line 425
    if-eqz p3, :cond_6

    .line 426
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v9, :cond_3

    .line 427
    iget-object v3, p0, Lcom/ibm/icu/impl/ICUService;->factories:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p3

    if-ne v0, v3, :cond_4

    .line 428
    add-int/lit8 v5, v1, 0x1

    .line 432
    :cond_3
    if-nez v5, :cond_5

    .line 433
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Factory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "not registered with service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/ibm/icu/impl/ICUService;->factoryLock:Lcom/ibm/icu/impl/ICURWLock;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/ICURWLock;->releaseRead()V

    throw v1

    .line 426
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 435
    :cond_5
    const/4 v3, 0x0

    .line 440
    :cond_6
    :goto_3
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/ICUService$Key;->currentDescriptor()Ljava/lang/String;

    move-result-object v10

    .line 441
    sget-boolean v1, Lcom/ibm/icu/impl/ICUService;->DEBUG:Z

    if-eqz v1, :cond_1a

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/ibm/icu/impl/ICUService;->name:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v11, "["

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v1, v6, 0x1

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v11, "] looking for: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v7, v1

    .line 442
    :goto_4
    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/ICUService$CacheEntry;

    .line 443
    if-eqz v1, :cond_9

    .line 444
    sget-boolean v3, Lcom/ibm/icu/impl/ICUService;->DEBUG:Z

    if-eqz v3, :cond_19

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ibm/icu/impl/ICUService;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " found with descriptor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v3, v1

    move v1, v2

    move-object v2, v4

    .line 482
    :goto_5
    if-eqz v3, :cond_14

    .line 483
    if-eqz v1, :cond_10

    .line 484
    sget-boolean v1, Lcom/ibm/icu/impl/ICUService;->DEBUG:Z

    if-eqz v1, :cond_7

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "caching \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/ibm/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 485
    :cond_7
    iget-object v1, v3, Lcom/ibm/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    invoke-interface {v8, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    if-eqz v2, :cond_f

    .line 487
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 488
    sget-boolean v4, Lcom/ibm/icu/impl/ICUService;->DEBUG:Z

    if-eqz v4, :cond_8

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ibm/icu/impl/ICUService;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " adding descriptor: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\' for actual: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/ibm/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 490
    :cond_8
    invoke-interface {v8, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 447
    :cond_9
    sget-boolean v2, Lcom/ibm/icu/impl/ICUService;->DEBUG:Z

    if-eqz v2, :cond_a

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "did not find: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v11, " in cache"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_a
    move v2, v5

    .line 457
    :goto_7
    if-ge v2, v9, :cond_e

    .line 458
    iget-object v11, p0, Lcom/ibm/icu/impl/ICUService;->factories:Ljava/util/List;

    add-int/lit8 v6, v2, 0x1

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/impl/ICUService$Factory;

    .line 459
    sget-boolean v11, Lcom/ibm/icu/impl/ICUService;->DEBUG:Z

    if-eqz v11, :cond_b

    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "trying factory["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v6, -0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "] "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 460
    :cond_b
    move-object/from16 v0, p1

    invoke-interface {v2, v0, p0}, Lcom/ibm/icu/impl/ICUService$Factory;->create(Lcom/ibm/icu/impl/ICUService$Key;Lcom/ibm/icu/impl/ICUService;)Ljava/lang/Object;

    move-result-object v2

    .line 461
    if-eqz v2, :cond_c

    .line 462
    new-instance v1, Lcom/ibm/icu/impl/ICUService$CacheEntry;

    invoke-direct {v1, v10, v2}, Lcom/ibm/icu/impl/ICUService$CacheEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 463
    sget-boolean v2, Lcom/ibm/icu/impl/ICUService;->DEBUG:Z

    if-eqz v2, :cond_18

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ibm/icu/impl/ICUService;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " factory supported: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", caching"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v2, v4

    move v14, v3

    move-object v3, v1

    move v1, v14

    goto/16 :goto_5

    .line 466
    :cond_c
    sget-boolean v2, Lcom/ibm/icu/impl/ICUService;->DEBUG:Z

    if-eqz v2, :cond_d

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "factory did not support: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_d
    move v2, v6

    .line 468
    goto/16 :goto_7

    .line 475
    :cond_e
    if-nez v4, :cond_17

    .line 476
    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x5

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 478
    :goto_8
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/ICUService$Key;->fallback()Z

    move-result v4

    if-nez v4, :cond_1b

    move v14, v3

    move-object v3, v1

    move v1, v14

    goto/16 :goto_5

    .line 497
    :cond_f
    iput-object v8, p0, Lcom/ibm/icu/impl/ICUService;->cache:Ljava/util/Map;

    .line 500
    :cond_10
    if-eqz p2, :cond_11

    .line 502
    iget-object v1, v3, Lcom/ibm/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_13

    .line 503
    const/4 v1, 0x0

    iget-object v2, v3, Lcom/ibm/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    .line 509
    :cond_11
    :goto_9
    sget-boolean v1, Lcom/ibm/icu/impl/ICUService;->DEBUG:Z

    if-eqz v1, :cond_12

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "found in service: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/ibm/icu/impl/ICUService;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 511
    :cond_12
    iget-object v1, v3, Lcom/ibm/icu/impl/ICUService$CacheEntry;->service:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 515
    iget-object v2, p0, Lcom/ibm/icu/impl/ICUService;->factoryLock:Lcom/ibm/icu/impl/ICURWLock;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/ICURWLock;->releaseRead()V

    goto/16 :goto_0

    .line 505
    :cond_13
    const/4 v1, 0x0

    :try_start_2
    iget-object v2, v3, Lcom/ibm/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    aput-object v2, p2, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_9

    .line 515
    :cond_14
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUService;->factoryLock:Lcom/ibm/icu/impl/ICURWLock;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/ICURWLock;->releaseRead()V

    .line 519
    :cond_15
    sget-boolean v1, Lcom/ibm/icu/impl/ICUService;->DEBUG:Z

    if-eqz v1, :cond_16

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not found in service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ibm/icu/impl/ICUService;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 521
    :cond_16
    invoke-virtual/range {p0 .. p2}, Lcom/ibm/icu/impl/ICUService;->handleDefault(Lcom/ibm/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_0

    :cond_17
    move-object v2, v4

    goto :goto_8

    :cond_18
    move-object v2, v4

    move v14, v3

    move-object v3, v1

    move v1, v14

    goto/16 :goto_5

    :cond_19
    move-object v3, v1

    move v1, v2

    move-object v2, v4

    goto/16 :goto_5

    :cond_1a
    move v7, v6

    goto/16 :goto_4

    :cond_1b
    move v6, v7

    move-object v4, v2

    move v2, v3

    goto/16 :goto_3

    :cond_1c
    move-object v8, v1

    goto/16 :goto_1
.end method

.method protected handleDefault(Lcom/ibm/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 542
    const/4 v0, 0x0

    return-object v0
.end method

.method protected markDefault()V
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUService;->factories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/ICUService;->defaultSize:I

    .line 877
    return-void
.end method

.method protected notifyListener(Ljava/util/EventListener;)V
    .locals 0

    .prologue
    .line 941
    check-cast p1, Lcom/ibm/icu/impl/ICUService$ServiceListener;

    invoke-interface {p1, p0}, Lcom/ibm/icu/impl/ICUService$ServiceListener;->serviceChanged(Lcom/ibm/icu/impl/ICUService;)V

    .line 942
    return-void
.end method

.method public final registerFactory(Lcom/ibm/icu/impl/ICUService$Factory;)Lcom/ibm/icu/impl/ICUService$Factory;
    .locals 2

    .prologue
    .line 793
    if-nez p1, :cond_0

    .line 794
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 797
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUService;->factoryLock:Lcom/ibm/icu/impl/ICURWLock;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICURWLock;->acquireWrite()V

    .line 798
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUService;->factories:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 799
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUService;->clearCaches()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 802
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUService;->factoryLock:Lcom/ibm/icu/impl/ICURWLock;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICURWLock;->releaseWrite()V

    .line 804
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUService;->notifyChanged()V

    .line 805
    return-object p1

    .line 802
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/ibm/icu/impl/ICUService;->factoryLock:Lcom/ibm/icu/impl/ICURWLock;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/ICURWLock;->releaseWrite()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ibm/icu/impl/ICUService;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
