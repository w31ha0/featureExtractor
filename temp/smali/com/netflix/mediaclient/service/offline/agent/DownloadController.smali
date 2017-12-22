.class Lcom/netflix/mediaclient/service/offline/agent/DownloadController;
.super Ljava/lang/Object;
.source "DownloadController.java"


# static fields
.field private static final AttemptToBackOffMilliseconds:[J

.field private static final DL_WINDOW_BACK_OFF_TIMES:[J

.field private static final DOWNLOAD_ONE_ITEM_AT_A_TIME:Z = true

.field private static final MAX_NETWORK_ERRORS_BEFORE_SELECTING_NEXT_PLAYABLE:I

.field private static final MAX_NETWORK_ERRORS_IN_DL_WINDOW:I

.field private static final MIN_NETWORK_ERRORS_IN_DL_WINDOW:I = 0x2

.field private static final MIN_TIME_BETWEEN_NETWORK_CHANGE:J = 0x1388L

.field private static final RANDOM_DELAY_TO_BACK_OFF_TIME_PERCENTAGE:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "nf_downloadController"


# instance fields
.field private final FIRST_TIME_NETWORK_CHANGE_RUNNABLE_DELAY:J

.field private final mBackOffRunnable:Ljava/lang/Runnable;

.field private final mClientLogging:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

.field private mCompletedCount:I

.field private mConnectedNetType:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private final mDownloadContinueReceiver:Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;

.field private final mDownloadMaintenanceAction:Lcom/netflix/mediaclient/service/job/MaintenanceAction;

.field private mDownloadResumeJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

.field private mDownloadsAreStoppedByUser:Z

.field private mFirstTimeNetworkChangeReceived:Z

.field private final mFirstTimeNetworkRunnable:Ljava/lang/Runnable;

.field private mInProgressCount:I

.field private mIncompleteItems:I

.field private mIndexOfDlWindowBackOffTime:I

.field private mIndexOfNextPlayable:I

.field private mIsStreaming:Z

.field private mLastNetworkChangedTime:J

.field private final mMaintenanceJobMgr:Lcom/netflix/mediaclient/service/job/MaintenanceJobMgr;

.field private final mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

.field private final mNetworkChangeRunnable:Ljava/lang/Runnable;

.field private mNumberOfNetworkErrorsInCurrentDLWindow:I

.field private final mOfflinePlayableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlayableNetworkErrorCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorkHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 75
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/32 v2, 0xea60

    aput-wide v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->AttemptToBackOffMilliseconds:[J

    .line 78
    sget-object v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->AttemptToBackOffMilliseconds:[J

    array-length v0, v0

    sput v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->MAX_NETWORK_ERRORS_BEFORE_SELECTING_NEXT_PLAYABLE:I

    .line 83
    sget v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->MAX_NETWORK_ERRORS_BEFORE_SELECTING_NEXT_PLAYABLE:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->MAX_NETWORK_ERRORS_IN_DL_WINDOW:I

    .line 86
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->DL_WINDOW_BACK_OFF_TIMES:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x36ee80
        0xdbba00
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/service/job/MaintenanceAction;Ljava/util/List;Landroid/os/Looper;Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;ZLcom/netflix/mediaclient/servicemgr/IClientLogging;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/netflix/mediaclient/service/NetflixService;",
            "Lcom/netflix/mediaclient/service/job/MaintenanceAction;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;",
            ">;",
            "Landroid/os/Looper;",
            "Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;",
            "Z",
            "Lcom/netflix/mediaclient/servicemgr/IClientLogging;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mPlayableNetworkErrorCountMap:Ljava/util/Map;

    .line 119
    iput v4, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIndexOfNextPlayable:I

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mFirstTimeNetworkChangeReceived:Z

    .line 123
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->FIRST_TIME_NETWORK_CHANGE_RUNNABLE_DELAY:J

    .line 213
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$3;-><init>(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mBackOffRunnable:Ljava/lang/Runnable;

    .line 220
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$4;-><init>(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mFirstTimeNetworkRunnable:Ljava/lang/Runnable;

    .line 232
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$5;-><init>(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNetworkChangeRunnable:Ljava/lang/Runnable;

    .line 280
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mContext:Landroid/content/Context;

    .line 281
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/NetflixService;->getJobScheduler()Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    .line 282
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/NetflixService;->getMaintenanceJobMgr()Lcom/netflix/mediaclient/service/job/MaintenanceJobMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mMaintenanceJobMgr:Lcom/netflix/mediaclient/service/job/MaintenanceJobMgr;

    .line 283
    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadMaintenanceAction:Lcom/netflix/mediaclient/service/job/MaintenanceAction;

    .line 284
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mWorkHandler:Landroid/os/Handler;

    .line 285
    iput-object p6, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadContinueReceiver:Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;

    .line 286
    iput-object p4, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mOfflinePlayableList:Ljava/util/List;

    .line 287
    iput-object p8, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mClientLogging:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    .line 288
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->requiresUnmeteredConnectionForDownload()Z

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/job/NetflixJob;->buildDownloadResumeJob(Z)Lcom/netflix/mediaclient/service/job/NetflixJob;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadResumeJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    .line 289
    sget-object v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->DOWNLOAD_RESUME:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    new-instance v1, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadJobExecutor;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadJobExecutor;-><init>(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)V

    invoke-virtual {p2, v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->registerJobExecutor(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Lcom/netflix/mediaclient/service/job/NetflixJobExecutor;)V

    .line 295
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->registerMaintenanceAction()V

    .line 300
    :goto_0
    iput-boolean v4, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDestroyed:Z

    .line 301
    iput-boolean p7, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadsAreStoppedByUser:Z

    .line 303
    return-void

    .line 298
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->unregisterMaintenanceAction()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->handleStopDownloadOnStreamingStarted()V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->handleStartDownloadOnStreamingStopped()V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadContinueReceiver:Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->resetDownloadResumeJobBackOffTime()V

    return-void
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->handleNetworkChanged()V

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->onNetworkChangeRunnable()V

    return-void
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mWorkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addRandomDelayToBackOffTime(J)J
    .locals 5

    .prologue
    .line 567
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 568
    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    add-long/2addr v0, p1

    .line 569
    return-wide v0
.end method

.method private cancelDownloadResumeJob()V
    .locals 2

    .prologue
    .line 483
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadResumeJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getNetflixJobId()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;->isJobScheduled(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadResumeJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getNetflixJobId()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;->cancelJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    .line 485
    const-string/jumbo v0, "nf_downloadController"

    const-string/jumbo v1, "cancelDownloadResumeJob cancelled"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_0
    return-void
.end method

.method private getSafeNetworkErrorCount(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mPlayableNetworkErrorCountMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 623
    if-nez v0, :cond_0

    .line 624
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 626
    :cond_0
    return-object v0
.end method

.method private handleNetworkChanged()V
    .locals 2

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->updateConnectedNetworkType()V

    .line 253
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mConnectedNetType:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    if-eqz v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadResumeJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->canExecute(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    const-string/jumbo v0, "nf_downloadController"

    const-string/jumbo v1, "handleNetworkChanged, retry the download."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadContinueReceiver:Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;->continueDownloadOnNetworkChanged()V

    .line 269
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadResumeJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->canExecuteByNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadContinueReceiver:Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;->stopDownloadsNotAllowedByNetwork()V

    .line 260
    const-string/jumbo v0, "nf_downloadController"

    const-string/jumbo v1, "handleNetworkChanged, can\'t execute the job, stop downloads."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 262
    :cond_1
    const-string/jumbo v0, "nf_downloadController"

    const-string/jumbo v1, "handleNetworkChanged, this shouldn\'t happen."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadContinueReceiver:Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;->stopDownloadsNoNetwork()V

    .line 267
    const-string/jumbo v0, "nf_downloadController"

    const-string/jumbo v1, "mNetworkChangeRunnable, no network."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleStartDownloadOnStreamingStopped()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadContinueReceiver:Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;->continueDownloadOnStreamingStopped()V

    .line 165
    return-void
.end method

.method private handleStopDownloadOnStreamingStarted()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadContinueReceiver:Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$DownloadControllerListener;->stopDownloadOnStreamingStarted()V

    .line 169
    return-void
.end method

.method private handleUserNetworkSettingsChanged()V
    .locals 0

    .prologue
    .line 531
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->handleNetworkChanged()V

    .line 532
    return-void
.end method

.method private incrementNetworkErrorCount(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 615
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->getSafeNetworkErrorCount(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 616
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 617
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mPlayableNetworkErrorCountMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private onNetworkChangeRunnable()V
    .locals 6

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mFirstTimeNetworkChangeReceived:Z

    if-eqz v0, :cond_0

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mFirstTimeNetworkChangeReceived:Z

    .line 242
    const-string/jumbo v0, "nf_downloadController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mNetworkChangeRunnable delaying the first network change event by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->FIRST_TIME_NETWORK_CHANGE_RUNNABLE_DELAY:J

    .line 243
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mWorkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mFirstTimeNetworkRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 245
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mWorkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mFirstTimeNetworkRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->FIRST_TIME_NETWORK_CHANGE_RUNNABLE_DELAY:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 249
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->handleNetworkChanged()V

    goto :goto_0
.end method

.method private registerMaintenanceAction()V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mMaintenanceJobMgr:Lcom/netflix/mediaclient/service/job/MaintenanceJobMgr;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadMaintenanceAction:Lcom/netflix/mediaclient/service/job/MaintenanceAction;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgr;->registerAction(Lcom/netflix/mediaclient/service/job/MaintenanceAction;)V

    .line 495
    return-void
.end method

.method private resetDLWindow()V
    .locals 2

    .prologue
    .line 580
    const-string/jumbo v0, "nf_downloadController"

    const-string/jumbo v1, "resetDLWindow"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNumberOfNetworkErrorsInCurrentDLWindow:I

    .line 582
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->resetDownloadResumeJobBackOffTime()V

    .line 583
    return-void
.end method

.method private resetDownloadResumeJobBackOffTime()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 586
    const-string/jumbo v0, "nf_downloadController"

    const-string/jumbo v1, "resetDownloadResumeJobBackOffTime"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iput v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIndexOfDlWindowBackOffTime:I

    .line 588
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "download_back_off_window_index"

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putIntPref(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 589
    return-void
.end method

.method private resetFirstLevelBackOff()V
    .locals 1

    .prologue
    .line 630
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIndexOfNextPlayable:I

    .line 631
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->resetPlayableNetworkErrorCounts()V

    .line 632
    return-void
.end method

.method private resetPlayableNetworkErrorCounts()V
    .locals 3

    .prologue
    .line 635
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mPlayableNetworkErrorCountMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 636
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 638
    :cond_0
    return-void
.end method

.method private scheduleBackOffTimer(J)V
    .locals 9

    .prologue
    .line 573
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mWorkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mBackOffRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 574
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->addRandomDelayToBackOffTime(J)J

    move-result-wide v0

    .line 575
    const-string/jumbo v2, "nf_downloadController"

    const-string/jumbo v3, "scheduleBackOffTimer for seconds=%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 576
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mWorkHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mBackOffRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 577
    return-void
.end method

.method private scheduleDownloadResumeJob(J)V
    .locals 7

    .prologue
    .line 502
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadResumeJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getNetflixJobId()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;->isJobScheduled(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadResumeJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getNetflixJobId()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;->cancelJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadResumeJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/job/NetflixJob;->setMinimumDelay(J)V

    .line 506
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadResumeJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;->scheduleJob(Lcom/netflix/mediaclient/service/job/NetflixJob;)V

    .line 507
    const-string/jumbo v0, "nf_downloadController"

    const-string/jumbo v1, "DownloadResumeJob scheduled minimumDelay=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 508
    return-void
.end method

.method private scheduleDownloadResumeJobNoDelay()V
    .locals 2

    .prologue
    .line 498
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->scheduleDownloadResumeJob(J)V

    .line 499
    return-void
.end method

.method private scheduleNextDLWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 592
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->resetFirstLevelBackOff()V

    .line 593
    iput v4, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNumberOfNetworkErrorsInCurrentDLWindow:I

    .line 594
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "download_back_off_window_index"

    invoke-static {v0, v1, v4}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIndexOfDlWindowBackOffTime:I

    .line 597
    iget v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIndexOfDlWindowBackOffTime:I

    sget-object v1, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->DL_WINDOW_BACK_OFF_TIMES:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 598
    sget-object v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->DL_WINDOW_BACK_OFF_TIMES:[J

    iget v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIndexOfDlWindowBackOffTime:I

    aget-wide v0, v0, v1

    .line 599
    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->addRandomDelayToBackOffTime(J)J

    move-result-wide v0

    .line 598
    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->scheduleDownloadResumeJob(J)V

    .line 601
    iget v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIndexOfDlWindowBackOffTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIndexOfDlWindowBackOffTime:I

    .line 603
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "download_back_off_window_index"

    iget v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIndexOfDlWindowBackOffTime:I

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putIntPref(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 608
    :goto_0
    return-void

    .line 606
    :cond_0
    const-string/jumbo v0, "nf_downloadController"

    const-string/jumbo v1, "scheduleNextDLWindow exhausted all DL windows mIndexOfDlWindowBackOffTime=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIndexOfDlWindowBackOffTime:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private unregisterMaintenanceAction()V
    .locals 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mMaintenanceJobMgr:Lcom/netflix/mediaclient/service/job/MaintenanceJobMgr;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadMaintenanceAction:Lcom/netflix/mediaclient/service/job/MaintenanceAction;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgr;->unregisterAction(Lcom/netflix/mediaclient/service/job/MaintenanceAction;)V

    .line 491
    return-void
.end method

.method private updateConnectedNetworkType()V
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getCurrentNetType(Landroid/content/Context;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mConnectedNetType:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    .line 564
    :goto_0
    return-void

    .line 562
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mConnectedNetType:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    goto :goto_0
.end method

.method private updateItemCounts()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 535
    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mCompletedCount:I

    .line 536
    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mInProgressCount:I

    .line 537
    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIncompleteItems:I

    .line 538
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mOfflinePlayableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    .line 539
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Complete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v2, v3, :cond_1

    .line 540
    iget v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mCompletedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mCompletedCount:I

    goto :goto_0

    .line 541
    :cond_1
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->InProgress:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v2, :cond_0

    .line 542
    iget v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mInProgressCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mInProgressCount:I

    goto :goto_0

    .line 545
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mOfflinePlayableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mCompletedCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIncompleteItems:I

    .line 546
    return-void
.end method


# virtual methods
.method canThisPlayableBeResumedByUser(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 310
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Stopped:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eq v2, v3, :cond_0

    .line 311
    const-string/jumbo v1, "nf_downloadController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "canThisPlayableBeResumedByUser no, state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :goto_0
    return v0

    .line 314
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->updateItemCounts()V

    .line 316
    iget v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mInProgressCount:I

    if-lez v2, :cond_1

    .line 317
    const-string/jumbo v2, "nf_downloadController"

    const-string/jumbo v3, "canThisPlayableBeResumedByUser no, mInProgressCount=%d"

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mInProgressCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 322
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadResumeJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/job/NetflixJob;->canExecute(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 323
    const-string/jumbo v1, "nf_downloadController"

    const-string/jumbo v2, "canThisPlayableBeResumedByUser no, downloadResumeJob says no."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadResumeJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/job/NetflixJob;->canExecuteByNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 325
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getOfflineViewablePersistentData()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->NotAllowedOnCurrentNetwork:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadStateStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 327
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->scheduleDownloadResumeJobNoDelay()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 330
    goto :goto_0
.end method

.method destroy()V
    .locals 2

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDestroyed:Z

    .line 338
    :cond_0
    return-void
.end method

.method getNextPlayableForDownload()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 355
    const-string/jumbo v0, "nf_downloadController"

    const-string/jumbo v2, "getNextPlayableForDownload mIndexOfNextPlayable=%d"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIndexOfNextPlayable:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 359
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadsAreStoppedByUser:Z

    if-eqz v0, :cond_0

    .line 360
    const-string/jumbo v0, "nf_downloadController"

    const-string/jumbo v2, "getNextPlayableForDownload mDownloadsAreStoppedByUser=true"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 406
    :goto_0
    return-object v0

    .line 363
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIsStreaming:Z

    if-eqz v0, :cond_1

    .line 364
    const-string/jumbo v0, "nf_downloadController"

    const-string/jumbo v2, "getNextPlayableForDownload mIsStreaming=true"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 365
    goto :goto_0

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mOfflinePlayableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 368
    const-string/jumbo v0, "nf_downloadController"

    const-string/jumbo v2, "getNextPlayableForDownload all done. mOfflinePlayableList.size=%d"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mOfflinePlayableList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    .line 369
    goto :goto_0

    .line 372
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->updateItemCounts()V

    .line 373
    iget v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mCompletedCount:I

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mOfflinePlayableList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 374
    const-string/jumbo v0, "nf_downloadController"

    const-string/jumbo v2, "getNextPlayableForDownload all downloaded, mCompletedCount=%d"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mCompletedCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    .line 375
    goto :goto_0

    .line 379
    :cond_3
    iget v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mInProgressCount:I

    if-lez v0, :cond_4

    .line 380
    const-string/jumbo v0, "nf_downloadController"

    const-string/jumbo v2, "getNextPlayableForDownload already downloading, mInProgressCount=%d"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mInProgressCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    .line 381
    goto :goto_0

    .line 386
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadResumeJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/job/NetflixJob;->canExecute(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 387
    const-string/jumbo v0, "nf_downloadController"

    const-string/jumbo v2, "getNextPlayableForDownload can\'t execute, downloadResumeJob says no."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->scheduleDownloadResumeJobNoDelay()V

    move-object v0, v1

    .line 389
    goto/16 :goto_0

    .line 393
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mOfflinePlayableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v0

    :goto_1
    if-lez v2, :cond_8

    .line 394
    iget v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIndexOfNextPlayable:I

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mOfflinePlayableList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_6

    .line 395
    iput v5, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIndexOfNextPlayable:I

    .line 398
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mOfflinePlayableList:Ljava/util/List;

    iget v3, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIndexOfNextPlayable:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->canStartDownload(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 399
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mOfflinePlayableList:Ljava/util/List;

    iget v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIndexOfNextPlayable:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    .line 400
    const-string/jumbo v1, "nf_downloadController"

    const-string/jumbo v2, "getNextPlayableForDownload found with errorCount=%d playableId=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 401
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPlayableId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->getSafeNetworkErrorCount(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPlayableId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 400
    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 404
    :cond_7
    iget v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIndexOfNextPlayable:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIndexOfNextPlayable:I

    .line 393
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_8
    move-object v0, v1

    .line 406
    goto/16 :goto_0
.end method

.method public handleConnectivityChange()V
    .locals 9

    .prologue
    const-wide/16 v0, 0x1388

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 190
    iget-wide v4, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mLastNetworkChangedTime:J

    sub-long v4, v2, v4

    cmp-long v4, v4, v0

    if-gez v4, :cond_0

    .line 191
    :goto_0
    const-string/jumbo v4, "nf_downloadController"

    const-string/jumbo v5, "handleConnectivityChange delay by=%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 192
    iput-wide v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mLastNetworkChangedTime:J

    .line 193
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mWorkHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNetworkChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 194
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mWorkHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNetworkChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 195
    return-void

    .line 190
    :cond_0
    const-wide/16 v0, 0x3e8

    goto :goto_0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIsStreaming:Z

    return v0
.end method

.method notifyStreamingStarted()V
    .locals 2

    .prologue
    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIsStreaming:Z

    .line 143
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$1;-><init>(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 150
    return-void
.end method

.method notifyStreamingStopped()V
    .locals 2

    .prologue
    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIsStreaming:Z

    .line 154
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$2;-><init>(Lcom/netflix/mediaclient/service/offline/agent/DownloadController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    return-void
.end method

.method onAllPlayableDeleted()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mPlayableNetworkErrorCountMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 178
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->cancelDownloadResumeJob()V

    .line 179
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->unregisterMaintenanceAction()V

    .line 180
    return-void
.end method

.method onDeleted(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mPlayableNetworkErrorCountMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mOfflinePlayableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 422
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->cancelDownloadResumeJob()V

    .line 423
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->unregisterMaintenanceAction()V

    .line 425
    :cond_0
    return-void
.end method

.method onDownloadResumeJobDone()V
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mClientLogging:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getBreadcrumbLogging()Lcom/netflix/mediaclient/servicemgr/BreadcrumbLogging;

    move-result-object v0

    const-string/jumbo v1, "onDownloadResumeJobDone"

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/BreadcrumbLogging;->leaveBreadcrumb(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->DOWNLOAD_RESUME:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;->onJobFinished(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Z)V

    .line 185
    return-void
.end method

.method onDownloadedSuccessfully(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mPlayableNetworkErrorCountMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->resetFirstLevelBackOff()V

    .line 412
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->resetDLWindow()V

    .line 413
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->cancelDownloadResumeJob()V

    .line 414
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->registerMaintenanceAction()V

    .line 415
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mWorkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mBackOffRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 416
    return-void
.end method

.method onNetworkError(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v0, 0x2

    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 435
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->updateConnectedNetworkType()V

    .line 436
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mConnectedNetType:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    if-eqz v1, :cond_3

    .line 437
    iget v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNumberOfNetworkErrorsInCurrentDLWindow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNumberOfNetworkErrorsInCurrentDLWindow:I

    .line 438
    const-string/jumbo v1, "nf_downloadController"

    const-string/jumbo v3, "onNetworkError mNumberOfNetworkErrorsInCurrentDLWindow=%d"

    new-array v4, v2, [Ljava/lang/Object;

    iget v5, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNumberOfNetworkErrorsInCurrentDLWindow:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1, v3, v4}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 440
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->updateItemCounts()V

    .line 442
    iget v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIncompleteItems:I

    sget v3, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->MAX_NETWORK_ERRORS_BEFORE_SELECTING_NEXT_PLAYABLE:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    .line 443
    sget v3, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->MAX_NETWORK_ERRORS_IN_DL_WINDOW:I

    if-le v1, v3, :cond_0

    .line 444
    sget v1, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->MAX_NETWORK_ERRORS_IN_DL_WINDOW:I

    .line 446
    :cond_0
    if-ge v1, v0, :cond_5

    .line 449
    :goto_0
    const-string/jumbo v1, "nf_downloadController"

    const-string/jumbo v3, "maxErrorsInDlWindow=%d"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1, v3, v4}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 450
    iget v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNumberOfNetworkErrorsInCurrentDLWindow:I

    if-gt v1, v0, :cond_2

    .line 451
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->incrementNetworkErrorCount(Ljava/lang/String;)I

    move-result v0

    .line 452
    sget v1, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->MAX_NETWORK_ERRORS_BEFORE_SELECTING_NEXT_PLAYABLE:I

    if-le v0, v1, :cond_1

    .line 454
    iget v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIndexOfNextPlayable:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIndexOfNextPlayable:I

    .line 455
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mPlayableNetworkErrorCountMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    .line 459
    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->AttemptToBackOffMilliseconds:[J

    add-int/lit8 v0, v0, -0x1

    sget-object v2, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->AttemptToBackOffMilliseconds:[J

    array-length v2, v2

    rem-int/2addr v0, v2

    aget-wide v0, v1, v0

    .line 462
    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->scheduleBackOffTimer(J)V

    .line 474
    :goto_1
    return-void

    .line 464
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->scheduleNextDLWindow()V

    goto :goto_1

    .line 467
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadResumeJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getNetflixJobId()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;->isJobScheduled(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 468
    const-string/jumbo v0, "nf_downloadController"

    const-string/jumbo v1, "onNetworkError networkConnected=no, download resume job already scheduled."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 470
    :cond_4
    const-string/jumbo v0, "nf_downloadController"

    const-string/jumbo v1, "onNetworkError networkConnected=no, scheduling download resume job"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->scheduleDownloadResumeJobNoDelay()V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method onStorageError()V
    .locals 2

    .prologue
    .line 477
    const-string/jumbo v0, "nf_downloadController"

    const-string/jumbo v1, "onStorageError removing the back-off timer"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mWorkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mBackOffRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 480
    return-void
.end method

.method onThreadException()V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->cancelDownloadResumeJob()V

    .line 173
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->unregisterMaintenanceAction()V

    .line 174
    return-void
.end method

.method onUnRecoverableError(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 432
    return-void
.end method

.method requiresUnmeteredConnectionForDownload()Z
    .locals 3

    .prologue
    .line 554
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "download_requires_unmetered_network"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method setDownloadsAreStoppedByUser(Z)V
    .locals 1

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadsAreStoppedByUser:Z

    .line 136
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadsAreStoppedByUser:Z

    if-nez v0, :cond_0

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mIsStreaming:Z

    .line 139
    :cond_0
    return-void
.end method

.method setRequiresUnmeteredNetwork(Z)V
    .locals 6

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->requiresUnmeteredConnectionForDownload()Z

    move-result v0

    .line 513
    const-string/jumbo v1, "nf_downloadController"

    const-string/jumbo v2, "setRequiresUnmeteredNetwork oldValue=%b newValue=%b"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 514
    if-eq v0, p1, :cond_1

    .line 515
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "download_requires_unmetered_network"

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 519
    invoke-static {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->buildDownloadResumeJob(Z)Lcom/netflix/mediaclient/service/job/NetflixJob;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadResumeJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    .line 522
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadResumeJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getNetflixJobId()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;->isJobScheduled(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mNetflixJobScheduler:Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->mDownloadResumeJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getNetflixJobId()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;->cancelJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    .line 524
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->scheduleDownloadResumeJobNoDelay()V

    .line 526
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->handleUserNetworkSettingsChanged()V

    .line 528
    :cond_1
    return-void
.end method
