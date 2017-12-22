.class public Lcom/netflix/falkor/cache/FalkorCacheMonitor;
.super Ljava/lang/Object;
.source "FalkorCacheMonitor.java"


# static fields
.field private static final DEBOUNCE_DELAY_MS:J = 0xfL

.field private static final MEASURE_FILE_SIZE_INTERVAL_MS:J = 0x1388L

.field private static final TAG:Ljava/lang/String; = "FalkorCache.Monitor"


# instance fields
.field final cacheAdded:Ljava/util/concurrent/atomic/AtomicInteger;

.field final cacheAddedBytes:Ljava/util/concurrent/atomic/AtomicLong;

.field final cacheDeleted:Ljava/util/concurrent/atomic/AtomicInteger;

.field final cacheHit:Ljava/util/concurrent/atomic/AtomicInteger;

.field final cacheHitBytes:Ljava/util/concurrent/atomic/AtomicLong;

.field final cacheMisses:Ljava/util/concurrent/atomic/AtomicInteger;

.field final lolomoCount:Ljava/util/concurrent/atomic/AtomicLong;

.field final lruBasedCount:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mDataUpdated:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/cache/FalkorCacheMonitor$DataUpdated;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/cache/FalkorCacheMonitor$OnUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMeasureFileSize:Ljava/lang/Runnable;

.field private final mNotifyListeners:Ljava/lang/Runnable;

.field private mRealm:Lio/realm/Realm;

.field final realmFileSize:Ljava/util/concurrent/atomic/AtomicLong;

.field final timeBasedCount:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->cacheHit:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->cacheMisses:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->cacheAdded:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->cacheDeleted:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->cacheHitBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->cacheAddedBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->lruBasedCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->timeBasedCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->lolomoCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->realmFileSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->mListeners:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->mDataUpdated:Ljava/util/List;

    .line 63
    iput-boolean v1, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->mInitialized:Z

    .line 65
    new-instance v0, Lcom/netflix/falkor/cache/FalkorCacheMonitor$1;

    invoke-direct {v0, p0}, Lcom/netflix/falkor/cache/FalkorCacheMonitor$1;-><init>(Lcom/netflix/falkor/cache/FalkorCacheMonitor;)V

    iput-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->mNotifyListeners:Ljava/lang/Runnable;

    .line 73
    new-instance v0, Lcom/netflix/falkor/cache/FalkorCacheMonitor$2;

    invoke-direct {v0, p0}, Lcom/netflix/falkor/cache/FalkorCacheMonitor$2;-><init>(Lcom/netflix/falkor/cache/FalkorCacheMonitor;)V

    iput-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->mMeasureFileSize:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/falkor/cache/FalkorCacheMonitor;)Ljava/util/List;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->mDataUpdated:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/falkor/cache/FalkorCacheMonitor;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->notifyListeners(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/falkor/cache/FalkorCacheMonitor;)Lio/realm/Realm;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->mRealm:Lio/realm/Realm;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/falkor/cache/FalkorCacheMonitor;Lcom/netflix/falkor/cache/FalkorCacheMonitor$DataUpdated;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->sendUpdate(Lcom/netflix/falkor/cache/FalkorCacheMonitor$DataUpdated;)V

    return-void
.end method

