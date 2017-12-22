.class Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;
.super Ljava/lang/Object;
.source "PresentationTrackingManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/PresentationTracking;


# static fields
.field private static final PT_MAX_TIME_EVENT_CAN_STAY_IN_QUEUE_MS:I = 0x493e0

.field private static final PT_MIN_NUMBER_OF_PAGES_TO_POST:I = 0x32

.field static final REPOSITORY_DIR:Ljava/lang/String; = "ptevents"

.field private static final RETRY_TO_DELIVER_BACKUPS_IN_SEC:I = 0xf

.field public static final TAG:Ljava/lang/String; = "nf_presentation"


# instance fields
.field private mBackupHandler:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mDataRepository:Lcom/netflix/mediaclient/util/data/DataRepository;

.field private mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mLolomoScrollAmountInInches:Landroid/graphics/PointF;

.field private mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

.field private final mPendingCachedLogPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPresentationEventQueue:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationTrackingEventQueue;

.field private mRequestFactory:Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationRequestFactory;

.field private mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/logging/LoggingAgent;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V
    .locals 2

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mPendingCachedLogPayloads:Ljava/util/List;

    .line 93
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mLolomoScrollAmountInInches:Landroid/graphics/PointF;

    .line 240
    new-instance v0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$2;-><init>(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mBackupHandler:Ljava/lang/Runnable;

    .line 99
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    .line 100
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mContext:Landroid/content/Context;

    .line 101
    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    .line 102
    new-instance v0, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationRequestFactory;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationRequestFactory;-><init>(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mRequestFactory:Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationRequestFactory;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;)Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationTrackingEventQueue;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mPresentationEventQueue:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationTrackingEventQueue;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;Ljava/util/List;Z)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->sendPresentationEvents(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;[Lcom/netflix/mediaclient/util/data/DataRepository$Entry;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->deliverSavedPayloads([Lcom/netflix/mediaclient/util/data/DataRepository$Entry;)V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;)Lcom/netflix/mediaclient/util/data/DataRepository;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mDataRepository:Lcom/netflix/mediaclient/util/data/DataRepository;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->loadAndSendEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->removeSavedEvents(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebCallback;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->sendPresentationEvents(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebCallback;)V

    return-void
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;)Lcom/netflix/mediaclient/service/logging/LoggingAgent;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method private deliverSavedPayloads([Lcom/netflix/mediaclient/util/data/DataRepository$Entry;)V
    .locals 8

    .prologue
    .line 291
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 292
    :cond_0
    const-string/jumbo v0, "nf_presentation"

    const-string/jumbo v1, "No saved events found"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_1
    return-void

    .line 301
    :cond_2
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 302
    invoke-interface {v2}, Lcom/netflix/mediaclient/util/data/DataRepository$Entry;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 304
    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mPendingCachedLogPayloads:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 305
    const-string/jumbo v2, "nf_presentation"

    const-string/jumbo v3, "We are already trying to deliver %s deliveryRequestId, skip"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    :cond_3
    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mPendingCachedLogPayloads:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$3;

    invoke-direct {v4, p0, v2}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$3;-><init>(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    .line 315
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getNextTimeToDeliverAfterFailure()J

    move-result-wide v6

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 310
    invoke-interface {v3, v4, v6, v7, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1
.end method

.method private initDataRepository()V
    .locals 3

    .prologue
    .line 221
    const-string/jumbo v0, "nf_presentation"

    const-string/jumbo v1, "PtManager::init data repository started "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 224
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "ptevents"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 225
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 226
    new-instance v0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mDataRepository:Lcom/netflix/mediaclient/util/data/DataRepository;

    .line 228
    const-string/jumbo v0, "nf_presentation"

    const-string/jumbo v1, "PtManager::init data repository done "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-void
.end method

.method private initPresentationQueue()V
    .locals 3

    .prologue
    .line 113
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8297$HackForPresentationTrackingManager;->getPresentationTrackingBufferMultiplier()I

    move-result v0

    mul-int/lit8 v1, v0, 0x32

    .line 114
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    .line 115
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getPresentationTrackingAggregationSize()I

    move-result v0

    .line 116
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 119
    :goto_0
    new-instance v1, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationTrackingEventQueue;

    invoke-direct {v1, p0, v0}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationTrackingEventQueue;-><init>(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;I)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mPresentationEventQueue:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationTrackingEventQueue;

    .line 120
    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private loadAndSendEvent(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mDataRepository:Lcom/netflix/mediaclient/util/data/DataRepository;

    new-instance v1, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$4;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$4;-><init>(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/util/data/DataRepository;->load(Ljava/lang/String;Lcom/netflix/mediaclient/util/data/DataRepository$DataLoadedCallback;)V

    .line 345
    return-void
.end method

.method private loadNotDeliveredEvents()V
    .locals 5

    .prologue
    .line 233
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mPresentationEventQueue:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationTrackingEventQueue;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationTrackingEventQueue;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mBackupHandler:Ljava/lang/Runnable;

    const-wide/16 v2, 0xf

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 238
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mBackupHandler:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private removeSavedEvents(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mPendingCachedLogPayloads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 283
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mDataRepository:Lcom/netflix/mediaclient/util/data/DataRepository;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/util/data/DataRepository;->remove(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    const-string/jumbo v1, "nf_presentation"

    const-string/jumbo v2, "Failed to remove payload from repository"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private reportScrollAmountToCL()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mLolomoScrollAmountInInches:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mLolomoScrollAmountInInches:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 205
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 206
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mLolomoScrollAmountInInches:Landroid/graphics/PointF;

    monitor-enter v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :try_start_1
    const-string/jumbo v2, "horizontal"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mLolomoScrollAmountInInches:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    float-to-double v4, v3

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 208
    const-string/jumbo v2, "vertical"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mLolomoScrollAmountInInches:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    float-to-double v4, v3

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 209
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    :try_start_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "onLolomoScroll"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportCustomAction(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lorg/json/JSONObject;)V

    .line 211
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mLolomoScrollAmountInInches:Landroid/graphics/PointF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 212
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mLolomoScrollAmountInInches:Landroid/graphics/PointF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/PointF;->y:F
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 217
    :cond_1
    :goto_0
    return-void

    .line 209
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    const-string/jumbo v1, "nf_presentation"

    const-string/jumbo v2, "Failed to create JSON object for lolomo_scroll cl event"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private saveEvents(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mDataRepository:Lcom/netflix/mediaclient/util/data/DataRepository;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "utf-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/util/data/DataRepository;->save(Ljava/lang/String;[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 276
    :goto_0
    return-object v0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    const-string/jumbo v1, "nf_presentation"

    const-string/jumbo v2, "Failed to save payload to repository"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendPresentationEvents(Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 439
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mRequestFactory:Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationRequestFactory;

    invoke-virtual {v0, v1, p1, v1}, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationRequestFactory;->createLoggingEventsRequest(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    .line 440
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 441
    return-void
.end method

.method private sendPresentationEvents(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebCallback;)V
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mRequestFactory:Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationRequestFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationRequestFactory;->createLoggingEventsRequest(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    .line 429
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 430
    return-void
.end method

.method private sendPresentationEvents(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 170
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 171
    const-string/jumbo v0, "nf_presentation"

    const-string/jumbo v1, "Dropping presentation message - 0 events"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->reportScrollAmountToCL()V

    .line 177
    new-instance v0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V

    .line 178
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->addAllEvent(Ljava/util/List;)V

    .line 181
    :try_start_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    if-eqz p2, :cond_1

    .line 187
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->saveEvents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 188
    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mPendingCachedLogPayloads:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v3, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationWebCallbackImpl;

    invoke-direct {v3, p0, v1}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationWebCallbackImpl;-><init>(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;Ljava/lang/String;)V

    invoke-direct {p0, v2, v0, v3}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->sendPresentationEvents(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    const-string/jumbo v1, "nf_presentation"

    const-string/jumbo v2, "Failed to create JSON object for presentation request"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 191
    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->sendPresentationEvents(Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method checkState()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mPresentationEventQueue:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationTrackingEventQueue;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationTrackingEventQueue;->flushIfCriteriaIsFulfilled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    const-string/jumbo v0, "nf_presentation"

    const-string/jumbo v1, "Presentation tracking events were send recently ms. We reached timeout, force send"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_0
    return-void
.end method

.method flush(Z)V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mPresentationEventQueue:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationTrackingEventQueue;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationTrackingEventQueue;->flushEvents(Z)V

    .line 365
    return-void
.end method

.method public handleConnectivityChange()V
    .locals 6

    .prologue
    .line 445
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    const-string/jumbo v0, "nf_presentation"

    const-string/jumbo v1, "Device is connected, lets see if we need to deliver cached events..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mDataRepository:Lcom/netflix/mediaclient/util/data/DataRepository;

    invoke-interface {v0}, Lcom/netflix/mediaclient/util/data/DataRepository;->getEntries()[Lcom/netflix/mediaclient/util/data/DataRepository$Entry;

    move-result-object v0

    .line 449
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 450
    const-string/jumbo v1, "nf_presentation"

    const-string/jumbo v2, "We found %d cached log entries, network is connected, lets try to deliver them"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 451
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->deliverSavedPayloads([Lcom/netflix/mediaclient/util/data/DataRepository$Entry;)V

    .line 454
    :cond_0
    return-void
.end method

.method init(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 108
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->initPresentationQueue()V

    .line 109
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->initDataRepository()V

    .line 110
    return-void
.end method

.method pauseDelivery()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mPresentationEventQueue:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationTrackingEventQueue;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationTrackingEventQueue;->pauseDelivery()V

    .line 349
    return-void
.end method

.method public reportLolomoScrollAmount(DD)V
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    .line 141
    cmpl-double v0, p1, v2

    if-gtz v0, :cond_0

    cmpl-double v0, p3, v2

    if-lez v0, :cond_1

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mLolomoScrollAmountInInches:Landroid/graphics/PointF;

    monitor-enter v1

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mLolomoScrollAmountInInches:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    float-to-double v2, v2

    add-double/2addr v2, p1

    double-to-float v2, v2

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 144
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mLolomoScrollAmountInInches:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->y:F

    float-to-double v2, v2

    add-double/2addr v2, p3

    double-to-float v2, v2

    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 145
    const-string/jumbo v0, "nf_presentation"

    const-string/jumbo v2, "User scrolled %f - %f since last flush"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mLolomoScrollAmountInInches:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mLolomoScrollAmountInInches:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 146
    monitor-exit v1

    .line 148
    :cond_1
    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reportPresentation(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;Ljava/util/List;Ljava/util/List;ILcom/netflix/mediaclient/servicemgr/UiLocation;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/netflix/mediaclient/servicemgr/UiLocation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v7, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$1;-><init>(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;Ljava/util/List;Ljava/util/List;ILcom/netflix/mediaclient/servicemgr/UiLocation;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 137
    return-void
.end method

.method resumeDelivery(Z)V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mPresentationEventQueue:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationTrackingEventQueue;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationTrackingEventQueue;->resumeDelivery(Z)V

    .line 353
    return-void
.end method

.method startDelivery()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mPresentationEventQueue:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationTrackingEventQueue;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationTrackingEventQueue;->startDelivery()V

    .line 360
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->loadNotDeliveredEvents()V

    .line 361
    return-void
.end method
