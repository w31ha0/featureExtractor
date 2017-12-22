.class public abstract Lcom/netflix/mediaclient/ui/details/DetailsActivity;
.super Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;
.source "DetailsActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
.implements Lcom/netflix/mediaclient/ui/common/PlayContextProvider;


# static fields
.field private static final ACTION_FINISH_DETAILS_ACTIVITIES:Ljava/lang/String; = "com.netflix.mediaclient.ui.login.ACTION_FINISH_DETAILS_ACTIVITIES"

.field private static final NOTIFICATION_BEACON_SENT:Ljava/lang/String; = "notification_beacon_sent"

.field private static final TAG:Ljava/lang/String; = "DetailsActivity"

.field public static final USE_DUMMY_DATA:Z


# instance fields
.field private deferredTTRparams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected episodeId:Ljava/lang/String;

.field private mAction:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

.field private mActionToken:Ljava/lang/String;

.field protected mLaunchedByModalViewId:I

.field private mNotificationOpenedReportAlreadySent:Z

.field protected playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

.field private final reloadReceiver:Landroid/content/BroadcastReceiver;

.field private serviceMan:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

.field private shareMenuCreated:Z

.field private startDPTTISession:Z

.field private startDPTTRSession:Z

.field protected videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;-><init>()V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->mLaunchedByModalViewId:I

    .line 531
    new-instance v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity$3;-><init>(Lcom/netflix/mediaclient/ui/details/DetailsActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->reloadReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/details/DetailsActivity;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->handleFalkorAgentErrors(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/details/DetailsActivity;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->reloadData()V

    return-void
.end method

.method public static finishAllDetailsActivities(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 100
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.ui.login.ACTION_FINISH_DETAILS_ACTIVITIES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 101
    return-void
.end method

.method private handleAction()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 339
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getAction()Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    move-result-object v0

    if-nez v0, :cond_0

    .line 340
    const-string/jumbo v0, "DetailsActivity"

    const-string/jumbo v1, "No action task specified"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :goto_0
    return-void

    .line 344
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->AddToMyList:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getAction()Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 345
    const-string/jumbo v0, "DetailsActivity"

    const-string/jumbo v1, "Action add to my list started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->handleAddToMyList()V

    .line 362
    :cond_1
    :goto_1
    iput-object v2, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->mAction:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    .line 363
    iput-object v2, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->mActionToken:Ljava/lang/String;

    .line 364
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 348
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->RemoveFromMyList:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getAction()Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 349
    const-string/jumbo v0, "DetailsActivity"

    const-string/jumbo v1, "Action remove from my list started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->handleRemoveFromMyList()V

    goto :goto_1

    .line 352
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->Download:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getAction()Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    const-string/jumbo v0, "DetailsActivity"

    const-string/jumbo v1, "Action download started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->handleAddToDownloads()V

    goto :goto_1
.end method

.method private handleAddToDownloads()V
    .locals 4

    .prologue
    .line 406
    const-string/jumbo v0, "DetailsActivity"

    const-string/jumbo v1, "handleAddToDownloads"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    .line 408
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_0

    .line 409
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 411
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->serviceMan:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->episodeId:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-interface {v1, v2, v0, v3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->requestOfflineViewing(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    .line 412
    return-void
.end method

.method private handleAddToMyList()V
    .locals 7

    .prologue
    .line 387
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportAddToQueueActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 388
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->serviceMan:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->videoId:Ljava/lang/String;

    .line 390
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    .line 391
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getTrackId()I

    move-result v3

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->mActionToken:Ljava/lang/String;

    new-instance v5, Lcom/netflix/mediaclient/ui/details/DetailsActivity$MyListCallback;

    const-string/jumbo v6, "DetailsActivity"

    invoke-direct {v5, p0, v6}, Lcom/netflix/mediaclient/ui/details/DetailsActivity$MyListCallback;-><init>(Lcom/netflix/mediaclient/ui/details/DetailsActivity;Ljava/lang/String;)V

    .line 388
    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->addToQueue(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ILjava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 394
    return-void
.end method

.method private handleRemoveFromMyList()V
    .locals 6

    .prologue
    .line 397
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportRemoveFromQueueActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 398
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->serviceMan:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->videoId:Ljava/lang/String;

    .line 400
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->mActionToken:Ljava/lang/String;

    new-instance v4, Lcom/netflix/mediaclient/ui/details/DetailsActivity$MyListCallback;

    const-string/jumbo v5, "DetailsActivity"

    invoke-direct {v4, p0, v5}, Lcom/netflix/mediaclient/ui/details/DetailsActivity$MyListCallback;-><init>(Lcom/netflix/mediaclient/ui/details/DetailsActivity;Ljava/lang/String;)V

    .line 398
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->removeFromQueue(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 403
    return-void
.end method

.method private registerReceivers()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->reloadReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.DETAIL_PAGE_REFRESH"

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->registerReceiverLocallyWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 369
    const-string/jumbo v0, "com.netflix.mediaclient.ui.login.ACTION_FINISH_DETAILS_ACTIVITIES"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->registerFinishReceiverWithAutoUnregister(Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method private reloadData()V
    .locals 1

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->sendReloadRequest(Landroid/app/Fragment;)V

    .line 448
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getSecondaryFrag()Landroid/app/Fragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->sendReloadRequest(Landroid/app/Fragment;)V

    .line 449
    return-void
.end method

.method private sendReloadRequest(Landroid/app/Fragment;)V
    .locals 2

    .prologue
    .line 452
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Reloader;

    if-nez v0, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    const-string/jumbo v0, "DetailsActivity"

    const-string/jumbo v1, "Found frag to execute reload request..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    check-cast p1, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Reloader;

    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Reloader;->reload()V

    goto :goto_0
.end method

.method private sendRetryRequest(Landroid/app/Fragment;)V
    .locals 2

    .prologue
    .line 433
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    if-nez v0, :cond_1

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    const-string/jumbo v0, "DetailsActivity"

    const-string/jumbo v1, "Found frag to execute retry request..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    check-cast p1, Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;->onRetryRequested()V

    goto :goto_0
.end method


# virtual methods
.method protected canApplyBrowseExperience()Z
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public canShowSnackBar()Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x1

    return v0
.end method

.method protected createManagerStatusListener()Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 0

    .prologue
    .line 461
    return-object p0
.end method

.method protected createTTRListener()Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$InteractiveListener;
    .locals 1

    .prologue
    .line 257
    new-instance v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity$1;-><init>(Lcom/netflix/mediaclient/ui/details/DetailsActivity;)V

    return-object v0
.end method

.method public endDPTTISession(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->startDPTTISession:Z

    .line 166
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->DP_TTI:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->populateDPSession(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V

    .line 167
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getApmSafely()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->flushApmEvents(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;)V

    .line 173
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->deferredTTRparams:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->endDPTTRSession(Ljava/util/Map;)V

    .line 176
    :cond_0
    return-void
.end method

.method public endDPTTRSession(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->startDPTTISession:Z

    if-eqz v0, :cond_0

    .line 146
    const-string/jumbo v0, "InteractiveTracker"

    const-string/jumbo v1, "TTR deferred... (was before TTI)"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->deferredTTRparams:Ljava/util/Map;

    .line 154
    :goto_0
    return-void

    .line 151
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->startDPTTRSession:Z

    .line 152
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->DP_TTR:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->populateDPSession(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V

    .line 153
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getApmSafely()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->flushApmEvents(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;)V

    goto :goto_0
.end method

.method protected fillVideoAndEpisodeIds()V
    .locals 2

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_video_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->videoId:Ljava/lang/String;

    .line 329
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_episode_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->episodeId:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->startDPTTRSession:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->startDPTTISession:Z

    if-eqz v0, :cond_2

    .line 199
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 200
    const-string/jumbo v1, "reason"

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->startDPTTISession:Z

    if-eqz v1, :cond_1

    .line 202
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->endDPTTISession(Ljava/util/Map;)V

    .line 204
    :cond_1
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->startDPTTRSession:Z

    if-eqz v1, :cond_2

    .line 205
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->endDPTTRSession(Ljava/util/Map;)V

    .line 208
    :cond_2
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->finish()V

    .line 209
    return-void
.end method

.method public getAction()Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->mAction:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    return-object v0
.end method

.method public getActionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->mActionToken:Ljava/lang/String;

    return-object v0
.end method

.method public getDataContext()Lcom/netflix/mediaclient/service/logging/client/model/DataContext;
    .locals 3

    .prologue
    .line 480
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->videoId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;-><init>(Lcom/netflix/mediaclient/ui/common/PlayContext;Ljava/lang/String;)V

    return-object v0
.end method

.method public getEpisodeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->episodeId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    return-object v0
.end method

.method public getTrackId()I
    .locals 3

    .prologue
    .line 373
    const/4 v0, -0x1

    .line 374
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    if-eqz v1, :cond_0

    .line 375
    const-string/jumbo v0, "DetailsActivity"

    const-string/jumbo v1, "TrackId found in PlayContextImpl"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getTrackId()I

    move-result v0

    .line 380
    :goto_0
    return v0

    .line 378
    :cond_0
    const-string/jumbo v1, "DetailsActivity"

    const-string/jumbo v2, "TrackId not found!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    .prologue
    .line 475
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->movieDetails:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method public getVideoDetailsViewGroup()Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 513
    const/4 v1, 0x2

    new-array v2, v1, [Landroid/app/Fragment;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getSecondaryFrag()Landroid/app/Fragment;

    move-result-object v3

    aput-object v3, v2, v1

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 514
    if-eqz v0, :cond_1

    .line 515
    instance-of v4, v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$VideoDetailsViewGroupProvider;

    if-eqz v4, :cond_0

    .line 516
    check-cast v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$VideoDetailsViewGroupProvider;

    .line 517
    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$VideoDetailsViewGroupProvider;->getVideoDetailsViewGroup()Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    move-result-object v0

    .line 518
    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->isVisible(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 519
    return-object v0

    .line 523
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$VideoDetailsViewGroupProviderException;

    const-string/jumbo v1, "Fragment does not implement VideoDetailsViewGroupProvider"

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity$VideoDetailsViewGroupProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 528
    :cond_2
    new-instance v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$VideoDetailsViewGroupProviderException;

    const-string/jumbo v1, "No visible VideoDetailsViewGroup found"

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity$VideoDetailsViewGroupProviderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_video_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Start intent must provide extra value: extra_video_type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    if-eqz p1, :cond_3

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 113
    const-string/jumbo v0, "notification_beacon_sent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->mNotificationOpenedReportAlreadySent:Z

    .line 119
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->fillVideoAndEpisodeIds()V

    .line 120
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->mAction:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    .line 121
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_action_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->mActionToken:Ljava/lang/String;

    .line 122
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_playcontext"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    .line 123
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra_model_view_id"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->mLaunchedByModalViewId:I

    .line 124
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->setPlayContext(Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    .line 130
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 131
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->registerReceivers()V

    .line 133
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 134
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setDropShadowVisibility(Z)V

    .line 136
    :cond_2
    return-void

    .line 115
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->startDPTTISession()V

    .line 116
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->startDPTTRSession()V

    goto :goto_0
.end method

.method protected onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 235
    invoke-static {p0, p1, v1}, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->addSelectPlayTarget(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/Menu;Z)V

    .line 237
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->serviceMan:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1, p0}, Lcom/netflix/mediaclient/util/IrisUtils;->addShareIcon(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Landroid/view/Menu;Landroid/content/Context;)V

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->shareMenuCreated:Z

    .line 241
    invoke-static {p0, p1, v1}, Lcom/netflix/mediaclient/ui/details/DetailsMenu;->addItems(Lcom/netflix/mediaclient/ui/details/DetailsActivity;Landroid/view/Menu;Z)V

    .line 242
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V

    .line 243
    return-void
.end method

.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 270
    const-string/jumbo v0, "DetailsActivity"

    const-string/jumbo v1, "ServiceManager ready"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->serviceMan:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    .line 273
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->shareMenuCreated:Z

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->invalidateOptionsMenu()V

    .line 279
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$DPTTRTracker;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$DPTTRTracker;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->createTTRListener()Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$InteractiveListener;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->setupInteractiveTracking(Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$InteractiveListener;)V

    .line 281
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 283
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getSecondaryFrag()Landroid/app/Fragment;

    move-result-object v0

    .line 284
    if-eqz v0, :cond_1

    .line 285
    check-cast v0, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 288
    :cond_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->mNotificationOpenedReportAlreadySent:Z

    if-nez v0, :cond_2

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->mNotificationOpenedReportAlreadySent:Z

    .line 290
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->serviceMan:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->reportUserOpenedNotification(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Landroid/content/Intent;)V

    .line 292
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->handleAction()V

    .line 293
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->registerLoadingStatusCallback()V

    .line 294
    return-void
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 317
    const-string/jumbo v0, "DetailsActivity"

    const-string/jumbo v1, "ServiceManager unavailable"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;->onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 321
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getSecondaryFrag()Landroid/app/Fragment;

    move-result-object v0

    .line 322
    if-eqz v0, :cond_0

    .line 323
    check-cast v0, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;->onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 325
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 247
    invoke-static {p1, p0}, Lcom/netflix/mediaclient/util/IrisUtils;->tryHandleMenuItemClick(Landroid/view/MenuItem;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    const/4 v0, 0x1

    .line 250
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onRetryRequested()V
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->sendRetryRequest(Landroid/app/Fragment;)V

    .line 429
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getSecondaryFrag()Landroid/app/Fragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->sendRetryRequest(Landroid/app/Fragment;)V

    .line 430
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 228
    const-string/jumbo v0, "notification_beacon_sent"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->mNotificationOpenedReportAlreadySent:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 229
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 230
    return-void
.end method

.method public populateDPSession(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 183
    const-string/jumbo v0, "videoType"

    .line 184
    if-nez p1, :cond_0

    .line 185
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_1
    return-object p1
.end method

.method public registerLoadingStatusCallback()V
    .locals 1

    .prologue
    .line 298
    new-instance v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity$2;-><init>(Lcom/netflix/mediaclient/ui/details/DetailsActivity;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->setLoadingStatusCallback(Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;)V

    .line 313
    return-void
.end method

.method protected requiresDownloadButtonListener()Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x1

    return v0
.end method

.method protected setAction(Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 496
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->mAction:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    .line 497
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->mActionToken:Ljava/lang/String;

    .line 498
    return-void
.end method

.method public setPlayContext(Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 466
    return-void
.end method

.method public setVideoAndEpisodeIds(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->videoId:Ljava/lang/String;

    .line 334
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->episodeId:Ljava/lang/String;

    .line 335
    return-void
.end method

.method protected setVideoId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->videoId:Ljava/lang/String;

    .line 424
    return-void
.end method

.method public shouldApplyPaddingToSlidingPanel()Z
    .locals 1

    .prologue
    .line 485
    const/4 v0, 0x0

    return v0
.end method

.method public startDPTTISession()V
    .locals 2

    .prologue
    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->startDPTTISession:Z

    .line 158
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->DP_TTI:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->startSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)Ljava/lang/String;

    .line 162
    return-void
.end method

.method public startDPTTRSession()V
    .locals 2

    .prologue
    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->startDPTTRSession:Z

    .line 140
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->DP_TTR:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->startSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)Ljava/lang/String;

    .line 141
    return-void
.end method