.method public static getRealmTableCounts(Lio/realm/Realm;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 212
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 215
    :try_start_0
    const-string/jumbo v0, "homeTable"

    const-class v2, Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;

    invoke-virtual {p0, v2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmQuery;->count()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 216
    const-string/jumbo v0, "byTimeTable"

    const-class v2, Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;

    invoke-virtual {p0, v2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmQuery;->count()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 217
    const-string/jumbo v0, "byLruTable"

    const-class v2, Lcom/netflix/falkor/cache/FalkorRealmCacheLruBased;

    invoke-virtual {p0, v2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmQuery;->count()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    return-object v1

    .line 218
    :catch_0
    move-exception v0

    .line 219
    const-string/jumbo v2, "FalkorCache.Monitor"

    const-string/jumbo v3, "getRealmTableCounts had exception %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private notifyListeners(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/cache/FalkorCacheMonitor$DataUpdated;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->mRealm:Lio/realm/Realm;

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->mRealm:Lio/realm/Realm;

    const-class v1, Lcom/netflix/falkor/cache/FalkorRealmCacheLruBased;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->count()J

    move-result-wide v0

    .line 238
    iget-object v2, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->lruBasedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 239
    sget-object v2, Lcom/netflix/falkor/cache/FalkorCacheMonitor$DataUpdated;->CountLruBased:Lcom/netflix/falkor/cache/FalkorCacheMonitor$DataUpdated;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v2, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->lruBasedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->mRealm:Lio/realm/Realm;

    const-class v1, Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->count()J

    move-result-wide v0

    .line 245
    iget-object v2, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->timeBasedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 246
    sget-object v2, Lcom/netflix/falkor/cache/FalkorCacheMonitor$DataUpdated;->CountTimeBased:Lcom/netflix/falkor/cache/FalkorCacheMonitor$DataUpdated;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    iget-object v2, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->timeBasedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->mRealm:Lio/realm/Realm;

    const-class v1, Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->count()J

    move-result-wide v0

    .line 252
    iget-object v2, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->lolomoCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 253
    sget-object v2, Lcom/netflix/falkor/cache/FalkorCacheMonitor$DataUpdated;->CountLolomo:Lcom/netflix/falkor/cache/FalkorCacheMonitor$DataUpdated;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v2, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->lolomoCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 258
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 259
    iget-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->mListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/cache/FalkorCacheMonitor$OnUpdateListener;

    invoke-interface {v0, p1}, Lcom/netflix/falkor/cache/FalkorCacheMonitor$OnUpdateListener;->onUpdate(Ljava/util/List;)V

    .line 258
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 261
    :cond_3
    return-void
.end method

.method private sendUpdate(Lcom/netflix/falkor/cache/FalkorCacheMonitor$DataUpdated;)V
    .locals 0

    .prologue
    .line 231
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 153
    iget-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->cacheAdded:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 154
    if-eqz p1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->cacheAddedBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 157
    :cond_0
    sget-object v0, Lcom/netflix/falkor/cache/FalkorCacheMonitor$DataUpdated;->Add:Lcom/netflix/falkor/cache/FalkorCacheMonitor$DataUpdated;

    invoke-direct {p0, v0}, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->sendUpdate(Lcom/netflix/falkor/cache/FalkorCacheMonitor$DataUpdated;)V

    .line 158
    return-void
.end method

.method public addOnUpdateListener(Lcom/netflix/falkor/cache/FalkorCacheMonitor$OnUpdateListener;)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method

.method public delete(I)V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->cacheDeleted:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 162
    sget-object v0, Lcom/netflix/falkor/cache/FalkorCacheMonitor$DataUpdated;->Delete:Lcom/netflix/falkor/cache/FalkorCacheMonitor$DataUpdated;

    invoke-direct {p0, v0}, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->sendUpdate(Lcom/netflix/falkor/cache/FalkorCacheMonitor$DataUpdated;)V

    .line 163
    return-void
.end method

.method public hit(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->cacheHit:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 141
    if-eqz p1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->cacheHitBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 144
    :cond_0
    sget-object v0, Lcom/netflix/falkor/cache/FalkorCacheMonitor$DataUpdated;->Hit:Lcom/netflix/falkor/cache/FalkorCacheMonitor$DataUpdated;

    invoke-direct {p0, v0}, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->sendUpdate(Lcom/netflix/falkor/cache/FalkorCacheMonitor$DataUpdated;)V

    .line 145
    return-void
.end method

.method init(Lio/realm/Realm;Lcom/netflix/mediaclient/NetflixApplication;)V
    .locals 2

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "FalkorCacheMonitor already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->mInitialized:Z

    .line 95
    iput-object p1, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->mRealm:Lio/realm/Realm;

    .line 96
    iget-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->mMeasureFileSize:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 97
    sget-object v0, Lcom/netflix/falkor/cache/FalkorCacheMonitor$DataUpdated;->All:Lcom/netflix/falkor/cache/FalkorCacheMonitor$DataUpdated;

    invoke-direct {p0, v0}, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->sendUpdate(Lcom/netflix/falkor/cache/FalkorCacheMonitor$DataUpdated;)V

    .line 100
    invoke-virtual {p2}, Lcom/netflix/mediaclient/NetflixApplication;->getUserInput()Lcom/netflix/mediaclient/android/app/UserInputManager;

    move-result-object v0

    new-instance v1, Lcom/netflix/falkor/cache/FalkorCacheMonitor$3;

    invoke-direct {v1, p0}, Lcom/netflix/falkor/cache/FalkorCacheMonitor$3;-><init>(Lcom/netflix/falkor/cache/FalkorCacheMonitor;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/UserInputManager;->addListener(Lcom/netflix/mediaclient/android/app/ApplicationStateListener;)Z

    .line 127
    return-void
.end method

.method public logCacheAction(Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 175
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 177
    const-string/jumbo v0, "FalkorCache.Monitor"

    const-string/jumbo v1, "logCacheAction %s %dms"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0, v1, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 180
    :try_start_0
    const-string/jumbo v0, "action"

    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    const-string/jumbo v0, "added"

    iget-object v1, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->cacheAdded:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    const-string/jumbo v0, "deleted"

    iget-object v1, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->cacheDeleted:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    const-string/jumbo v0, "hits"

    iget-object v1, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->cacheHit:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    const-string/jumbo v0, "misses"

    iget-object v1, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->cacheMisses:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    if-lez p2, :cond_0

    .line 188
    const-string/jumbo v0, "duration"

    invoke-virtual {v3, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 191
    :cond_0
    if-eqz p3, :cond_1

    .line 192
    const-string/jumbo v0, "prevSizes"

    invoke-virtual {v3, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    :cond_1
    invoke-static {}, Lcom/netflix/falkor/cache/FalkorCache$RealmAccess;->getInstance()Lio/realm/Realm;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    const/4 v0, 0x0

    .line 196
    :try_start_1
    const-string/jumbo v1, "sizes"

    invoke-static {v4}, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->getRealmTableCounts(Lio/realm/Realm;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 197
    if-eqz v4, :cond_2

    if-eqz v2, :cond_3

    :try_start_2
    invoke-virtual {v4}, Lio/realm/Realm;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 203
    :cond_2
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "FalkorCache"

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportCustomAction(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lorg/json/JSONObject;)V

    .line 204
    return-void

    .line 197
    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 199
    :catch_1
    move-exception v0

    .line 200
    const-string/jumbo v1, "FalkorCache.Monitor"

    const-string/jumbo v4, "logCacheAction had exception %s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v1, v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 197
    :cond_3
    :try_start_4
    invoke-virtual {v4}, Lio/realm/Realm;->close()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 195
    :catch_2
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 197
    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_1
    if-eqz v4, :cond_4

    if-eqz v1, :cond_5

    :try_start_6
    invoke-virtual {v4}, Lio/realm/Realm;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_4
    :goto_2
    :try_start_7
    throw v0

    :catch_3
    move-exception v4

    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Lio/realm/Realm;->close()V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public miss()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->cacheMisses:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 149
    sget-object v0, Lcom/netflix/falkor/cache/FalkorCacheMonitor$DataUpdated;->Miss:Lcom/netflix/falkor/cache/FalkorCacheMonitor$DataUpdated;

    invoke-direct {p0, v0}, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->sendUpdate(Lcom/netflix/falkor/cache/FalkorCacheMonitor$DataUpdated;)V

    .line 150
    return-void
.end method

.method public removeOnUpdateListener(Lcom/netflix/falkor/cache/FalkorCacheMonitor$OnUpdateListener;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 137
    return-void
.end method

.method resetAll()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 264
    iget-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->cacheHit:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 265
    iget-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->cacheMisses:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 266
    iget-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->cacheAdded:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 267
    iget-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->cacheDeleted:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 269
    iget-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->cacheHitBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 270
    iget-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->cacheAddedBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 272
    iget-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->lruBasedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 273
    iget-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->timeBasedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 274
    iget-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->lolomoCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 275
    sget-object v0, Lcom/netflix/falkor/cache/FalkorCacheMonitor$DataUpdated;->All:Lcom/netflix/falkor/cache/FalkorCacheMonitor$DataUpdated;

    invoke-direct {p0, v0}, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->sendUpdate(Lcom/netflix/falkor/cache/FalkorCacheMonitor$DataUpdated;)V

    .line 276
    return-void
.end method
