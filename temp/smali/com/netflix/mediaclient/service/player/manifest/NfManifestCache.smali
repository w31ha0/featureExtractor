.class public Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;
.super Ljava/lang/Object;
.source "NfManifestCache.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/player/manifest/NfManifestCacheInterface;


# static fields
.field private static final DEFAULT_MANIFEST_COUNT:I = 0x14

.field private static final DEFAULT_MANIFEST_COUNT_LOW_MEM:I = 0xa

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAbortedMovies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mBladeRunnerClient:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

.field private mCachedManifestCount:I

.field private final mCallbackHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private mCurrentNetType:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

.field private mCurrentNetworkId:Ljava/lang/String;

.field private final mManifestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;",
            "Lcom/netflix/mediaclient/service/player/manifest/NfManifest;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingMovies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;",
            "Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorkHandler:Landroid/os/Handler;

.field private final mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;Z)V
    .locals 3

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0x14

    iput v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mCachedManifestCount:I

    .line 91
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mCurrentNetworkId:Ljava/lang/String;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mManifestMap:Ljava/util/Map;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mAbortedMovies:Ljava/util/List;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mPendingMovies:Ljava/util/Map;

    .line 158
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mContext:Landroid/content/Context;

    .line 159
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mCallbackHandler:Landroid/os/Handler;

    .line 160
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mBladeRunnerClient:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

    .line 162
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "NfManifestCacheWorkerThread"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mWorkerThread:Landroid/os/HandlerThread;

    .line 164
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 165
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mWorkHandler:Landroid/os/Handler;

    .line 166
    if-eqz p4, :cond_0

    .line 167
    const/16 v0, 0xa

    iput v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mCachedManifestCount:I

    .line 170
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->updateCurrentNetworkType()V

    .line 171
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;)Ljava/util/List;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mAbortedMovies:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mWorkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->processPrefetchFailure(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Ljava/util/List;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->processPrefetchResponse(Ljava/util/List;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mManifestMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->notifyFetchManifestSuccess(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;)V

    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->purgeManifestCache()V

    return-void
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->fetchManifest(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;)V

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->prepareManifests(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mPendingMovies:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->notifyFetchManifestFailure(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Ljava/util/List;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->processManifestResponse(Ljava/util/List;Lorg/json/JSONObject;)V

    return-void
.end method

.method private fetchManifest(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;)V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 268
    iget-wide v2, p1, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;->mPlayableId:J

    .line 271
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mPendingMovies:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;

    .line 272
    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;->addCallback(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;)V

    .line 274
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "fetchManifests is pending %d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v0, v1, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 317
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v6, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mBladeRunnerClient:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

    new-array v7, v4, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v5

    sget-object v8, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestRequestFlavor;->STANDARD:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestRequestFlavor;

    new-instance v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;-><init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;JLcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;)V

    invoke-virtual {v6, v7, v8, v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->fetchManifests([Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestRequestFlavor;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V

    .line 311
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$8;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$8;-><init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private notifyFetchManifestFailure(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 7

    .prologue
    .line 479
    iget-wide v2, p1, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;->mPlayableId:J

    .line 480
    iget-object v6, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mCallbackHandler:Landroid/os/Handler;

    new-instance v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$12;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$12;-><init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;JLcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 492
    return-void
.end method

.method private notifyFetchManifestSuccess(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;)V
    .locals 7

    .prologue
    .line 461
    iget-wide v2, p1, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;->mPlayableId:J

    .line 462
    iget-object v6, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mCallbackHandler:Landroid/os/Handler;

    new-instance v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$11;

    move-object v1, p0

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$11;-><init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;JLcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 474
    return-void
.end method

.method private prepareManifests(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/PlayerPrepareRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 323
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 324
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrepareRequest;

    .line 326
    new-instance v5, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;

    iget-wide v6, v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrepareRequest;->mPlayableId:J

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mCurrentNetType:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    iget-object v8, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mCurrentNetworkId:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v1, v8}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;-><init>(JLcom/netflix/mediaclient/util/ConnectivityUtils$NetType;Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mManifestMap:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    .line 329
    if-eqz v1, :cond_2

    .line 330
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getRemainLife()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 331
    sget-object v6, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "skip cached manifest for %d life=%d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-wide v10, v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrepareRequest;->mPlayableId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getRemainLife()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v8, v12

    invoke-static {v6, v7, v8}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 332
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mManifestMap:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    .line 333
    iget-object v0, v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrepareRequest;->mPrefetchSource:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->setPrefetchSource(Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;)V

    goto :goto_0

    .line 336
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->purgeManifestCache()V

    .line 344
    :cond_1
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mPendingMovies:Ljava/util/Map;

    new-instance v6, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;

    iget-object v7, v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrepareRequest;->mPrefetchSource:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    invoke-direct {v6, p0, v7}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;-><init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;)V

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "will fetch manifest for %d"

    new-array v6, v12, [Ljava/lang/Object;

    iget-wide v8, v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrepareRequest;->mPlayableId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {v1, v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 338
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mPendingMovies:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 339
    sget-object v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "skip pending manifest for %d"

    new-array v7, v12, [Ljava/lang/Object;

    iget-wide v8, v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrepareRequest;->mPlayableId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v1, v6, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 340
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mPendingMovies:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;

    .line 341
    iget-object v0, v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrepareRequest;->mPrefetchSource:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;->updatePrefetchSource(Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;)V

    goto/16 :goto_0

    .line 348
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 349
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "prepare no manifest to fetch"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :goto_1
    return-void

    .line 352
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    .line 354
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;

    .line 355
    add-int/lit8 v2, v1, 0x1

    iget-wide v6, v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;->mPlayableId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    move v1, v2

    .line 356
    goto :goto_2

    .line 358
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mBladeRunnerClient:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestRequestFlavor;->PREFETCH:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestRequestFlavor;

    new-instance v2, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9;

    invoke-direct {v2, p0, v3}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9;-><init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Ljava/util/List;)V

    invoke-virtual {v0, v4, v1, v2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->fetchManifests([Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestRequestFlavor;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V

    .line 376
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$10;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$10;-><init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private processManifestResponse(Ljava/util/List;Lorg/json/JSONObject;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 408
    invoke-static {p2}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->parseAndCacheManifestResponse(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    .line 409
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    .line 410
    if-nez v0, :cond_0

    .line 411
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "M-CACHE, processManifestResponse has error"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 414
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getMovieId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;->getManifestKey(Ljava/util/List;J)Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;

    move-result-object v1

    .line 415
    if-nez v1, :cond_1

    .line 416
    sget-object v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "processManifestResponse got a manifest that we didn\'t request %d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getMovieId()Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 417
    new-instance v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getMovieId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mCurrentNetType:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    iget-object v6, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mCurrentNetworkId:Ljava/lang/String;

    invoke-direct {v1, v4, v5, v3, v6}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;-><init>(JLcom/netflix/mediaclient/util/ConnectivityUtils$NetType;Ljava/lang/String;)V

    .line 419
    :cond_1
    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mManifestMap:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    sget-object v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "M-CACHE, add %d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getMovieId()Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v1, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 422
    :cond_2
    return-void
.end method

.method private processPendingMovieList(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)V
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mPendingMovies:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;

    .line 434
    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;->getCallbacks()Ljava/util/List;

    move-result-object v0

    .line 436
    if-eqz v0, :cond_0

    .line 437
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;

    .line 438
    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->notifyFetchManifestSuccess(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;)V

    goto :goto_0

    .line 442
    :cond_0
    return-void
.end method

.method private processPendingMovieListFailures(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mPendingMovies:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;

    .line 447
    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;->getCallbacks()Ljava/util/List;

    move-result-object v0

    .line 449
    if-eqz v0, :cond_0

    .line 450
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;

    .line 451
    invoke-direct {p0, p1, v0, p2}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->notifyFetchManifestFailure(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 455
    :cond_0
    return-void
.end method

.method private processPrefetchFailure(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 426
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;

    .line 427
    invoke-direct {p0, v0, p2}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->processPendingMovieListFailures(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 429
    :cond_0
    return-void
.end method

.method private processPrefetchResponse(Ljava/util/List;Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 387
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->processManifestResponse(Ljava/util/List;Lorg/json/JSONObject;)V

    .line 388
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;

    .line 389
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mManifestMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    .line 390
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mPendingMovies:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;

    .line 391
    if-eqz v2, :cond_0

    .line 392
    if-eqz v1, :cond_1

    .line 393
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;->getPrefetchSource()Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->setPrefetchSource(Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;)V

    .line 394
    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->processPendingMovieList(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)V

    goto :goto_0

    .line 396
    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->MANIFEST_PREFETCH_PROCESSING_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->processPendingMovieListFailures(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 400
    :cond_2
    return-void
.end method

.method private purgeManifestCache()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 496
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mManifestMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 497
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 498
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mCachedManifestCount:I

    sub-int/2addr v2, v3

    .line 499
    sget-object v3, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "M-CACHE, now has %d, excessive entries %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mManifestMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 501
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    .line 503
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    .line 505
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getRemainLife()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    if-ge v1, v2, :cond_1

    .line 506
    :cond_0
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->removeEntryFromManifestMap(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)V

    .line 507
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 508
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 512
    goto :goto_0

    .line 516
    :cond_1
    return-void
.end method

.method private removeEntryFromManifestMap(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)V
    .locals 6

    .prologue
    .line 520
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mManifestMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 521
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 522
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "M-CACHE, remove %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getMovieId()Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 524
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 527
    :cond_1
    return-void
.end method

.method private updateCurrentNetworkType()V
    .locals 5

    .prologue
    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getCurrentNetType(Landroid/content/Context;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_0

    .line 101
    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mCurrentNetType:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    .line 102
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$13;->$SwitchMap$com$netflix$mediaclient$util$ConnectivityUtils$NetType:[I

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mCurrentNetType:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 111
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mCurrentNetworkId:Ljava/lang/String;

    .line 113
    :goto_0
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateCurrentNetworkType %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mCurrentNetType:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mCurrentNetworkId:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 115
    :cond_0
    return-void

    .line 104
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getSsidOrEmptyString(Landroid/net/wifi/WifiManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mCurrentNetworkId:Ljava/lang/String;

    goto :goto_0

    .line 107
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getCurrentOperatorNameOrEmptyString(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mCurrentNetworkId:Ljava/lang/String;

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public abort(Ljava/lang/Long;)V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$3;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$3;-><init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Ljava/lang/Long;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 217
    return-void
.end method

.method public clearAll()V
    .locals 2

    .prologue
    .line 240
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "clear all manifest"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$5;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$5;-><init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 248
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$6;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$6;-><init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 254
    return-void
.end method

.method public getManifestAsync(Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;)V
    .locals 5

    .prologue
    .line 175
    new-instance v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mCurrentNetType:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mCurrentNetworkId:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;-><init>(JLcom/netflix/mediaclient/util/ConnectivityUtils$NetType;Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mCallbackHandler:Landroid/os/Handler;

    new-instance v2, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$1;

    invoke-direct {v2, p0, p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$1;-><init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Ljava/lang/Long;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 187
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mWorkHandler:Landroid/os/Handler;

    new-instance v2, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$2;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$2;-><init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;Ljava/lang/Long;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 205
    return-void
.end method

.method public onBackgroundTrimMem()V
    .locals 0

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->clearAll()V

    .line 264
    return-void
.end method

.method public onNetworkConnectivityChanged()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->updateCurrentNetworkType()V

    .line 96
    return-void
.end method

.method public prepare(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/PlayerPrepareRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 222
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "prepare has list contains no movie"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$4;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$4;-><init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 259
    return-void
.end method
