.class public Lcom/netflix/mediaclient/service/falkor/FalkorAgent;
.super Lcom/netflix/mediaclient/service/ServiceAgent;
.source "FalkorAgent.java"

# interfaces
.implements Lcom/netflix/falkor/ServiceProvider;
.implements Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;


# static fields
.field private static final REFRESH_NOTIFICATIONS_INTERVAL_MS:I = 0x36ee80

.field private static final TAG:Ljava/lang/String; = "FalkorAgent"

.field private static final USE_CACHE_AND_REMOTE:Ljava/lang/Boolean;

.field private static final USE_CACHE_ONLY:Ljava/lang/Boolean;

.field private static volatile isCacheWarmed:Z

.field private static final isCurrentProfileActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sLastSerializeTimeToDisk:J


# instance fields
.field private billboardLogLimiter:Lcom/netflix/mediaclient/service/falkor/BillboardLogLimiter;

.field private cache:Lcom/netflix/model/Root;

.field private cmp:Lcom/netflix/falkor/CachedModelProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/CachedModelProxy",
            "<",
            "Lcom/netflix/model/Root;",
            ">;"
        }
    .end annotation
.end field

.field private hasProfileChanged:Z

.field public final playReceiver:Landroid/content/BroadcastReceiver;

.field private final refreshNotificationsRunnable:Ljava/lang/Runnable;

.field private requestId:J

.field private stopPrefetchLolomoSchedulerJob:Z

