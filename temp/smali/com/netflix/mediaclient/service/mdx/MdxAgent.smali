.class public Lcom/netflix/mediaclient/service/mdx/MdxAgent;
.super Lcom/netflix/mediaclient/service/ServiceAgent;
.source "MdxAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$MdxImageLoaderInterface;
.implements Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog$SessionWatchDogInterface;
.implements Lcom/netflix/mediaclient/service/mdx/SwitchTarget$SwitchTargetInterface;
.implements Lcom/netflix/mediaclient/service/mdx/TargetSelector$TargetSelectorInterface;
.implements Lcom/netflix/mediaclient/service/mdx/cast/CastAgent;
.implements Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;
.implements Lcom/netflix/mediaclient/servicemgr/IMdx;


# static fields
.field private static final DEFAULT_INTEGER:I = -0x1

.field static final TAG:Ljava/lang/String; = "MdxAgent"


# instance fields
.field private mBifManager:Lcom/netflix/mediaclient/service/player/bif/IBifManager;

.field private mBoxartBitmap:Landroid/graphics/Bitmap;

.field private mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

.field private mCommandHandler:Lcom/netflix/mediaclient/service/mdx/CommandHandler;

.field private mCurrentTargetUuid:Ljava/lang/String;

.field private mDisableWebSocket:Z

.field private final mIsMdxStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mMdxAgentWorkerHandler:Landroid/os/Handler;

.field private mMdxAgentWorkerThread:Landroid/os/HandlerThread;

.field private mMdxBoxartLoader:Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;

.field private mMdxLogblobLogger:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;

.field private mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

.field private final mMdxNotificationMgrLock:Ljava/lang/Object;

.field private mMdxSessionWatchDog:Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;

.field private mMediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

.field private mNetworkState:Lcom/netflix/mediaclient/service/mdx/MdxNetworkState;

.field private mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPreviewPinVerified:Z

.field private mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

.field private final mStartStopErrorReceiver:Landroid/content/BroadcastReceiver;

.field private mStartTime:I

.field private mSwitchTarget:Lcom/netflix/mediaclient/service/mdx/SwitchTarget;

.field private mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;

.field private mTargetSelector:Lcom/netflix/mediaclient/service/mdx/TargetSelector;

.field private mTrackId:I

.field private final mUserAgentReceiver:Landroid/content/BroadcastReceiver;

.field private mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

.field private mVideoDetailsPostplay:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

.field private mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

.field private mVideoIdsPostplay:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;-><init>()V

    .line 82
    new-instance v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    .line 83
    new-instance v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIdsPostplay:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    .line 129
    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mDisableWebSocket:Z

    .line 137
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationMgrLock:Ljava/lang/Object;

    .line 779
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mStartStopErrorReceiver:Landroid/content/BroadcastReceiver;

    .line 1360
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$7;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$7;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mUserAgentReceiver:Landroid/content/BroadcastReceiver;

    .line 141
    const-string/jumbo v0, "MdxAgent"

    const-string/jumbo v1, "MdxAgent: start"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mIsMdxStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 143
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    .line 145
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "MdxAgentWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxAgentWorkerThread:Landroid/os/HandlerThread;

    .line 146
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxAgentWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 147
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxAgentWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxAgentWorkerHandler:Landroid/os/Handler;

    .line 148
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/TargetSelector;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetSelector:Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Lcom/netflix/mediaclient/service/mdx/TargetSelector;)Lcom/netflix/mediaclient/service/mdx/TargetSelector;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetSelector:Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MediaSessionController;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/ClientNotifier;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->clearVideoDetails()V

    return-void
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetailsPostplay:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetailsPostplay:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Z)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->updateMdxRemoteClient(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Z)Landroid/util/Pair;
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getMdxNotification(Z)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->updateMdxNotificationAndLockscreenWithNextSeries(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxSessionWatchDog:Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->lockWiFi()V

    return-void
.end method

.method static synthetic access$202(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBoxartBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->releaseWiFi()V

    return-void
.end method

.method static synthetic access$2400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/SwitchTarget;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mSwitchTarget:Lcom/netflix/mediaclient/service/mdx/SwitchTarget;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIdsPostplay:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;)Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIdsPostplay:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;ZZ)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->fetchVideoDetail(ZZ)V

    return-void
.end method

.method static synthetic access$2700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxBoxartLoader:Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->createBifManager(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/cast/CastManager;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;)Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTrackId:I

    return v0
.end method

