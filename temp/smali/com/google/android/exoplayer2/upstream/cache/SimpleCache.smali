.class public final Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;
.super Ljava/lang/Object;
.source "SimpleCache.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/cache/Cache;


# instance fields
.field private final cacheDir:Ljava/io/File;

.field private final cachedSpans:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/TreeSet",
            "<",
            "Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final evictor:Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;

.field private final listeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final lockedSpans:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;",
            ">;"
        }
    .end annotation
.end field

.field private totalSpace:J


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;)V
    .locals 4
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "evictor"    # Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->totalSpace:J

    .line 52
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    .line 53
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->evictor:Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;

    .line 54
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->lockedSpans:Ljava/util/HashMap;

    .line 55
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cachedSpans:Ljava/util/HashMap;

    .line 56
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    .line 58
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 59
    .local v0, "conditionVariable":Landroid/os/ConditionVariable;
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache$1;

    const-string v2, "SimpleCache.initialize()"

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache$1;-><init>(Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    .line 67
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache$1;->start()V

    .line 68
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->initialize()V

    return-void
.end method

.method private addSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 6
    .param p1, "span"    # Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .prologue
    .line 265
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cachedSpans:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 267
    .local v0, "entryForKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/util/TreeSet<Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;>;>;"
    if-nez v0, :cond_0

    .line 268
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 269
    .local v1, "spansForKey":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;>;"
    iget-object v2, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    const-wide/16 v4, -0x1

    invoke-direct {p0, v2, v4, v5, v1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->setKeyValue(Ljava/lang/String;JLjava/util/TreeSet;)V

    .line 273
    :goto_0
    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 274
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->totalSpace:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->totalSpace:J

    .line 275
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->notifySpanAdded(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 276
    return-void

    .line 271
    .end local v1    # "spansForKey":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;>;"
    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/TreeSet;

    .restart local v1    # "spansForKey":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;>;"
    goto :goto_0
.end method

.method private getSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    .locals 12
    .param p1, "lookupSpan"    # Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .prologue
    .line 207
    iget-object v3, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    .line 208
    .local v3, "key":Ljava/lang/String;
    iget-wide v4, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    .line 209
    .local v4, "offset":J
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->getSpansForKey(Ljava/lang/String;)Ljava/util/TreeSet;

    move-result-object v1

    .line 210
    .local v1, "entries":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;>;"
    if-nez v1, :cond_1

    .line 211
    iget-wide v6, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    invoke-static {v3, v6, v7}, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->createOpenHole(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    move-result-object v2

    .line 227
    :cond_0
    :goto_0
    return-object v2

    .line 213
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 214
    .local v2, "floorSpan":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    if-eqz v2, :cond_2

    iget-wide v6, v2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    cmp-long v6, v6, v4

    if-gtz v6, :cond_2

    iget-wide v6, v2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    iget-wide v8, v2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    add-long/2addr v6, v8

    cmp-long v6, v4, v6

    if-gez v6, :cond_2

    .line 217
    iget-object v6, v2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->removeStaleSpans()V

    .line 223
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->getSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    move-result-object v2

    goto :goto_0

    .line 226
    :cond_2
    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 227
    .local v0, "ceilEntry":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    if-nez v0, :cond_3

    iget-wide v6, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    invoke-static {v3, v6, v7}, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->createOpenHole(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    move-result-object v6

    :goto_1
    move-object v2, v6

    goto :goto_0

    :cond_3
    iget-wide v6, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    iget-wide v8, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    iget-wide v10, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    sub-long/2addr v8, v10

    .line 228
    invoke-static {v3, v6, v7, v8, v9}, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->createClosedHole(Ljava/lang/String;JJ)Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    move-result-object v6

    goto :goto_1
.end method

.method private getSpansForKey(Ljava/lang/String;)Ljava/util/TreeSet;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/TreeSet",
            "<",
            "Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cachedSpans:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 414
    .local v0, "entryForKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/util/TreeSet<Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;>;>;"
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/TreeSet;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initialize()V
    .locals 10

    .prologue
    .line 236
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 237
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 239
    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 240
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_1

    .line 257
    :goto_0
    return-void

    .line 243
    :cond_1
    array-length v4, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v0, v1, v3

    .line 244
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    .line 245
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 243
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 247
    :cond_2
    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->upgradeIfNeeded(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 248
    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->createCacheEntry(Ljava/io/File;)Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    move-result-object v2

    .line 249
    .local v2, "span":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    if-nez v2, :cond_3

    .line 250
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 252
    :cond_3
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->addSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    goto :goto_2

    .line 256
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "span":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    :cond_4
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->evictor:Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;->onCacheInitialized()V

    goto :goto_0
.end method

.method private notifySpanAdded(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 4
    .param p1, "span"    # Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .prologue
    .line 330
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 331
    .local v1, "keyListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;>;"
    if-eqz v1, :cond_0

    .line 332
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 333
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;

    invoke-interface {v2, p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;->onSpanAdded(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 332
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 336
    .end local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->evictor:Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;

    invoke-interface {v2, p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;->onSpanAdded(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 337
    return-void
.end method

.method private notifySpanRemoved(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 4
    .param p1, "span"    # Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .prologue
    .line 320
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 321
    .local v1, "keyListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;>;"
    if-eqz v1, :cond_0

    .line 322
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 323
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;

    invoke-interface {v2, p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;->onSpanRemoved(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 322
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 326
    .end local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->evictor:Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;

    invoke-interface {v2, p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;->onSpanRemoved(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 327
    return-void
.end method

.method private notifySpanTouched(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 4
    .param p1, "oldSpan"    # Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    .param p2, "newSpan"    # Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .prologue
    .line 340
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 341
    .local v1, "keyListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;>;"
    if-eqz v1, :cond_0

    .line 342
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 343
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;

    invoke-interface {v2, p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;->onSpanTouched(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 342
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 346
    .end local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->evictor:Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;

    invoke-interface {v2, p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;->onSpanTouched(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 347
    return-void
.end method

.method private removeStaleSpans()V
    .locals 10

    .prologue
    .line 295
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cachedSpans:Ljava/util/HashMap;

    .line 296
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 297
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/Long;Ljava/util/TreeSet<Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;>;>;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 298
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 299
    .local v2, "next":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/Long;Ljava/util/TreeSet<Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;>;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 300
    .local v4, "spanIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;>;"
    const/4 v0, 0x1

    .line 301
    .local v0, "isEmpty":Z
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 302
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 303
    .local v3, "span":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    iget-object v5, v3, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 304
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 305
    iget-boolean v5, v3, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->isCached:Z

    if-eqz v5, :cond_1

    .line 306
    iget-wide v6, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->totalSpace:J

    iget-wide v8, v3, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->totalSpace:J

    .line 308
    :cond_1
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->notifySpanRemoved(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    goto :goto_1

    .line 310
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 313
    .end local v3    # "span":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    :cond_3
    if-eqz v0, :cond_0

    .line 314
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 317
    .end local v0    # "isEmpty":Z
    .end local v2    # "next":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/Long;Ljava/util/TreeSet<Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;>;>;>;"
    .end local v4    # "spanIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;>;"
    :cond_4
    return-void
.end method

.method private replaceSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 2
    .param p1, "oldSpan"    # Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    .param p2, "newSpan"    # Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .prologue
    .line 423
    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->getSpansForKey(Ljava/lang/String;)Ljava/util/TreeSet;

    move-result-object v0

    .line 424
    .local v0, "spansForKey":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;>;"
    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 426
    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 427
    return-void
.end method

.method private setKeyValue(Ljava/lang/String;JLjava/util/TreeSet;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "length"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/TreeSet",
            "<",
            "Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 418
    .local p4, "entries":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cachedSpans:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1, p4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    return-void
.end method

.method private declared-synchronized startReadWriteNonBlocking(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    .locals 4
    .param p1, "lookupSpan"    # Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->getSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    move-result-object v0

    .line 136
    .local v0, "cacheSpan":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->isCached:Z

    if-eqz v2, :cond_0

    .line 138
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->touch()Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    move-result-object v1

    .line 139
    .local v1, "newCacheSpan":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->replaceSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 140
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->notifySpanTouched(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    .end local v1    # "newCacheSpan":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    :goto_0
    monitor-exit p0

    return-object v1

    .line 145
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->lockedSpans:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 146
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->lockedSpans:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    .line 147
    goto :goto_0

    .line 151
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 133
    .end local v0    # "cacheSpan":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public declared-synchronized addListener(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;)Ljava/util/NavigableSet;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;",
            ")",
            "Ljava/util/NavigableSet",
            "<",
            "Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 74
    .local v0, "listenersForKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;>;"
    if-nez v0, :cond_0

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "listenersForKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .restart local v0    # "listenersForKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;>;"
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 73
    .end local v0    # "listenersForKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized commitFile(Ljava/io/File;)V
    .locals 8
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 168
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->createCacheEntry(Ljava/io/File;)Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    move-result-object v1

    .line 169
    .local v1, "span":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    if-eqz v1, :cond_0

    move v4, v2

    :goto_0
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 170
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->lockedSpans:Ljava/util/HashMap;

    iget-object v5, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 172
    invoke-virtual {p1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 187
    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    move v4, v3

    .line 169
    goto :goto_0

    .line 176
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 177
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 168
    .end local v1    # "span":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 181
    .restart local v1    # "span":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    :cond_2
    :try_start_2
    iget-object v4, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->getContentLength(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 182
    .local v0, "length":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 183
    iget-wide v4, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    iget-wide v6, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    add-long/2addr v4, v6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_4

    :goto_2
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 185
    :cond_3
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->addSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_4
    move v2, v3

    .line 183
    goto :goto_2
.end method

.method public declared-synchronized getCacheSpace()J
    .locals 2

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->totalSpace:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/NavigableSet",
            "<",
            "Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->getSpansForKey(Ljava/lang/String;)Ljava/util/TreeSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 96
    .local v0, "spansForKey":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 95
    .end local v0    # "spansForKey":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getContentLength(Ljava/lang/String;)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 407
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cachedSpans:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    .local v0, "entryForKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/util/TreeSet<Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;>;>;"
    if-nez v0, :cond_0

    const-wide/16 v2, -0x1

    :goto_0
    monitor-exit p0

    return-wide v2

    :cond_0
    :try_start_1
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    goto :goto_0

    .line 407
    .end local v0    # "entryForKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/util/TreeSet<Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getKeys()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cachedSpans:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCached(Ljava/lang/String;JJ)Z
    .locals 14
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "position"    # J
    .param p4, "length"    # J

    .prologue
    .line 351
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->getSpansForKey(Ljava/lang/String;)Ljava/util/TreeSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 352
    .local v2, "entries":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;>;"
    if-nez v2, :cond_0

    .line 353
    const/4 v8, 0x0

    .line 381
    :goto_0
    monitor-exit p0

    return v8

    .line 355
    :cond_0
    :try_start_1
    invoke-static/range {p1 .. p3}, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->createLookup(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    move-result-object v4

    .line 356
    .local v4, "lookupSpan":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    invoke-virtual {v2, v4}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 357
    .local v3, "floorSpan":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    if-eqz v3, :cond_1

    iget-wide v8, v3, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    iget-wide v10, v3, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    add-long/2addr v8, v10

    cmp-long v8, v8, p2

    if-gtz v8, :cond_2

    .line 359
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 361
    :cond_2
    add-long v6, p2, p4

    .line 362
    .local v6, "queryEndPosition":J
    iget-wide v8, v3, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    iget-wide v10, v3, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    add-long v0, v8, v10

    .line 363
    .local v0, "currentEndPosition":J
    cmp-long v8, v0, v6

    if-ltz v8, :cond_3

    .line 365
    const/4 v8, 0x1

    goto :goto_0

    .line 367
    :cond_3
    const/4 v8, 0x0

    invoke-virtual {v2, v3, v8}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 368
    .local v5, "next":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    iget-wide v10, v5, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    cmp-long v9, v10, v0

    if-lez v9, :cond_5

    .line 370
    const/4 v8, 0x0

    goto :goto_0

    .line 374
    :cond_5
    iget-wide v10, v5, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    iget-wide v12, v5, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    add-long/2addr v10, v12

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->max(JJ)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 375
    cmp-long v9, v0, v6

    if-ltz v9, :cond_4

    .line 377
    const/4 v8, 0x1

    goto :goto_0

    .line 381
    .end local v5    # "next":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    :cond_6
    const/4 v8, 0x0

    goto :goto_0

    .line 351
    .end local v0    # "currentEndPosition":J
    .end local v2    # "entries":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;>;"
    .end local v3    # "floorSpan":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    .end local v4    # "lookupSpan":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    .end local v6    # "queryEndPosition":J
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public declared-synchronized releaseHoleSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 2
    .param p1, "holeSpan"    # Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->lockedSpans:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 192
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    monitor-exit p0

    return-void

    .line 191
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeListener(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 85
    .local v0, "listenersForKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;>;"
    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_0
    monitor-exit p0

    return-void

    .line 84
    .end local v0    # "listenersForKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 6
    .param p1, "span"    # Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .prologue
    .line 280
    monitor-enter p0

    :try_start_0
    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->getSpansForKey(Ljava/lang/String;)Ljava/util/TreeSet;

    move-result-object v0

    .line 281
    .local v0, "spansForKey":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;>;"
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->totalSpace:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->totalSpace:J

    .line 282
    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 283
    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 284
    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cachedSpans:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->notifySpanRemoved(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    monitor-exit p0

    return-void

    .line 280
    .end local v0    # "spansForKey":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setContentLength(Ljava/lang/String;J)Z
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "length"    # J

    .prologue
    .line 386
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cachedSpans:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 388
    .local v3, "entryForKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/util/TreeSet<Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;>;>;"
    if-eqz v3, :cond_0

    .line 389
    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/TreeSet;

    .line 390
    .local v2, "entries":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 391
    invoke-virtual {v2}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 392
    .local v4, "last":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    iget-wide v6, v4, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    iget-wide v8, v4, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long v0, v6, v8

    .line 393
    .local v0, "end":J
    cmp-long v5, v0, p2

    if-lez v5, :cond_1

    .line 394
    const/4 v5, 0x0

    .line 402
    .end local v0    # "end":J
    .end local v4    # "last":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    :goto_0
    monitor-exit p0

    return v5

    .line 398
    .end local v2    # "entries":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;>;"
    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 401
    .restart local v2    # "entries":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;>;"
    :cond_1
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->setKeyValue(Ljava/lang/String;JLjava/util/TreeSet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    const/4 v5, 0x1

    goto :goto_0

    .line 386
    .end local v2    # "entries":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;>;"
    .end local v3    # "entryForKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/util/TreeSet<Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;>;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized startFile(Ljava/lang/String;JJ)Ljava/io/File;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "position"    # J
    .param p4, "maxLength"    # J

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->lockedSpans:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 157
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->removeStaleSpans()V

    .line 160
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->evictor:Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;->onStartFile(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;JJ)V

    .line 163
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, p1

    move-wide v2, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->getCacheFileName(Ljava/io/File;Ljava/lang/String;JJ)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startReadWrite(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->createLookup(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    move-result-object v0

    .line 114
    .local v0, "lookupSpan":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->startReadWriteNonBlocking(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 115
    .local v1, "span":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    if-eqz v1, :cond_0

    .line 116
    monitor-exit p0

    return-object v1

    .line 122
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 112
    .end local v0    # "lookupSpan":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    .end local v1    # "span":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized startReadWriteNonBlocking(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "position"    # J

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->createLookup(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->startReadWriteNonBlocking(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