.field public final userAgentIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 96
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->USE_CACHE_ONLY:Ljava/lang/Boolean;

    .line 97
    sget-object v2, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->USE_CACHE_ONLY:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->USE_CACHE_AND_REMOTE:Ljava/lang/Boolean;

    .line 105
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->isCurrentProfileActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 109
    sput-boolean v1, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->isCacheWarmed:Z

    return-void

    :cond_0
    move v0, v1

    .line 97
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;-><init>()V

    .line 176
    new-instance v0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$1;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->playReceiver:Landroid/content/BroadcastReceiver;

    .line 207
    new-instance v0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$2;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->userAgentIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 844
    new-instance v0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$8;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$8;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->refreshNotificationsRunnable:Ljava/lang/Runnable;

    .line 114
    new-instance v0, Lcom/netflix/mediaclient/service/falkor/BillboardLogLimiter;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/falkor/BillboardLogLimiter;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->billboardLogLimiter:Lcom/netflix/mediaclient/service/falkor/BillboardLogLimiter;

    .line 115
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->canDoDataFetches()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)Lcom/netflix/falkor/CachedModelProxy;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->stopPrefetchLolomoSchedulerJob:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Z)Z
    .locals 0

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->stopPrefetchLolomoSchedulerJob:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;ZZZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->notifyJobFinished(ZZZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->countDownLatch(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->handleResponse(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->lomoImagesCachedCountDownAsync(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->isInPrefetchLolomoTest(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cancelPrefetchLolomoSchedulerJob()V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->handleProfileActive()V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->handleProfileDeactive()V

    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->handleAccountDeactive()V

    return-void
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->handleAccountNotLoggedIn()V

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;)Lcom/netflix/model/leafs/social/IrisNotificationSummary;
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getFirstUnreadNotification(Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;)Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Lcom/netflix/model/leafs/social/IrisNotificationSummary;)Z
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->shouldBeNotificationSentToStatusBar(Lcom/netflix/model/leafs/social/IrisNotificationSummary;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->requestId:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cacheLolomoImages(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method private cacheImage(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1364
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getImageLoader()Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    new-instance v5, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$17;

    invoke-direct {v5, p0, p1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$17;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Ljava/util/concurrent/CountDownLatch;)V

    move-object v1, p2

    move v4, v3

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->getImg(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;IILcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;)V

    .line 1380
    return-void
.end method

.method private cacheLolomoImages(Ljava/util/concurrent/CountDownLatch;)V
    .locals 3

    .prologue
    .line 1214
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->isInPrefetchLolomoTest(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1279
    :cond_0
    :goto_0
    return-void

    .line 1221
    :cond_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->stopPrefetchLolomoSchedulerJob:Z

    if-nez v0, :cond_0

    .line 1231
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->getNumberRowsToFetch(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$15;

    invoke-direct {v2, p0, p1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$15;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->fetchLoMos(IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    goto :goto_0
.end method

.method private static canDoDataFetches()Z
    .locals 2

    .prologue
    .line 294
    sget-object v0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->isCurrentProfileActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "wrong state - canDoDataFetches false - skipping browse request"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->isCurrentProfileActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private cancelPrefetchLolomoSchedulerJob()V
    .locals 2

    .prologue
    .line 1201
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1202
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getJobScheduler()Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    move-result-object v0

    .line 1203
    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->FALKOR_METADATA:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    .line 1204
    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;->isJobScheduled(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1208
    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->FALKOR_METADATA:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;->cancelJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    .line 1211
    :cond_0
    return-void
.end method

.method private checkAndDeserializeFalcorCacheFromDisk()Z
    .locals 1

    .prologue
    .line 1130
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->isInPrefetchLolomoTest(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1134
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cleanUpFalcorDiskCacheAsync()V

    .line 1135
    const/4 v0, 0x0

    .line 1138
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->deserializePrefetchMetadata()Z

    move-result v0

    goto :goto_0
.end method

.method private checkAndInitPrefetchLolomoJob()V
    .locals 1

    .prologue
    .line 1118
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->isInPrefetchLolomoTest(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1122
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cancelPrefetchLolomoSchedulerJob()V

    .line 1127
    :goto_0
    return-void

    .line 1126
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->schedulePrefetchLolomoJob()V

    goto :goto_0
.end method

.method private cleanUpFalcorDiskCacheAsync()V
    .locals 2

    .prologue
    .line 1175
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v1, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$14;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$14;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    .line 1198
    return-void
.end method

.method private countDownLatch(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 1305
    if-nez p1, :cond_0

    .line 1310
    :goto_0
    return-void

    .line 1308
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0
.end method

.method private deserialize(Ljava/io/Reader;)V
    .locals 1

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1}, Lcom/netflix/falkor/CachedModelProxy;->deserializeStream(Ljava/io/Reader;)V

    .line 1520
    return-void
.end method

.method private deserializePrefetchMetadata()Z
    .locals 13

    .prologue
    const-wide/16 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 1455
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 1456
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v3

    if-nez v3, :cond_0

    move v0, v2

    .line 1515
    :goto_0
    return v0

    .line 1463
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportDeserializeLolomoStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1464
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "prefs_prefetch_lolomo_fetch_time_ms"

    const-wide/16 v6, -0x1

    invoke-static {v3, v4, v6, v7}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getLongPref(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1465
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 1466
    const-wide/32 v8, 0x2255100

    sub-long v8, v6, v8

    cmp-long v3, v8, v10

    if-lez v3, :cond_2

    move v3, v1

    .line 1467
    :goto_1
    if-eqz v3, :cond_3

    .line 1473
    :try_start_0
    const-string/jumbo v1, "lolomo expired"

    .line 1474
    cmp-long v3, v4, v10

    if-gez v3, :cond_1

    .line 1475
    const-string/jumbo v1, "No prefetch lolomo data in cache"

    .line 1477
    :cond_1
    invoke-static {v1}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 1480
    :goto_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v1, v3, v0, v6, v7}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportDeserializeLolomoEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;J)V

    move v0, v2

    .line 1481
    goto :goto_0

    :cond_2
    move v3, v2

    .line 1466
    goto :goto_1

    .line 1490
    :cond_3
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/NetflixService;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "prefetch.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1494
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1495
    :try_start_2
    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->deserialize(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1497
    :try_start_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v5, 0x0

    invoke-static {v2, v4, v5, v6, v7}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportDeserializeLolomoEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1510
    invoke-static {v3}, Lcom/netflix/mediaclient/util/IoUtil;->safeClose(Ljava/io/Closeable;)V

    move v0, v1

    .line 1511
    goto :goto_0

    .line 1498
    :catch_0
    move-exception v1

    move-object v3, v0

    move-object v12, v1

    move v1, v2

    move-object v2, v12

    .line 1504
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 1507
    :goto_4
    :try_start_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v4, v5, v0, v6, v7}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportDeserializeLolomoEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;J)V

    .line 1508
    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1510
    invoke-static {v3}, Lcom/netflix/mediaclient/util/IoUtil;->safeClose(Ljava/io/Closeable;)V

    move v0, v1

    .line 1511
    goto/16 :goto_0

    .line 1510
    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_5
    invoke-static {v3}, Lcom/netflix/mediaclient/util/IoUtil;->safeClose(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5

    .line 1505
    :catch_1
    move-exception v4

    goto :goto_4

    .line 1498
    :catch_2
    move-exception v1

    move-object v12, v1

    move v1, v2

    move-object v2, v12

    goto :goto_3

    :catch_3
    move-exception v2

    goto :goto_3

    .line 1478
    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method private getFirstUnreadNotification(Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;)Lcom/netflix/model/leafs/social/IrisNotificationSummary;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 865
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotifications()Ljava/util/List;

    move-result-object v1

    .line 867
    if-nez v1, :cond_1

    move-object v0, v2

    .line 883
    :cond_0
    :goto_0
    return-object v0

    .line 871
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;->getCurrentMaxNotificationsNum()I

    move-result v0

    .line 873
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    .line 875
    if-nez v1, :cond_2

    move-object v0, v2

    .line 876
    goto :goto_0

    .line 878
    :cond_2
    invoke-virtual {v0}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getWasRead()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 881
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    .line 882
    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 883
    goto :goto_0
.end method

.method private handleAccountDeactive()V
    .locals 1

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cancelPrefetchLolomoSchedulerJob()V

    .line 241
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->purgePersistentCache()V

    .line 242
    return-void
.end method

.method private handleAccountNotLoggedIn()V
    .locals 2

    .prologue
    .line 233
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "handleAccountNotLoggedIn"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->flushCaches(Z)V

    .line 235
    return-void
.end method

.method private handleProfileActive()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 268
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->shouldFlushCache()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "handleProfileActive: Flushing all caches because new profile activated..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->flushCaches(Z)V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->updateFalkorCacheEnabled()V

    .line 279
    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->hasProfileChanged:Z

    .line 280
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->checkAndInitPrefetchLolomoJob()V

    .line 281
    sget-object v0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->isCurrentProfileActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 282
    return-void
.end method

.method private handleProfileDeactive()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 245
    sget-object v0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->isCurrentProfileActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->hasProfileChanged:Z

    .line 250
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->purgePersistentCache()V

    .line 251
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->shouldFlushCache()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "handleProfileActive: Flushing all caches because profile deactivate..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->flushCaches(Z)V

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->isInPrefetchLolomoTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cleanUpFalcorDiskCacheAsync()V

    .line 262
    :cond_1
    return-void
.end method

.method private handleResponse(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/util/concurrent/CountDownLatch;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            "Ljava/util/concurrent/CountDownLatch;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1314
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1315
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "Invalid status code"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    invoke-direct {p0, p4}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->countDownLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 1361
    :goto_0
    return-void

    .line 1320
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 1321
    :cond_1
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "No videos in response"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    invoke-direct {p0, p4}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->countDownLatch(Ljava/util/concurrent/CountDownLatch;)V

    goto :goto_0

    .line 1325
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->get()Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    move-result-object v2

    .line 1326
    if-nez v2, :cond_3

    .line 1330
    invoke-direct {p0, p4}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->countDownLatch(Ljava/util/concurrent/CountDownLatch;)V

    goto :goto_0

    .line 1334
    :cond_3
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenSizeCategory(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->getNumVideosPerPageTableByOrientation(II)I

    move-result v3

    .line 1335
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v4, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1336
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_8

    .line 1337
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->stopPrefetchLolomoSchedulerJob:Z

    if-eqz v0, :cond_5

    .line 1341
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1336
    :cond_4
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1345
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_6

    .line 1346
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_2

    .line 1349
    :cond_6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    .line 1350
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v5

    invoke-interface {p3}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v6

    invoke-virtual {v2, v5, v0, v6}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getPrefetchLolomoImageUrlList(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Ljava/util/List;

    move-result-object v0

    .line 1351
    if-nez v0, :cond_7

    .line 1352
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_2

    .line 1355
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1356
    invoke-direct {p0, v4, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cacheImage(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    goto :goto_3

    .line 1360
    :cond_8
    invoke-direct {p0, p4, v4}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->videoImagesRequestCountdownAsync(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;)V

    goto :goto_0
.end method

.method private isCachePreWarmed()Z
    .locals 1

    .prologue
    .line 290
    sget-boolean v0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->isCacheWarmed:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInPrefetchLolomoTest(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 1523
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/lolomo/PrefetchLolomoABTestUtils;->hasJobScheduler(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private lomoImagesCachedCountDownAsync(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;)V
    .locals 2

    .prologue
    .line 1282
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v1, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$16;

    invoke-direct {v1, p0, p2, p1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$16;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    .line 1302
    return-void
.end method

.method private notifyJobFinished(ZZZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 1531
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    .line 1532
    if-eqz v0, :cond_0

    .line 1533
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getBreadcrumbLogging()Lcom/netflix/mediaclient/servicemgr/BreadcrumbLogging;

    move-result-object v0

    invoke-interface {v0, p4}, Lcom/netflix/mediaclient/servicemgr/BreadcrumbLogging;->leaveBreadcrumb(Ljava/lang/String;)V

    .line 1536
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getJobScheduler()Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    move-result-object v0

    .line 1543
    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->FALKOR_METADATA:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;->onJobFinished(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Z)V

    .line 1544
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    .line 1545
    if-eqz p2, :cond_3

    .line 1546
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    .line 1551
    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 1552
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportPrefetchLolomoJobEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 1554
    :cond_2
    return-void

    .line 1547
    :cond_3
    if-eqz p1, :cond_1

    .line 1548
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    goto :goto_0
.end method

.method private notifyJobSchedulerFinishedAsync(Ljava/util/concurrent/CountDownLatch;)V
    .locals 2

    .prologue
    .line 1065
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v1, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$12;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$12;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    .line 1087
    return-void
.end method

.method private rescheduleNotificationsRefresh()V
    .locals 4

    .prologue
    .line 860
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->refreshNotificationsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 861
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->refreshNotificationsRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 862
    return-void
.end method

.method private schedulePrefetchLolomoJob()V
    .locals 7

    .prologue
    .line 1142
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1172
    :goto_0
    return-void

    .line 1149
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getJobScheduler()Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    move-result-object v6

    .line 1150
    sget-object v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->FALKOR_METADATA:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    .line 1151
    invoke-interface {v6, v0}, Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;->isJobScheduled(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1169
    :goto_1
    const-string/jumbo v1, "FalkorAgent"

    const-string/jumbo v2, "schedulePrefetchLolomoJob: registering JobExecutor PrefetchLolomoSchedulerJob with NetflixService "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$PrefetchLolomoSchedulerJob;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$PrefetchLolomoSchedulerJob;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Lcom/netflix/mediaclient/service/falkor/FalkorAgent$1;)V

    invoke-virtual {v1, v0, v2}, Lcom/netflix/mediaclient/service/NetflixService;->registerJobExecutor(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Lcom/netflix/mediaclient/service/job/NetflixJobExecutor;)V

    .line 1171
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    const-string/jumbo v1, "prefs_prefetch_lolomo_job_last_start_time_ms"

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putLongPref(Landroid/content/Context;Ljava/lang/String;J)Z

    goto :goto_0

    .line 1159
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lolomo/PrefetchLolomoABTestUtils;->isJobNetworkTypeUnmetered(Landroid/content/Context;)Z

    move-result v0

    .line 1160
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lolomo/PrefetchLolomoABTestUtils;->isJobPeriodic(Landroid/content/Context;)Z

    move-result v1

    .line 1161
    invoke-static {}, Lcom/netflix/mediaclient/ui/lolomo/PrefetchLolomoABTestUtils;->getJobPeriodicInterval()J

    move-result-wide v2

    .line 1162
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/netflix/mediaclient/ui/lolomo/PrefetchLolomoABTestUtils;->doesJobRequireCharging(Landroid/content/Context;)Z

    move-result v4

    .line 1163
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/netflix/mediaclient/ui/lolomo/PrefetchLolomoABTestUtils;->doesJobRequireDeviceIdle(Landroid/content/Context;)Z

    move-result v5

    .line 1164
    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/service/job/NetflixJob;->buildPrefetchLolomoJob(ZZJZZ)Lcom/netflix/mediaclient/service/job/NetflixJob;

    move-result-object v1

    .line 1166
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getNetflixJobId()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v0

    .line 1167
    invoke-interface {v6, v1}, Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;->scheduleJob(Lcom/netflix/mediaclient/service/job/NetflixJob;)V

    goto :goto_1
.end method

.method private shouldBeNotificationSentToStatusBar(Lcom/netflix/model/leafs/social/IrisNotificationSummary;)Z
    .locals 1

    .prologue
    .line 837
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->isActivityVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 838
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getPushNotification()Lcom/netflix/mediaclient/servicemgr/IPushNotification;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPushNotification;->isOptIn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 837
    :goto_0
    return v0

    .line 838
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldFlushCache()Z
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->hasProfileChanged:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->isCachePreWarmed()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private videoImagesRequestCountdownAsync(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;)V
    .locals 2

    .prologue
    .line 1383
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v1, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$18;

    invoke-direct {v1, p0, p2, p1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$18;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    .line 1399
    return-void
.end method


# virtual methods
.method public addToQueue(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ILjava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 6

    .prologue
    .line 582
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/falkor/CachedModelProxy;->addToQueue(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ILjava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 583
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->serializeFalkorMetadataAsync()V

    .line 142
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->userAgentIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/IntentUtils;->unregisterSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 143
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->playReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/IntentUtils;->unregisterSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 145
    invoke-super {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;->destroy()V

    .line 146
    return-void
.end method

.method public doInit()V
    .locals 6

    .prologue
    .line 123
    new-instance v0, Lcom/netflix/model/Root;

    invoke-direct {v0}, Lcom/netflix/model/Root;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cache:Lcom/netflix/model/Root;

    .line 124
    new-instance v0, Lcom/netflix/falkor/CachedModelProxy;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cache:Lcom/netflix/model/Root;

    invoke-direct {v0, p0, v1}, Lcom/netflix/falkor/CachedModelProxy;-><init>(Lcom/netflix/falkor/ServiceProvider;Lcom/netflix/falkor/BranchNode;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    .line 125
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cache:Lcom/netflix/model/Root;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, v1}, Lcom/netflix/model/Root;->setProxy(Lcom/netflix/falkor/ModelProxy;)V

    .line 127
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->userAgentIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents;->getNotificationIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/IntentUtils;->registerSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Z

    .line 128
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->playReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "com.netflix.mediaclient.intent.action.LOCAL_PLAYER_PLAY_START"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "com.netflix.mediaclient.intent.action.LOCAL_PLAYER_PLAY_STOP"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/IntentUtils;->registerSafelyBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 130
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->checkAndDeserializeFalcorCacheFromDisk()Z

    move-result v0

    sput-boolean v0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->isCacheWarmed:Z

    .line 132
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->isInPrefetchLolomoTest(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cancelPrefetchLolomoSchedulerJob()V

    .line 136
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 137
    return-void
.end method

.method public dumpCacheToDisk(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1}, Lcom/netflix/falkor/CachedModelProxy;->dumpCacheToDisk(Ljava/io/File;)V

    .line 1007
    return-void
.end method

.method public fetchAdvisories(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy;->fetchAdvisories(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 615
    return-void
.end method

.method public fetchBillboards(IZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 3

    .prologue
    .line 909
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v1, 0x0

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/netflix/falkor/CachedModelProxy;->fetchBBVideos(IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 910
    return-void
.end method

.method public fetchCW(IZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 3

    .prologue
    .line 917
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v1, 0x0

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/netflix/falkor/CachedModelProxy;->fetchCWVideos(IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 918
    return-void
.end method

.method public fetchCWFromNetwork(ILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 3

    .prologue
    .line 925
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v1, 0x0

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v1, v2, p2}, Lcom/netflix/falkor/CachedModelProxy;->fetchCWVideosFromNetwork(IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 926
    return-void
.end method

.method public fetchCWVideos(IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->USE_CACHE_AND_REMOTE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/netflix/falkor/CachedModelProxy;->fetchCWVideos(IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 408
    return-void
.end method

.method public fetchEpisodeDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/falkor/CachedModelProxy;->fetchEpisodeDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 552
    return-void
.end method

.method public fetchEpisodes(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 6

    .prologue
    .line 393
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/falkor/CachedModelProxy;->fetchEpisodes(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 394
    return-void
.end method

.method public fetchEpisodesForSeason(Lcom/netflix/mediaclient/servicemgr/Asset;)V
    .locals 4

    .prologue
    .line 673
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    .line 674
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isEpisode()Z

    move-result v1

    .line 675
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getParentId()Ljava/lang/String;

    move-result-object v2

    .line 677
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 738
    :cond_0
    :goto_0
    return-void

    .line 685
    :cond_1
    if-eqz v1, :cond_0

    .line 692
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v3, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->fetchShowDetails(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    goto :goto_0
.end method

.method public fetchFalkorVideo(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy;->fetchFalkorVideo(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 431
    return-void
.end method

.method public fetchGenreList(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1}, Lcom/netflix/falkor/CachedModelProxy;->fetchGenreList(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 482
    return-void
.end method

.method public fetchGenreVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 386
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->USE_CACHE_AND_REMOTE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move v7, v6

    move-object v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/netflix/falkor/CachedModelProxy;->fetchVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 387
    return-void
.end method

.method public fetchGenres(Ljava/lang/String;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netflix/falkor/CachedModelProxy;->fetchGenres(Ljava/lang/String;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 489
    return-void
.end method

.method public fetchIQ(IZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 944
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    add-int/lit8 v2, p1, -0x1

    move v3, p2

    move v4, v1

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/netflix/falkor/CachedModelProxy;->fetchIQVideos(IIZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 945
    return-void
.end method

.method public fetchIQVideos(IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 7

    .prologue
    .line 414
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->USE_CACHE_AND_REMOTE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move v4, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/netflix/falkor/CachedModelProxy;->fetchIQVideos(IIZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 415
    return-void
.end method

.method public fetchInteractiveVideoMoments(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 7

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/netflix/falkor/CachedModelProxy;->fetchInteractiveVideoMoments(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 1019
    return-void
.end method

.method public fetchKidsCharacterDetails(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy;->fetchKidsCharacterDetails(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 524
    return-void
.end method

.method public fetchLoLoMoSummary(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy;->fetchGenreLoLoMoSummary(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 517
    return-void
.end method

.method public fetchLoMos(IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/falkor/CachedModelProxy;->fetchLoMos(IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 372
    return-void
.end method

.method public fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/falkor/CachedModelProxy;->fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 439
    return-void
.end method

.method public fetchNonMemberVideos(IZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 2

    .prologue
    .line 989
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1, p2, p3}, Lcom/netflix/falkor/CachedModelProxy;->fetchNonMemberVideos(IZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 990
    return-void
.end method

.method public fetchNotificationsList(IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 2

    .prologue
    .line 747
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/netflix/falkor/CachedModelProxy;->fetchNotifications(IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 748
    return-void
.end method

.method public fetchPersonDetail(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/falkor/CachedModelProxy;->fetchPersonDetail(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Ljava/lang/String;)V

    .line 468
    return-void
.end method

.method public fetchPersonRelated(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy;->fetchPersonRelated(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 475
    return-void
.end method

.method public fetchPostPlayVideos(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netflix/falkor/CachedModelProxy;->fetchPostPlayVideos(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 533
    return-void
.end method

.method public fetchPreAppData(II)V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 889
    new-instance v11, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$9;

    invoke-direct {v11, p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$9;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V

    .line 896
    add-int/lit8 v4, p2, -0x1

    .line 897
    add-int/lit8 v2, p1, -0x1

    move-object v0, p0

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v1

    move v9, v1

    move v10, v1

    invoke-virtual/range {v0 .. v11}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->prefetchLoLoMo(IIIIIIZZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 902
    return-void
.end method

.method public fetchRecommendedList(IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 6

    .prologue
    .line 953
    new-instance v0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$10;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$10;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 981
    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v0}, Lcom/netflix/falkor/CachedModelProxy;->fetchLoMos(IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 982
    return-void
.end method

.method public fetchScenePosition(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netflix/falkor/CachedModelProxy;->fetchScenePosition(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 567
    return-void
.end method

.method public fetchSeasonDetails(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy;->fetchSeasonDetails(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 560
    return-void
.end method

.method public fetchSeasons(Ljava/lang/String;Lcom/netflix/falkor/task/CmpTaskMode;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/falkor/CachedModelProxy;->fetchSeasons(Ljava/lang/String;Lcom/netflix/falkor/task/CmpTaskMode;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 401
    return-void
.end method

.method public fetchShowDetails(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 453
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, v3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/netflix/falkor/CachedModelProxy;->fetchShowDetails(Ljava/lang/String;Ljava/lang/String;ZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 454
    return-void
.end method

.method public fetchShowDetailsAndSeasons(Ljava/lang/String;Ljava/lang/String;ZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 7

    .prologue
    .line 460
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v3, 0x1

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/netflix/falkor/CachedModelProxy;->fetchShowDetails(Ljava/lang/String;Ljava/lang/String;ZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 461
    return-void
.end method

.method public fetchSimilarVideosForPerson(Ljava/lang/String;ILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 502
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;->PEOPLE:Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;

    move-object v2, p1

    move v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/falkor/CachedModelProxy;->fetchSimilarVideos(Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;Ljava/lang/String;ILjava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 503
    return-void
.end method

.method public fetchSimilarVideosForQuerySuggestion(Ljava/lang/String;ILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 509
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;->QUERY_SUGGESTION:Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;

    move-object v2, p1

    move v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/falkor/CachedModelProxy;->fetchSimilarVideos(Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;Ljava/lang/String;ILjava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 510
    return-void
.end method

.method public fetchTask(Lcom/netflix/falkor/task/CmpTaskDetails;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy;->fetchTask(Lcom/netflix/falkor/task/CmpTaskDetails;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 308
    return-void
.end method

.method public fetchVideoSummary(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy;->fetchVideoSummary(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 423
    return-void
.end method

.method public fetchVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 9

    .prologue
    .line 379
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v7, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/netflix/falkor/CachedModelProxy;->fetchVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 380
    return-void
.end method

.method public flushCaches(Z)V
    .locals 1

    .prologue
    .line 157
    if-eqz p1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->purgePersistentCache()V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->flushCaches()V

    .line 161
    return-void
.end method

.method public forceFetchFromLocalCache(Z)V
    .locals 1

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1}, Lcom/netflix/falkor/CachedModelProxy;->forceFetchFromLocalCache(Z)V

    .line 1011
    return-void
.end method

.method public getLolomoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->getCurrLolomoId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelProxy()Lcom/netflix/falkor/ModelProxy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netflix/falkor/ModelProxy",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    return-object v0
.end method

.method public getService()Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method public invalidateCachedEpisodes(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy;->invalidateEpisodes(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    .line 997
    return-void
.end method

.method public logBillboardActivity(Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            "Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 596
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->billboardLogLimiter:Lcom/netflix/mediaclient/service/falkor/BillboardLogLimiter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getLolomoId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/falkor/BillboardLogLimiter;->shouldSendBillboardLog(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/falkor/CachedModelProxy;->logBillboardActivity(Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;Ljava/util/Map;)V

    .line 601
    :goto_0
    return-void

    .line 599
    :cond_0
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "drop billboardLog %s - %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public logPostPlayImpression(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netflix/falkor/CachedModelProxy;->logPostPlayImpression(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 543
    return-void
.end method

.method public markNotificationAsRead(Lcom/netflix/model/leafs/social/IrisNotificationSummary;)V
    .locals 2

    .prologue
    .line 755
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    new-instance v1, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$5;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$5;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V

    invoke-virtual {v0, p1, v1}, Lcom/netflix/falkor/CachedModelProxy;->markNotificationAsRead(Lcom/netflix/model/leafs/social/IrisNotificationSummary;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 767
    return-void
.end method

.method public markNotificationsAsRead(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/leafs/social/IrisNotificationSummary;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 774
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    new-instance v1, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$6;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$6;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V

    invoke-virtual {v0, p1, v1}, Lcom/netflix/falkor/CachedModelProxy;->markNotificationsAsRead(Ljava/util/List;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 786
    return-void
.end method

.method public prefetchGenreLoLoMo(Ljava/lang/String;IIIIZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 8

    .prologue
    .line 364
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lcom/netflix/falkor/CachedModelProxy;->prefetchGenreLoLoMo(Ljava/lang/String;IIIIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 365
    return-void
.end method

.method public prefetchLoLoMo(IIIIIIZZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 13

    .prologue
    .line 322
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->LOLOMO_PREFETCH:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->startSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)Ljava/lang/String;

    .line 323
    new-instance v12, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$3;

    move-object/from16 v0, p11

    invoke-direct {v12, p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$3;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 354
    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v1 .. v12}, Lcom/netflix/falkor/CachedModelProxy;->prefetchLoLoMo(IIIIIIZZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 356
    return-void
.end method

.method public prefetchVideoListDetails(Ljava/util/List;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;",
            "Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 446
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy;->prefetchVideoListDetails(Ljava/util/List;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 447
    return-void
.end method

.method public refreshCw(ZZ)V
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->doesCwExist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 633
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->refreshCw()V

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 634
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->refreshLolomo()V

    goto :goto_0
.end method

.method public refreshIq()V
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->refreshIq()V

    .line 646
    return-void
.end method

.method public refreshIrisNotifications(ZZLcom/netflix/mediaclient/service/pushnotification/MessageData;)V
    .locals 4

    .prologue
    .line 800
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v1, 0x0

    const/4 v2, 0x7

    new-instance v3, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$7;

    invoke-direct {v3, p0, p2, p3}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$7;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;ZLcom/netflix/mediaclient/service/pushnotification/MessageData;)V

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/netflix/falkor/CachedModelProxy;->fetchNotifications(IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 825
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 826
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->rescheduleNotificationsRefresh()V

    .line 828
    :cond_0
    return-void
.end method

.method public refreshLolomo()V
    .locals 1

    .prologue
    .line 653
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->flushCaches(Z)V

    .line 654
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->sendHomeRefreshBrodcast(Landroid/content/Context;)V

    .line 655
    return-void
.end method

.method public removeFromQueue(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netflix/falkor/CachedModelProxy;->removeFromQueue(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 590
    return-void
.end method

.method public searchNetflix(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy;->searchNetflix(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 496
    return-void
.end method

.method public serializeFalcorCache()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 1405
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1452
    :cond_0
    :goto_0
    return-void

    .line 1412
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->isInPrefetchLolomoTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1419
    sget-wide v2, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->sLastSerializeTimeToDisk:J

    invoke-static {}, Lcom/netflix/falkor/CachedModelProxy;->getLastWriteTimeToCacheMS()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    .line 1432
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportSerializeLolomoStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1435
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v3, "prefetch.json"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1436
    new-instance v0, Ljava/io/FileWriter;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1437
    :try_start_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v1, v0}, Lcom/netflix/falkor/CachedModelProxy;->serialize(Ljava/io/Writer;)V

    .line 1438
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->sLastSerializeTimeToDisk:J

    .line 1439
    sget-wide v2, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->sLastSerializeTimeToDisk:J

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v4, "prefs_prefetch_lolomo_fetch_time_ms"

    const-wide/16 v6, -0x1

    invoke-static {v1, v4, v6, v7}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getLongPref(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 1440
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v5, 0x0

    invoke-static {v1, v4, v5, v2, v3}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportSerializeLolomoEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1447
    invoke-static {v0}, Lcom/netflix/mediaclient/util/IoUtil;->safeClose(Ljava/io/Closeable;)V

    goto :goto_0

    .line 1441
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 1445
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportSerializeLolomoEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1447
    invoke-static {v0}, Lcom/netflix/mediaclient/util/IoUtil;->safeClose(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v1}, Lcom/netflix/mediaclient/util/IoUtil;->safeClose(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_2

    .line 1441
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public serializeFalkorMetadataAsync()V
    .locals 1

    .prologue
    .line 1093
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->serializeFalkorMetadataAsync(Ljava/util/concurrent/CountDownLatch;)V

    .line 1094
    return-void
.end method

.method public serializeFalkorMetadataAsync(Ljava/util/concurrent/CountDownLatch;)V
    .locals 2

    .prologue
    .line 1102
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->isInPrefetchLolomoTest(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1115
    :goto_0
    return-void

    .line 1108
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v1, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$13;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$13;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setVideoThumbRating(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 6

    .prologue
    .line 575
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/falkor/CachedModelProxy;->setVideoThumbRating(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 576
    return-void
.end method

.method public startLolomoFetchJob(Z)Z
    .locals 15

    .prologue
    .line 1027
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isApplicationInForeground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1031
    const/4 v0, 0x0

    .line 1061
    :goto_0
    return v0

    .line 1034
    :cond_0
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "Prefetching lolomo from network"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->requestId:J

    .line 1036
    iget-wide v12, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->requestId:J

    .line 1038
    new-instance v14, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x2

    invoke-direct {v14, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1039
    const/4 v1, 0x0

    .line 1040
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->getNumberRowsToFetch(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    .line 1041
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->STANDARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->computeNumVideosToFetchPerBatch(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    const/4 v5, 0x0

    .line 1042
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    sget-object v6, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->CONTINUE_WATCHING:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-static {v0, v6}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->computeNumVideosToFetchPerBatch(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .line 1043
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldLoadExtraCharacterLeaves()Z

    move-result v7

    .line 1044
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldLoadKubrickLeavesInLolomo()Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    new-instance v11, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$11;

    invoke-direct {v11, p0, v12, v13, v14}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$11;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;JLjava/util/concurrent/CountDownLatch;)V

    move-object v0, p0

    .line 1039
    invoke-virtual/range {v0 .. v11}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->prefetchLoLoMo(IIIIIIZZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 1060
    invoke-direct {p0, v14}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->notifyJobSchedulerFinishedAsync(Ljava/util/concurrent/CountDownLatch;)V

    .line 1061
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateCachedVideoPosition(Lcom/netflix/mediaclient/servicemgr/Asset;)V
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1}, Lcom/netflix/falkor/CachedModelProxy;->updateBookmarkPosition(Lcom/netflix/mediaclient/servicemgr/Asset;)V

    .line 623
    return-void
.end method

.method public updateExpiredContentAdvisoryStatus(Ljava/lang/String;Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;)V
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy;->updateExpiredContentAdvisoryStatus(Ljava/lang/String;Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;)V

    .line 608
    return-void
.end method

.method public updateOfflineGeoPlayability(Ljava/util/List;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 934
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 935
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy;->fetchOfflineGeoPlayability(Ljava/util/List;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 937
    :cond_0
    return-void
.end method