.method static synthetic access$3200(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mStartTime:I

    return v0
.end method

.method static synthetic access$3300(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mPreviewPinVerified:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->updateMdxNotification(ZLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$3500(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Z)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->notifyUserProfileActivation(Z)V

    return-void
.end method

.method static synthetic access$3700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->startMdx()V

    return-void
.end method

.method static synthetic access$3800(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->onAccountDeactivate()V

    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mIsMdxStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxLogblobLogger:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->resetTargetSelection()V

    return-void
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->ensureManagers()V

    return-void
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method private clearVideoDetails()V
    .locals 1

    .prologue
    .line 1230
    new-instance v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    .line 1231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    .line 1232
    return-void
.end method

.method private createBifManager(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 651
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBifManager:Lcom/netflix/mediaclient/service/player/bif/IBifManager;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBifManager:Lcom/netflix/mediaclient/service/player/bif/IBifManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/bif/IBifManager;->release()V

    .line 654
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getResourceFetcher()Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBifManager:Lcom/netflix/mediaclient/service/player/bif/IBifManager;

    .line 655
    return-void
.end method

.method private createCastManagerAndEnable()V
    .locals 6

    .prologue
    .line 312
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    if-nez v0, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getMdxConfiguration()Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;->isEnableCast()Z

    move-result v0

    .line 314
    if-eqz v0, :cond_1

    .line 315
    const-string/jumbo v0, "MdxAgent"

    const-string/jumbo v1, "enabling cast"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxAgentWorkerHandler:Landroid/os/Handler;

    .line 317
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getEsn()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxLogblobLogger:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    .line 318
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getMdxConfiguration()Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;->getCastWhiteList()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->setCastWhiteList(Lorg/json/JSONArray;)V

    .line 319
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getMSLClient()Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxLogblobLogger:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->addCast(Landroid/content/Context;Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Lcom/netflix/mediaclient/servicemgr/IMSLClient;Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;)V

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    const-string/jumbo v0, "MdxAgent"

    const-string/jumbo v1, "cast not enabled."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createNotificationButtonIntent(Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 1306
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.MDX"

    .line 1307
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "uuid"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    .line 1308
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1316
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {v0, v1, p1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private ensureManagers()V
    .locals 3

    .prologue
    .line 764
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    if-nez v0, :cond_0

    .line 765
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 766
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getMdxConfiguration()Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    if-nez v0, :cond_1

    .line 771
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    invoke-static {v0, v1, p0, v2}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerFactory;->create(Landroid/content/Context;ZLcom/netflix/mediaclient/service/mdx/MdxAgent;Lcom/netflix/mediaclient/service/mdx/MediaSessionController;)Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    .line 773
    :cond_1
    return-void
.end method

.method private fetchVideoDetail(ZZ)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1168
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIdsPostplay:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->isEpisode:Z

    if-nez v0, :cond_1

    :cond_0
    if-nez p2, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->isEpisode:Z

    if-eqz v0, :cond_3

    .line 1171
    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIdsPostplay:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget v0, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeId:I

    .line 1174
    :goto_0
    new-instance v1, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$EpisodeBrowseAgentCallback;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent;ZZI)V

    .line 1176
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getBrowseAgent()Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;

    move-result-object v2

    .line 1177
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1176
    invoke-interface {v2, v0, v3, v1}, Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;->fetchEpisodeDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 1184
    :goto_1
    return-void

    .line 1171
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget v0, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeId:I

    goto :goto_0

    .line 1179
    :cond_3
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$MovieBrowseAgentCallback;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Z)V

    .line 1181
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getBrowseAgent()Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget v2, v2, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->catalogId:I

    .line 1182
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1181
    invoke-interface {v1, v2, v3, v0}, Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;->fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    goto :goto_1
.end method

.method private getCurrentEpisodeTitle()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 701
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    if-nez v0, :cond_1

    .line 702
    const/4 v0, 0x0

    .line 714
    :cond_0
    :goto_0
    return-object v0

    .line 704
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    .line 706
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09010b

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 708
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getSeasonAbbrSeqLabel()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 709
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getEpisodeNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    const/4 v0, 0x2

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    .line 710
    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 706
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 711
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->isNSRE()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 712
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09010c

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getMdxNotification(Z)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 535
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->getVideoIds(Ljava/lang/String;)Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    move-result-object v0

    .line 536
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->ensureManagers()V

    .line 538
    if-eqz v0, :cond_5

    .line 539
    iget-boolean v1, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->isEpisode:Z

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget-boolean v2, v2, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->isEpisode:Z

    if-ne v1, v2, :cond_1

    iget-boolean v1, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->isEpisode:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeId:I

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget v2, v2, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeId:I

    if-ne v1, v2, :cond_1

    :cond_0
    iget v1, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->catalogId:I

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget v2, v2, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->catalogId:I

    if-eq v1, v2, :cond_2

    .line 542
    :cond_1
    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    .line 543
    invoke-direct {p0, v3, p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->fetchVideoDetail(ZZ)V

    .line 544
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->getNotification(Z)Landroid/util/Pair;

    move-result-object v0

    .line 561
    :goto_0
    return-object v0

    .line 546
    :cond_2
    const-string/jumbo v0, "MdxAgent"

    const-string/jumbo v1, "MdxAgent: videoIds are all same"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->movieMetaDataAvailable(Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBoxartBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 550
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBoxartBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->setBoxart(Landroid/graphics/Bitmap;)V

    .line 553
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->isEpisode:Z

    if-nez v0, :cond_4

    .line 554
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v3, v1, v2}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->setTitlesNotify(ZLjava/lang/String;Ljava/lang/String;)V

    .line 561
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->getNotification(Z)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0

    .line 558
    :cond_5
    const-string/jumbo v0, "MdxAgent"

    const-string/jumbo v1, "MdxAgent: new videoIds is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getNextEpisodeTitle()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 718
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetailsPostplay:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    if-nez v0, :cond_0

    .line 719
    const/4 v0, 0x0

    .line 729
    :goto_0
    return-object v0

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetailsPostplay:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    .line 723
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09010b

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 724
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getSeasonAbbrSeqLabel()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 725
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getEpisodeNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x2

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 723
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 726
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->isNSRE()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 727
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09010c

    new-array v3, v7, [Ljava/lang/Object;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private isProfileActive()Z
    .locals 2

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v0

    .line 630
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 631
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getCurrentProfileGuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->isUserLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 630
    :goto_0
    return v0

    .line 631
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lockWiFi()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 1326
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->releaseWiFi()V

    .line 1327
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1328
    if-eqz v0, :cond_0

    .line 1329
    const-string/jumbo v1, "MdxAgent"

    const-string/jumbo v2, "WiFi lock acquiring..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    const/4 v1, 0x3

    const-string/jumbo v2, "MdxAgent"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 1332
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 1333
    const-string/jumbo v0, "MdxAgent"

    const-string/jumbo v1, "WiFi lock acquired."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1337
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_1

    .line 1338
    const/4 v1, 0x1

    const-string/jumbo v2, "MdxAgent"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1341
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1342
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1344
    :cond_2
    return-void
.end method

.method private notifyUserProfileActivation(Z)V
    .locals 2

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 576
    const-string/jumbo v0, "MdxAgent"

    const-string/jumbo v1, "notifyUserProfileActivation MdxAgent not ready, ignoring"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_0
    if-eqz p1, :cond_1

    .line 579
    const-string/jumbo v0, "MdxAgent"

    const-string/jumbo v1, "MdxAgent: user login"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :goto_0
    return-void

    .line 581
    :cond_1
    const-string/jumbo v0, "MdxAgent"

    const-string/jumbo v1, "MdxAgent: user logout"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->setCurrentTarget(Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    if-eqz v0, :cond_2

    .line 585
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->disconnect()V

    .line 587
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->clearVideoDetails()V

    .line 589
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->sessionGone(Z)V

    goto :goto_0
.end method

.method private onAccountDeactivate()V
    .locals 2

    .prologue
    .line 616
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxAgentWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/MdxAgent$5;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$5;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 626
    return-void
.end method

.method private registerStartStopReceiver()V
    .locals 3

    .prologue
    .line 1187
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_PLAYBACKEND"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1188
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_PLAYBACKSTART"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1189
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_POSTPLAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1190
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_SIMPLE_PLAYBACKSTATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1191
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1192
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1193
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.MDX"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1194
    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1196
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mStartStopErrorReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1197
    return-void
.end method

.method private registerUserAgentReceiver()V
    .locals 3

    .prologue
    .line 1394
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mUserAgentReceiver:Landroid/content/BroadcastReceiver;

    .line 1396
    invoke-static {}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents;->getNotificationIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    .line 1394
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1397
    return-void
.end method

.method private releaseWiFi()V
    .locals 2

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1348
    const-string/jumbo v0, "MdxAgent"

    const-string/jumbo v1, "WiFi lock was held, release..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 1350
    const-string/jumbo v0, "MdxAgent"

    const-string/jumbo v1, "WiFi lock released."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1353
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1355
    :cond_1
    return-void
.end method

.method private resetTargetSelection()V
    .locals 2

    .prologue
    .line 199
    const-string/jumbo v0, "MdxAgent"

    const-string/jumbo v1, "MdxAgent: resetTargetSelection"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetSelector:Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetSelector:Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->selectNewTarget(Ljava/lang/String;)V

    .line 204
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->clearVideoDetails()V

    .line 205
    return-void
.end method

.method private restartCastDiscovery()V
    .locals 4

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getMdxConfiguration()Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;->isEnableCast()Z

    move-result v0

    .line 504
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->stop()V

    .line 506
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->disconnect()V

    .line 507
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 516
    :cond_0
    return-void
.end method

.method private sendVolumeUpdateBroadcast(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 525
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDX_SETVOLUME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 526
    const-string/jumbo v1, "volume"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 527
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 528
    return-void
.end method

.method private sessionGone(Z)V
    .locals 4

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;

    if-eqz v0, :cond_0

    .line 1219
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->onSessionGone(Ljava/lang/String;)V

    .line 1221
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    const/16 v2, 0xc9

    const-string/jumbo v3, "stop connecting to target"

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->error(Ljava/lang/String;ILjava/lang/String;)V

    .line 1223
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->playbackEnd(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1224
    return-void
.end method

.method private startMdx()V
    .locals 2

    .prologue
    .line 595
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->isProfileActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 596
    const-string/jumbo v0, "MdxAgent"

    const-string/jumbo v1, "startMdx profile is not active"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :goto_0
    return-void

    .line 599
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->createCastManagerAndEnable()V

    .line 600
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxAgentWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/MdxAgent$4;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$4;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private unregisterStartStopReceiver()V
    .locals 4

    .prologue
    .line 1201
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mStartStopErrorReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1205
    :goto_0
    return-void

    .line 1202
    :catch_0
    move-exception v0

    .line 1203
    const-string/jumbo v1, "MdxAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregister mStartStopReceiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterUserAgentReceiver()V
    .locals 4

    .prologue
    .line 1401
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mUserAgentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1406
    :goto_0
    return-void

    .line 1403
    :catch_0
    move-exception v0

    .line 1404
    const-string/jumbo v1, "MdxAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterUserAgentReceiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateMdxNotification(ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 1237
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->ensureManagers()V

    .line 1238
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationMgrLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1239
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->setTitlesNotify(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1242
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    if-eqz v0, :cond_0

    .line 1243
    if-nez p3, :cond_1

    .line 1244
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    invoke-virtual {v0, p2, p4}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->updateMetadata(Ljava/lang/String;Z)V

    .line 1246
    :cond_0
    monitor-exit v1

    .line 1247
    return-void

    :cond_1
    move-object p2, p3

    .line 1243
    goto :goto_0

    .line 1246
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateMdxNotificationAndLockscreenWithNextSeries(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1000
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1002
    new-instance v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIdsPostplay:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    .line 1003
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIdsPostplay:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iput-boolean v3, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->isEpisode:Z

    .line 1004
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIdsPostplay:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1005
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1004
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iput v0, v1, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeId:I

    .line 1007
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->ensureManagers()V

    .line 1008
    invoke-direct {p0, v4, v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->fetchVideoDetail(ZZ)V

    .line 1011
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_3

    .line 1012
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetailsPostplay:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->start(ZLcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Ljava/lang/String;)V

    .line 1013
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    invoke-virtual {v0, v4, v4, v3}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->setState(ZZZ)V

    .line 1019
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    .line 1020
    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getMdxNotification(Z)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/app/Notification;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v2

    .line 1019
    invoke-interface {v1, v0, v2, v3}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->startNotification(Landroid/app/Notification;Lcom/netflix/mediaclient/service/NetflixService;Z)V

    .line 1021
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-interface {v0, v4, v4, v3}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->setUpNextStateNotify(ZZZ)V

    .line 1023
    :cond_1
    return-void

    .line 1004
    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    .line 1014
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    invoke-virtual {v0, v4, v3}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->updateState(ZZ)V

    goto :goto_1
.end method

.method private updateMdxRemoteClient(Z)V
    .locals 5

    .prologue
    const/16 v4, 0x15

    .line 659
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetailsPostplay:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    if-nez v0, :cond_1

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 663
    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    if-eqz v0, :cond_0

    .line 667
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetailsPostplay:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    .line 671
    :goto_1
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v2, :cond_6

    .line 675
    if-eqz p1, :cond_4

    .line 676
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09012f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 683
    :goto_2
    if-eqz p1, :cond_5

    instance-of v1, v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    if-eqz v1, :cond_5

    .line 684
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getNextEpisodeTitle()Ljava/lang/String;

    move-result-object v1

    .line 689
    :goto_3
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v3

    if-ge v3, v4, :cond_0

    .line 690
    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v3, p1, v0, v4}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->start(ZLcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Ljava/lang/String;)V

    .line 691
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    invoke-virtual {v0, v2, v1}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->setTitles(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 667
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    goto :goto_1

    .line 679
    :cond_4
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getParentTitle()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_2

    .line 686
    :cond_5
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getCurrentEpisodeTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 694
    :cond_6
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v1

    if-ge v1, v4, :cond_0

    .line 695
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->setTitles(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateUiAndMdxStackConnectivity(Z)V
    .locals 2

    .prologue
    .line 1601
    if-nez p1, :cond_0

    .line 1602
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->clearVideoDetails()V

    .line 1604
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    if-eqz v0, :cond_1

    .line 1606
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->onConnectivityChanged(Z)V

    .line 1607
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    if-eqz v0, :cond_1

    .line 1608
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->stopNotification(Lcom/netflix/mediaclient/service/NetflixService;)V

    .line 1611
    :cond_1
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 330
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxAgentWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxAgentWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :goto_0
    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxAgentWorkerThread:Landroid/os/HandlerThread;

    .line 338
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->unregisterUserAgentReceiver()V

    .line 339
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBifManager:Lcom/netflix/mediaclient/service/player/bif/IBifManager;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBifManager:Lcom/netflix/mediaclient/service/player/bif/IBifManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/bif/IBifManager;->release()V

    .line 341
    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBifManager:Lcom/netflix/mediaclient/service/player/bif/IBifManager;

    .line 344
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_4

    .line 345
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->stop()V

    .line 347
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->destroy()V

    .line 348
    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    .line 353
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;

    if-eqz v0, :cond_2

    .line 354
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->destroy()V

    .line 356
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    if-eqz v0, :cond_3

    .line 357
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->destroy()V

    .line 359
    :cond_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->unregisterStartStopReceiver()V

    .line 360
    invoke-super {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;->destroy()V

    .line 361
    return-void

    .line 333
    :catch_0
    move-exception v0

    .line 334
    const-string/jumbo v0, "MdxAgent"

    const-string/jumbo v1, "MdxAgent: mMdxAgentWorkerThread interrupted"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 350
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->destroy()V

    goto :goto_1
.end method

.method public disconnectFromCast()V
    .locals 1

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    if-eqz v0, :cond_0

    .line 1550
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->disconnect()V

    .line 1552
    :cond_0
    return-void
.end method

.method protected doInit()V
    .locals 6

    .prologue
    .line 249
    const-string/jumbo v0, "MdxAgent"

    const-string/jumbo v1, "MdxAgent: doInit"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getLogblobLogging()Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 251
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getLogblobLogging()Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;-><init>(Lcom/netflix/mediaclient/servicemgr/LogblobLogging;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxLogblobLogger:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;

    .line 256
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->registerUserAgentReceiver()V

    .line 257
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->registerStartStopReceiver()V

    .line 259
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    .line 260
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    .line 261
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getEsn()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxAgentWorkerThread:Landroid/os/HandlerThread;

    .line 262
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;-><init>(Lcom/netflix/mediaclient/service/mdx/NotifierInterface;Ljava/lang/String;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;

    .line 264
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/CommandHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/mdx/CommandHandler;-><init>(Lcom/netflix/mediaclient/service/mdx/CommandInterface;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCommandHandler:Lcom/netflix/mediaclient/service/mdx/CommandHandler;

    .line 265
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;

    invoke-direct {v0, v1, p0}, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;-><init>(Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;Lcom/netflix/mediaclient/service/mdx/SwitchTarget$SwitchTargetInterface;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mSwitchTarget:Lcom/netflix/mediaclient/service/mdx/SwitchTarget;

    .line 267
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getEsn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->setControlleruuid(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCommandHandler:Lcom/netflix/mediaclient/service/mdx/CommandHandler;

    if-nez v0, :cond_2

    .line 270
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->INTERNAL_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 308
    :goto_0
    return-void

    .line 253
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->NRD_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 273
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getNrdController()Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NrdController;->getNrdp()Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/TransactionId;->setTransactionIdSource(Lcom/netflix/mediaclient/javabridge/ui/Nrdp;)V

    .line 280
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getMdxConfiguration()Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;->isDisableWebsocket()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mDisableWebSocket:Z

    .line 281
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getMSLClient()Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    move-result-object v2

    iget-boolean v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mDisableWebSocket:Z

    .line 283
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/NetflixService;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getMdxConfiguration()Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    move-result-object v4

    invoke-interface {v4}, Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;->getMdxBlackListTargets()Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxLogblobLogger:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;

    .line 281
    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->addNetflixMdx(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IMSLClient;ZLorg/json/JSONArray;Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;)V

    .line 285
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->createCastManagerAndEnable()V

    .line 287
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxAgentWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/MdxAgent$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$2;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 295
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getResourceFetcher()Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxAgentWorkerHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$MdxImageLoaderInterface;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxBoxartLoader:Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;

    .line 297
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxAgentWorkerHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog$SessionWatchDogInterface;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxSessionWatchDog:Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;

    .line 298
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_3

    .line 299
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getMdxConfiguration()Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    .line 303
    :goto_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->startMdx()V

    .line 304
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->notready()V

    .line 305
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->handleConnectivityChange()V

    .line 306
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 307
    const-string/jumbo v0, "MdxAgent"

    const-string/jumbo v1, "MdxAgent: doInit done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 301
    :cond_3
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getMdxConfiguration()Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    goto :goto_1
.end method

.method public getBifFrame(I)Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBifManager:Lcom/netflix/mediaclient/service/player/bif/IBifManager;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBifManager:Lcom/netflix/mediaclient/service/player/bif/IBifManager;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/player/bif/IBifManager;->getIndexFrame(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 644
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentTargetCapabilities()Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->getTargetCapabilities(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public getNoActionIntent()Landroid/app/PendingIntent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1302
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getPauseIntent()Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 1261
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDX_PAUSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1262
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->createNotificationButtonIntent(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getPlayNextIntent()Landroid/app/PendingIntent;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1280
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    instance-of v0, v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    if-eqz v0, :cond_2

    .line 1281
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    .line 1282
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.netflix.mediaclient.intent.action.MDX_PLAY_VIDEOIDS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1284
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getNextEpisodeId()Ljava/lang/String;

    move-result-object v0

    .line 1285
    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getTopLevelId()Ljava/lang/String;

    move-result-object v3

    .line 1286
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object v0, v1

    .line 1296
    :goto_0
    return-object v0

    .line 1290
    :cond_1
    const-string/jumbo v1, "episodeId"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1291
    const-string/jumbo v0, "catalogId"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1293
    const-string/jumbo v0, "playNext"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1294
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->createNotificationButtonIntent(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 1296
    goto :goto_0
.end method

.method public getResumeIntent()Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 1267
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDX_RESUME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1268
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->createNotificationButtonIntent(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getSharedState()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState;
    .locals 2

    .prologue
    .line 1495
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1496
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->getSharedState(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/MdxSharedState;

    move-result-object v0

    .line 1498
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSkipbackIntent(I)Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 1254
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDX_SKIP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 1256
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->createNotificationButtonIntent(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getStopIntent()Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 1273
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDX_STOP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1274
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->createNotificationButtonIntent(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getTargetList()[Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->getTargetList()[Landroid/util/Pair;

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoDetail()Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;
    .locals 1

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    return-object v0
.end method

.method public getVideoIds()Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->getVideoIds(Ljava/lang/String;)Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    move-result-object v0

    return-object v0
.end method

.method public getVideoIdsPostplay()Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIdsPostplay:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    return-object v0
.end method

.method public handleCommand(Landroid/content/Intent;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v2, -0x1

    .line 365
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    .line 366
    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->isTargetHaveContext(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    .line 368
    invoke-virtual {v0, v3, v7}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->selectTarget(Ljava/lang/String;Z)Z

    .line 370
    :cond_0
    const-string/jumbo v0, "MdxAgent"

    const-string/jumbo v3, "handleCommand %s"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 371
    const-string/jumbo v0, "com.netflix.mediaclient.intent.category.MDX"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDX_PLAY_VIDEOIDS"

    .line 372
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 373
    const-string/jumbo v0, "uuid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 374
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 375
    :cond_1
    const-string/jumbo v1, "MdxAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MdxAgent: MDX_PLAY_VIDEOIDS is for uuid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "vs. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :goto_0
    return v7

    .line 380
    :cond_2
    const-string/jumbo v0, "catalogId"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 382
    const-string/jumbo v0, "episodeId"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 385
    const-string/jumbo v0, "trackId"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 387
    if-ne v0, v2, :cond_3

    .line 388
    const-string/jumbo v0, "MdxAgent"

    const-string/jumbo v5, "MdxAgent: MDX_PLAY_VIDEOIDS has invalid trackId"

    invoke-static {v0, v5}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const v0, 0xd2a38f

    .line 392
    :cond_3
    const-string/jumbo v5, "time"

    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 394
    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTrackId:I

    .line 395
    iput v5, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mStartTime:I

    .line 398
    if-ne v4, v2, :cond_12

    move v0, v1

    .line 402
    :goto_1
    const-string/jumbo v2, "previewPinProtected"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mPreviewPinVerified:Z

    .line 413
    const-string/jumbo v2, "playNext"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 414
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->stopAllNotifications()V

    .line 417
    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget-boolean v1, v1, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->isEpisode:Z

    if-ne v1, v0, :cond_5

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget v1, v1, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->catalogId:I

    if-ne v1, v3, :cond_5

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget v1, v1, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeId:I

    if-eq v1, v4, :cond_7

    .line 420
    :cond_5
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->commandPlayReceived(Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iput-boolean v0, v1, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->isEpisode:Z

    .line 423
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iput v3, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->catalogId:I

    .line 424
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iput v4, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeId:I

    .line 426
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBifManager:Lcom/netflix/mediaclient/service/player/bif/IBifManager;

    if-eqz v0, :cond_6

    .line 428
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBifManager:Lcom/netflix/mediaclient/service/player/bif/IBifManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/bif/IBifManager;->release()V

    .line 429
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBifManager:Lcom/netflix/mediaclient/service/player/bif/IBifManager;

    .line 432
    :cond_6
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDXUPDATE_POSTPLAY"

    .line 433
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 432
    invoke-direct {p0, v7, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->fetchVideoDetail(ZZ)V

    goto/16 :goto_0

    .line 435
    :cond_7
    const-string/jumbo v0, "MdxAgent"

    const-string/jumbo v1, "MdxAgent: videoIds are same, start play"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget-object v2, v2, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->catalogIdUrl:Ljava/lang/String;

    iget v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTrackId:I

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget-object v4, v4, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeIdUrl:Ljava/lang/String;

    iget v5, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mStartTime:I

    iget-boolean v6, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mPreviewPinVerified:Z

    invoke-virtual/range {v0 .. v6}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->playerPlay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 439
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->movieMetaDataAvailable(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 441
    :cond_8
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDX_SELECT_TARGET"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 442
    const-string/jumbo v0, "uuid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 443
    const-string/jumbo v1, "MdxAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MdxAgent: select target "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->setCurrentTarget(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 445
    :cond_9
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDX_CS_CAST_DISCOVERY_ISSUE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 446
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getTargetList()[Landroid/util/Pair;

    move-result-object v3

    .line 448
    if-eqz v3, :cond_a

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 449
    array-length v4, v3

    move v0, v1

    :goto_2
    if-ge v0, v4, :cond_a

    aget-object v5, v3, v0

    .line 450
    iget-object v6, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    move v1, v7

    .line 456
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "csPage targetListCount="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v3, :cond_c

    array-length v0, v3

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " mCurrentTargetUuid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " targetFound="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxLogblobLogger:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;->onCustomerSupportCastDiscoveryIssue(Ljava/lang/String;)V

    .line 458
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->restartCastDiscovery()V

    goto/16 :goto_0

    .line 449
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_c
    move v0, v2

    .line 456
    goto :goto_3

    .line 460
    :cond_d
    const-string/jumbo v0, "com.netflix.mediaclient.intent.category.MDXRCC"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 461
    const-string/jumbo v0, "MdxAgent"

    const-string/jumbo v1, "MdxAgent: get nf_mdx_RemoteControlClient intent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-string/jumbo v0, "uuid"

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDX_TOGGLE_PAUSE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 470
    const-string/jumbo v0, "MdxAgent"

    const-string/jumbo v1, "MdxAgent: get nf_mdx_RemoteControlClient intent toggle pause"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    if-eqz v0, :cond_e

    .line 473
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_e

    .line 474
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 475
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDX_RESUME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    :cond_e
    :goto_4
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDX_STOP"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 485
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->stopAllNotifications()V

    .line 486
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.CAST_PLAYER_POST_PLAY_TITLE_END"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 487
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 493
    :cond_f
    :goto_5
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCommandHandler:Lcom/netflix/mediaclient/service/mdx/CommandHandler;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/CommandHandler;->handleCommandIntent(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 477
    :cond_10
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDX_PAUSE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 489
    :cond_11
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDX_SETVOLUME"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 490
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "volume"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->sendVolumeUpdateBroadcast(Landroid/content/Context;I)V

    goto :goto_5

    :cond_12
    move v0, v7

    goto/16 :goto_1
.end method

.method public handleConnectivityChange()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 1555
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 1556
    invoke-static {v5}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1558
    const-string/jumbo v0, "mobile"

    .line 1559
    invoke-static {v5}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getLocalIP4Address(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 1560
    const-string/jumbo v1, "unknown"

    .line 1561
    if-eqz v2, :cond_6

    .line 1562
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    .line 1563
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    .line 1564
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-ne v7, v9, :cond_1

    .line 1565
    const-string/jumbo v2, "WIFI"

    .line 1566
    const-string/jumbo v0, "wifi"

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1567
    if-eqz v0, :cond_5

    .line 1568
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1569
    if-eqz v0, :cond_5

    .line 1570
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v1, v0

    move-object v0, v2

    .line 1576
    :cond_0
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v2, v3

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    .line 1578
    :goto_2
    invoke-static {v6}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->setControllerIpa(Ljava/lang/String;)V

    .line 1580
    const-string/jumbo v3, "MdxAgent"

    const-string/jumbo v5, "handleConnectivityChange mCurrentTargetUuid=%s %s %b %s %s"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    aput-object v8, v7, v4

    aput-object v1, v7, v9

    const/4 v8, 0x2

    .line 1581
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object v6, v7, v8

    const/4 v8, 0x4

    aput-object v0, v7, v8

    .line 1580
    invoke-static {v3, v5, v7}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1582
    new-instance v3, Lcom/netflix/mediaclient/service/mdx/MdxNetworkState;

    invoke-direct {v3, v1, v0, v6, v2}, Lcom/netflix/mediaclient/service/mdx/MdxNetworkState;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1583
    iget-object v5, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNetworkState:Lcom/netflix/mediaclient/service/mdx/MdxNetworkState;

    invoke-virtual {v3, v5}, Lcom/netflix/mediaclient/service/mdx/MdxNetworkState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1584
    const-string/jumbo v0, "MdxAgent"

    const-string/jumbo v1, "handleConnectivityChange event, same network state. ignored"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    :goto_3
    return-void

    .line 1573
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/16 v5, 0x9

    if-ne v2, v5, :cond_0

    .line 1574
    const-string/jumbo v0, "ETHERNET"

    goto :goto_1

    .line 1586
    :cond_2
    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/mdx/MdxNetworkState;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNetworkState:Lcom/netflix/mediaclient/service/mdx/MdxNetworkState;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNetworkState:Lcom/netflix/mediaclient/service/mdx/MdxNetworkState;

    .line 1587
    invoke-virtual {v5}, Lcom/netflix/mediaclient/service/mdx/MdxNetworkState;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1591
    const-string/jumbo v5, "MdxAgent"

    const-string/jumbo v7, "handleConnectivityChange, network changed."

    invoke-static {v5, v7}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    invoke-direct {p0, v4}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->updateUiAndMdxStackConnectivity(Z)V

    .line 1594
    :cond_3
    iput-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNetworkState:Lcom/netflix/mediaclient/service/mdx/MdxNetworkState;

    .line 1595
    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;

    if-eqz v3, :cond_4

    .line 1596
    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;

    invoke-virtual {v3, v1, v2, v6, v0}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->setMdxNetworkInterface(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1598
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNetworkState:Lcom/netflix/mediaclient/service/mdx/MdxNetworkState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxNetworkState;->isConnected()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->updateUiAndMdxStackConnectivity(Z)V

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto/16 :goto_0

    :cond_6
    move v2, v4

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_2
.end method

.method public hasActiveSession()Z
    .locals 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->hasActiveSession(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    if-eqz v0, :cond_0

    .line 157
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->isPaused()Z

    move-result v0

    .line 161
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTargetLaunchingOrLaunched()Z
    .locals 2

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;

    if-eqz v0, :cond_0

    .line 1531
    const-string/jumbo v0, "MdxAgent"

    const-string/jumbo v1, "checking isTargetLaunchingOrLaunched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->isTargetLaunchingOrLaunched(Ljava/lang/String;)Z

    move-result v0

    .line 1534
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBitmapReady(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 1463
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBoxartBitmap:Landroid/graphics/Bitmap;

    .line 1464
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_2

    .line 1465
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    if-eqz v0, :cond_0

    .line 1466
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBoxartBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->setBoxart(Landroid/graphics/Bitmap;)V

    .line 1472
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    if-eqz v0, :cond_1

    .line 1473
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBoxartBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->setBoxartNotify(Landroid/graphics/Bitmap;)V

    .line 1475
    :cond_1
    return-void

    .line 1468
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    if-eqz v0, :cond_0

    .line 1469
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBoxartBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->updateMetadata(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onGetTimeOfMostRecentIncomingMessage()J
    .locals 2

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;

    if-eqz v0, :cond_0

    .line 1480
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->getTimeOfMostRecentIncomingMessage(Ljava/lang/String;)J

    move-result-wide v0

    .line 1482
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public onSessionWatchDogExpired()V
    .locals 4

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    if-eqz v0, :cond_0

    .line 1489
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->playbackEnd(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1491
    :cond_0
    return-void
.end method

.method public onSetToNewTarget(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1458
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->setCurrentTarget(Ljava/lang/String;)V

    .line 1459
    return-void
.end method

.method public onStickinessExpired()V
    .locals 1

    .prologue
    .line 1418
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->setCurrentTarget(Ljava/lang/String;)V

    .line 1419
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    if-eqz v0, :cond_0

    .line 1420
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mNotifier:Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->targetList()V

    .line 1422
    :cond_0
    return-void
.end method

.method public onTargetSelectorLoaded(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1426
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/MdxAgent$8;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$8;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1432
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;

    if-eqz v0, :cond_0

    .line 1433
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->selectTarget(Ljava/lang/String;Z)Z

    .line 1435
    :cond_0
    return-void
.end method

.method public prefetchVideo(Ljava/util/List;)V
    .locals 4
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
    .line 1504
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getCastPrefetchSharedSecret()Landroid/util/Pair;

    move-result-object v1

    .line 1505
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    if-nez v0, :cond_1

    .line 1506
    const-string/jumbo v0, "MdxAgent"

    const-string/jumbo v1, "castManager is null "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    :cond_0
    :goto_0
    return-void

    .line 1510
    :cond_1
    if-nez v1, :cond_2

    .line 1511
    const-string/jumbo v0, "MdxAgent"

    const-string/jumbo v1, "prefetchVideo shared secret is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1514
    :cond_2
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1515
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [B

    .line 1516
    new-instance v2, Lcom/netflix/mediaclient/service/mdx/CastPrefetchMessage;

    .line 1517
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getEsn()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3, v0, v1}, Lcom/netflix/mediaclient/service/mdx/CastPrefetchMessage;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 1519
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/CastPrefetchMessage;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1520
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1524
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->prefetchVideo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCurrentTarget(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 177
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 178
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    .line 179
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    .line 180
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->clearVideoDetails()V

    .line 183
    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxAgentWorkerHandler:Landroid/os/Handler;

    new-instance v3, Lcom/netflix/mediaclient/service/mdx/MdxAgent$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$1;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent;ZLjava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 196
    return-void

    .line 177
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDialUuidAsCurrentTarget(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 214
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    :goto_0
    return v0

    .line 218
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->setCurrentTarget(Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopAllNotifications()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 734
    const-string/jumbo v0, "MdxAgent"

    const-string/jumbo v1, "Stop all notifications"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->ensureManagers()V

    .line 737
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_2

    .line 738
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mRemoteControlClientManager:Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->stop()V

    .line 745
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->stopNotification(Lcom/netflix/mediaclient/service/NetflixService;)V

    .line 746
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->cancelNotification()V

    .line 747
    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    .line 748
    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mBoxartBitmap:Landroid/graphics/Bitmap;

    .line 751
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getSharedState()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState;

    move-result-object v0

    .line 752
    instance-of v1, v0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;

    if-eqz v1, :cond_1

    .line 753
    check-cast v0, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->resetPostplayState()V

    .line 755
    :cond_1
    return-void

    .line 739
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->stopMediaSession()V

    goto :goto_0
.end method

.method public stopPostplayNotification()V
    .locals 2

    .prologue
    .line 759
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->ensureManagers()V

    .line 760
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mMdxNotificationManager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->stopPostplayNotification(Lcom/netflix/mediaclient/service/NetflixService;)V

    .line 761
    return-void
.end method

.method public switchPlaybackFromTarget(Ljava/lang/String;I)V
    .locals 7

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mSwitchTarget:Lcom/netflix/mediaclient/service/mdx/SwitchTarget;

    if-eqz v0, :cond_0

    .line 1451
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mSwitchTarget:Lcom/netflix/mediaclient/service/mdx/SwitchTarget;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mCurrentTargetUuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mVideoIds:Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    iget v5, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTrackId:I

    iget-boolean v6, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mPreviewPinVerified:Z

    move-object v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->startSwitch(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;IIZ)V

    .line 1454
    :cond_0
    return-void
.end method

.method public transferPlaybackFromLocal()V
    .locals 2

    .prologue
    .line 1544
    const-string/jumbo v0, "MdxAgent"

    const-string/jumbo v1, "transfer playback from local to target"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    return-void
.end method

.method public uiComingToForeground()V
    .locals 2

    .prologue
    .line 568
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->isProfileActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;

    if-eqz v0, :cond_0

    .line 569
    const-string/jumbo v0, "MdxAgent"

    const-string/jumbo v1, "MdxAgent: UI coming to foreground, try restart discovery"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->mTargetManager:Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->restartDiscovery()V

    .line 572
    :cond_0
    return-void
.end method
