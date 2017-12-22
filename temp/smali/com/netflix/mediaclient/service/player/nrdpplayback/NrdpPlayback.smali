.class public Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;
.super Ljava/lang/Object;
.source "NrdpPlayback.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$ConfigAgentListener;
.implements Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;
.implements Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;
.implements Lcom/netflix/mediaclient/servicemgr/IPlayer;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mASPlayer:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;

.field private mBladeRunnerClient:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

.field private mCallbackThread:Landroid/os/HandlerThread;

.field private mClSessionIds:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClientLogging:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

.field private mConfigAgentInterface:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

.field private mContext:Landroid/content/Context;

.field private mDrmManager:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

.field private mForcedMaxBitrate:I

.field private mForcedMaxBuffer:I

.field private mForcedMinBitrate:I

.field private mMainHandler:Landroid/os/Handler;

.field private mNfManifestCache:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

.field private mPlayParamsRecvr:Lcom/netflix/mediaclient/service/player/nrdpplayback/PlayParamsReceiver;

.field private mPlaybackSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayerFileManager:Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;

.field private mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

.field private mPlayerSuspendNotification:Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;

.field private mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

.field private mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

.field private final mUserAgentReceiver:Landroid/content/BroadcastReceiver;

.field private mWorkHandler:Landroid/os/Handler;

.field private final playerChangesReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;Lcom/netflix/mediaclient/servicemgr/IClientLogging;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Landroid/util/Pair;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Landroid/content/Context;",
            "Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;",
            "Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;",
            "Lcom/netflix/mediaclient/servicemgr/IClientLogging;",
            "Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;",
            "Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mPlaybackSessions:Ljava/util/List;

    .line 84
    iput v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mForcedMinBitrate:I

    .line 85
    iput v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mForcedMaxBitrate:I

    iput v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mForcedMaxBuffer:I

    .line 473
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback$1;-><init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->playerChangesReceiver:Landroid/content/BroadcastReceiver;

    .line 529
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback$2;-><init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mUserAgentReceiver:Landroid/content/BroadcastReceiver;

    .line 99
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "NrdpPlaybackWorkerThread"

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mCallbackThread:Landroid/os/HandlerThread;

    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 102
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mWorkHandler:Landroid/os/Handler;

    .line 103
    iput-object p4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mBladeRunnerClient:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

    .line 104
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mMainHandler:Landroid/os/Handler;

    .line 105
    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mContext:Landroid/content/Context;

    .line 106
    iput-object p5, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mClientLogging:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    .line 107
    iput-object p6, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    .line 108
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mConfigAgentInterface:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    .line 109
    iput-object p8, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mClSessionIds:Landroid/util/Pair;

    .line 110
    iput-object p7, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    .line 112
    new-instance v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mBladeRunnerClient:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mConfigAgentInterface:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isDeviceLowMem()Z

    move-result v3

    invoke-direct {v0, p2, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mNfManifestCache:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    .line 113
    new-instance v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mNfManifestCache:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mBladeRunnerClient:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mConfigAgentInterface:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v4}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isDisableLicensePrefetch()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;-><init>(Landroid/os/Looper;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mDrmManager:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    .line 114
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/PlayerFileManager;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/PlayerFileManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mPlayerFileManager:Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;

    .line 116
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;)Ljava/util/List;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mPlaybackSessions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;)Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mNfManifestCache:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;)Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mDrmManager:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;)Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mPlayerSuspendNotification:Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;

    return-object v0
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;)Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mPlayerSuspendNotification:Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;

    return-object p1
.end method

.method private getAndRemovecurrentPlaybackSession()Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;
    .locals 2

    .prologue
    .line 650
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mPlaybackSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 651
    if-lez v0, :cond_0

    .line 652
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mPlaybackSessions:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    .line 654
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mClientLogging:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    return-object v0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getCurrentPlaybackSession()Lcom/netflix/mediaclient/service/player/IPlaybackSession;
    .locals 2

    .prologue
    .line 642
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mPlaybackSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 643
    if-lez v0, :cond_0

    .line 644
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mPlaybackSessions:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    .line 646
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private varargs handlePlayerListener(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 612
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    monitor-enter v1

    .line 613
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;

    .line 614
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;->isListening()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 615
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback$3;

    invoke-direct {v4, p0, p1, v0, p2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback$3;-><init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;[Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 624
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 625
    return-void
.end method

.method private registerReceivers()V
    .locals 0

    .prologue
    .line 524
    return-void
.end method

.method private registerUserAgentReceiver()V
    .locals 3

    .prologue
    .line 560
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mUserAgentReceiver:Landroid/content/BroadcastReceiver;

    .line 562
    invoke-static {}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents;->getNotificationIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    .line 560
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 563
    return-void
.end method

.method private setVideoBitrateRange(II)V
    .locals 6

    .prologue
    .line 430
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->getCurrentPlaybackSession()Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    .line 431
    if-eqz v0, :cond_0

    .line 432
    const-string/jumbo v1, "nf_bw_saving"

    const-string/jumbo v2, "setVideoBitrateRange min: %d max: %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 433
    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->setVideoBitrateRange(II)V

    .line 439
    :cond_0
    return-void
.end method

.method private unRegisterReceivers()V
    .locals 0

    .prologue
    .line 558
    return-void
.end method

.method private unregisterUserAgentReceiver()V
    .locals 4

    .prologue
    .line 567
    :try_start_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mUserAgentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    :goto_0
    return-void

    .line 568
    :catch_0
    move-exception v0

    .line 569
    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unregisterUserAgenReceiver"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private useOverwrittenBitrate()Z
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mForcedMaxBitrate:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mForcedMinBitrate:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private useOverwrittenBuffer()Z
    .locals 1

    .prologue
    .line 454
    iget v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mForcedMaxBuffer:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addPlayerListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;)V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->addPlayerListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;)V

    .line 364
    return-void
.end method

.method public adjustBitrateAndBufferForPlayback()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 724
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->useOverwrittenBitrate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mForcedMaxBitrate:I

    .line 725
    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->setVideoBitrateRange(II)V

    .line 727
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->useOverwrittenBuffer()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mForcedMaxBuffer:I

    .line 729
    :goto_1
    invoke-virtual {p0, v2, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->setStreamingBuffer(II)V

    .line 730
    return-void

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mConfigAgentInterface:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getBWSaveConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->calculateCurrentMaxAllowedBitrate(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;)I

    move-result v0

    goto :goto_0

    .line 727
    :cond_1
    const/16 v1, 0x4e20

    if-ge v0, v1, :cond_2

    const v0, 0x249f0

    goto :goto_1

    :cond_2
    const v0, 0x493e0

    goto :goto_1
.end method

.method public close()V
    .locals 4

    .prologue
    .line 179
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mPlayerSuspendNotification:Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mPlayerSuspendNotification:Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->cancelNotification()V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mPlayerSuspendNotification:Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;

    .line 183
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->getAndRemovecurrentPlaybackSession()Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_1

    .line 185
    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Closing playback"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/IPlaybackSession;->close()V

    .line 188
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mDrmManager:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/IPlaybackSession;->getCurrentPlayableId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->clear(Ljava/lang/Long;)V

    .line 194
    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 458
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->unregisterUserAgentReceiver()V

    .line 459
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->unRegisterReceivers()V

    .line 460
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mDrmManager:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->release()V

    .line 461
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mNfManifestCache:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->release()V

    .line 462
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 463
    return-void
.end method

.method public excuteOnPlayExecutor(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 630
    return-void
.end method

.method public getAudioSubtitleDefaultOrderInfo()[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;
    .locals 1

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->getCurrentPlaybackSession()Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    move-result-object v0

    .line 319
    if-eqz v0, :cond_0

    .line 320
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/IPlaybackSession;->getAudioSubtitleDefaultOrderInfo()[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    move-result-object v0

    .line 322
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    goto :goto_0
.end method

.method public getAudioTrackList()[Lcom/netflix/mediaclient/media/AudioSource;
    .locals 1

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->getCurrentPlaybackSession()Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    move-result-object v0

    .line 301
    if-eqz v0, :cond_0

    .line 302
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/IPlaybackSession;->getAudioTrackList()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    .line 304
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/netflix/mediaclient/media/AudioSource;

    goto :goto_0
.end method

.method public getBifFrame(J)Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->getCurrentPlaybackSession()Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_0

    .line 284
    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/service/player/IPlaybackSession;->getBifFrame(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 286
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentAudioTrack()Lcom/netflix/mediaclient/media/AudioSource;
    .locals 1

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->getCurrentPlaybackSession()Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_0

    .line 356
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/IPlaybackSession;->getCurrentAudioTrack()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    .line 358
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPlayableId()J
    .locals 2

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->getCurrentPlaybackSession()Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    move-result-object v0

    .line 407
    if-eqz v0, :cond_0

    .line 408
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/IPlaybackSession;->getCurrentPlayableId()J

    move-result-wide v0

    .line 410
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPositionInMs()J
    .locals 2

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->getCurrentPlaybackSession()Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    move-result-object v0

    .line 274
    if-eqz v0, :cond_0

    .line 275
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/IPlaybackSession;->getCurrentPosition()J

    move-result-wide v0

    .line 277
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentSubtitleTrack()Lcom/netflix/mediaclient/media/Subtitle;
    .locals 1

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->getCurrentPlaybackSession()Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    .line 345
    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->getSubtitleAudioTrackManager()Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->getCurrentSubtitleTrack()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    .line 348
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getPlayerFileCache()Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mPlayerFileManager:Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;

    return-object v0
.end method

.method public getPlayerManifestData()Lcom/netflix/mediaclient/media/PlayerManifestData;
    .locals 1

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->getCurrentPlaybackSession()Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    move-result-object v0

    .line 259
    if-eqz v0, :cond_0

    .line 260
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/IPlaybackSession;->getManifestData()Lcom/netflix/mediaclient/media/PlayerManifestData;

    move-result-object v0

    .line 262
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlayoutMetadata()Lcom/netflix/mediaclient/media/PlayoutMetadata;
    .locals 1

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->getCurrentPlaybackSession()Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    move-result-object v0

    .line 292
    if-eqz v0, :cond_0

    .line 293
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/IPlaybackSession;->getPlayoutMetadata()Lcom/netflix/mediaclient/media/PlayoutMetadata;

    move-result-object v0

    .line 295
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResourceFetcher()Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    return-object v0
.end method

.method public getSubtitleConfiguration()Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;
    .locals 1

    .prologue
    .line 374
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->getCurrentPlaybackSession()Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    .line 375
    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->getSubtitleAudioTrackManager()Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->getSubtitleConfiguration()Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    move-result-object v0

    .line 378
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubtitleProfileFromMetadata()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;
    .locals 1

    .prologue
    .line 385
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->getCurrentPlaybackSession()Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    .line 386
    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->getSubtitleAudioTrackManager()Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->getSubtitleProfileFromMetadata()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    move-result-object v0

    .line 389
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubtitleTrackList()[Lcom/netflix/mediaclient/media/Subtitle;
    .locals 1

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->getCurrentPlaybackSession()Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_0

    .line 311
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/IPlaybackSession;->getSubtitleTrackList()[Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    .line 313
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/netflix/mediaclient/media/Subtitle;

    goto :goto_0
.end method

.method public handleBuffering(Z)V
    .locals 2

    .prologue
    .line 720
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getPlayerListenerOnStalledHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnStalledHandler;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->handlePlayerListener(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V

    .line 721
    return-void
.end method

.method public handleConnectivityChange()V
    .locals 1

    .prologue
    .line 574
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->getCurrentPlaybackSession()Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    move-result-object v0

    .line 575
    if-eqz v0, :cond_0

    .line 576
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/IPlaybackSession;->handleConnectivityChanged()V

    .line 578
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->shouldChangeBitrateOnConnectivityChange(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->adjustBitrateAndBufferForPlayback()V

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mNfManifestCache:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->onNetworkConnectivityChanged()V

    .line 584
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mDrmManager:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->clearAll()V

    .line 585
    return-void
.end method

.method public handleError(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackError;)V
    .locals 3

    .prologue
    .line 715
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getPlayerListenerOnPlaybackErrorHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnPlaybackErrorHandler;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->handlePlayerListener(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V

    .line 716
    return-void
.end method

.method public handlePrepared()V
    .locals 7

    .prologue
    .line 660
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->getCurrentPlaybackSession()Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    .line 661
    const/4 v1, 0x0

    .line 662
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->getPlayerManifestData()Lcom/netflix/mediaclient/media/PlayerManifestData;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 663
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->getPlayerManifestData()Lcom/netflix/mediaclient/media/PlayerManifestData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/PlayerManifestData;->getPlaybackDisplaySpec()Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;

    move-result-object v1

    iget-object v1, v1, Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;->aspectRatioDimension:Landroid/graphics/Point;

    .line 664
    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    div-float v6, v2, v1

    .line 665
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->getSubtitleAudioTrackManager()Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->getSubtitleTracks()Ljava/util/List;

    move-result-object v2

    .line 666
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->getDefaultSubtitleTrackId()Ljava/lang/String;

    move-result-object v3

    .line 667
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->getBookmark()J

    move-result-wide v4

    .line 665
    invoke-virtual/range {v1 .. v6}, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->initSubtitle(Ljava/util/List;Ljava/lang/String;JF)V

    .line 668
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->getWatermark()Lcom/netflix/mediaclient/media/Watermark;

    move-result-object v0

    .line 673
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->adjustBitrateAndBufferForPlayback()V

    .line 675
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getPlayerListenerPrepareHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerPrepareHandler;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->handlePlayerListener(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V

    .line 676
    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public handleStarted()V
    .locals 2

    .prologue
    .line 679
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback$4;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback$4;-><init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 689
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getPlayerListenerOnStartedHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnStartedHandler;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->handlePlayerListener(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V

    .line 690
    return-void
.end method

.method public handleStopped()V
    .locals 2

    .prologue
    .line 694
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getPlayerListenerOnCompletionHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnCompletionHandler;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->handlePlayerListener(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V

    .line 695
    return-void
.end method

.method public handleSubtitleUpdate(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;)V
    .locals 3

    .prologue
    .line 710
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getPlayerListenerOnSubtitleChangeHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSubtitleChangeHandler;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->handlePlayerListener(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V

    .line 711
    return-void
.end method

.method public handleUpdatePts(I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 700
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->getCurrentPlaybackSession()Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    .line 702
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getPlayerListenerOnUpdatePtsHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnUpdatePtsHandler;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->handlePlayerListener(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V

    .line 703
    if-eqz v0, :cond_0

    .line 704
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getPlayerListenerOnSubtitleChangeHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSubtitleChangeHandler;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->getSubtitleAudioTrackManager()Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->getSubtitle(I)Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->handlePlayerListener(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V

    .line 706
    :cond_0
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->getCurrentPlaybackSession()Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/IPlaybackSession;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackgroudTrimMem()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mNfManifestCache:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->onBackgroundTrimMem()V

    .line 138
    return-void
.end method

.method public declared-synchronized onConfigRefreshed(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 156
    :cond_0
    monitor-exit p0

    return-void

    .line 153
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mPlaybackSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    .line 154
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->getSubtitleAudioTrackManager()Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->updateSubtitleSettings(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onUiHidden()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mDrmManager:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->onUiHidden()V

    .line 135
    return-void
.end method

.method public openPlaybackSessionAndPlay(JLcom/netflix/mediaclient/ui/common/PlayContext;J)Ljava/lang/String;
    .locals 20

    .prologue
    .line 164
    new-instance v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mASPlayer:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mNfManifestCache:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mDrmManager:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mClientLogging:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    .line 165
    invoke-interface {v6}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getPdsEventHandler()Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsEventReporter;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mConfigAgentInterface:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mClientLogging:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    .line 169
    invoke-interface {v10}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getLogblobLogging()Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    move-result-object v10

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->getMainHandler()Landroid/os/Handler;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v12}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mClSessionIds:Landroid/util/Pair;

    move-object/from16 v18, v0

    move-wide/from16 v13, p1

    move-object/from16 v15, p3

    move-wide/from16 v16, p4

    move-object/from16 v19, p0

    invoke-direct/range {v1 .. v19}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface;Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerPlaybackInterface;Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsEventReporter;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;Lcom/netflix/mediaclient/servicemgr/LogblobLogging;Landroid/os/Handler;Landroid/os/Looper;JLcom/netflix/mediaclient/ui/common/PlayContext;JLandroid/util/Pair;Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mPlaybackSessions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->getSessionId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public overrideBitrate(II)V
    .locals 0

    .prologue
    .line 442
    iput p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mForcedMinBitrate:I

    .line 443
    iput p2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mForcedMaxBitrate:I

    .line 444
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->adjustBitrateAndBufferForPlayback()V

    .line 445
    return-void
.end method

.method public overrideBuffer(I)V
    .locals 0

    .prologue
    .line 448
    iput p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mForcedMaxBuffer:I

    .line 449
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->getCurrentPlaybackSession()Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_0

    .line 200
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/IPlaybackSession;->pause()V

    .line 206
    :cond_0
    return-void
.end method

.method public prepare(Ljava/util/List;)V
    .locals 1
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
    .line 395
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mNfManifestCache:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->prepare(Ljava/util/List;)V

    .line 396
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mDrmManager:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->prepare(Ljava/util/List;)V

    .line 397
    return-void
.end method

.method public removePlayerListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;)V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->removePlayerListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;)V

    .line 369
    return-void
.end method

.method public reportFailedSubtitle(Ljava/lang/String;Lcom/netflix/mediaclient/media/SubtitleUrl;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;ZLcom/netflix/mediaclient/android/app/Status;[Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 606
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getErrorLogging()Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    move-result-object v0

    const-string/jumbo v1, "Failed to download subtitle metadata"

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/ErrorLogging;->logHandledException(Ljava/lang/String;)V

    .line 607
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getLogblobLogging()Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    move-result-object v9

    new-instance v0, Lcom/netflix/mediaclient/service/player/logblob/SubtitleError;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->getCurrentSubtitleTrack()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v5

    const/4 v8, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/netflix/mediaclient/service/player/logblob/SubtitleError;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/media/SubtitleUrl;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;ZLcom/netflix/mediaclient/media/Subtitle;Lcom/netflix/mediaclient/android/app/Status;[Ljava/lang/String;Z)V

    invoke-interface {v9, v0}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    .line 608
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getPlayerListenerOnSubtitleFailedHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSubtitleFailedHandler;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->handlePlayerListener(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V

    .line 609
    return-void
.end method

.method public reportHandledException(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 588
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getErrorLogging()Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ErrorLogging;->logHandledException(Ljava/lang/Throwable;)V

    .line 589
    return-void
.end method

.method public reportSubtitleChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 423
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->getCurrentPlaybackSession()Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    .line 424
    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->subtitleChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :cond_0
    return-void
.end method

.method public reportSubtitleVisibilityChanged(Z)V
    .locals 1

    .prologue
    .line 415
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->getCurrentPlaybackSession()Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    .line 416
    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->subtitleVisibilityChanged(Z)V

    .line 419
    :cond_0
    return-void
.end method

.method public seekTo(JZ)V
    .locals 1

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->getCurrentPlaybackSession()Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    .line 223
    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->seekTo(JZ)V

    .line 230
    :cond_0
    return-void
.end method

.method public seekWithFuzzRange(II)V
    .locals 1

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->getCurrentPlaybackSession()Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    .line 235
    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->seekWithFuzzRange(II)V

    .line 242
    :cond_0
    return-void
.end method

.method public selectTracks(Lcom/netflix/mediaclient/media/AudioSource;Lcom/netflix/mediaclient/media/Subtitle;Z)Z
    .locals 7

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->getCurrentPlaybackSession()Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    .line 329
    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->getSubtitleAudioTrackManager()Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->getCurrentPosition()J

    move-result-wide v4

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->selectAudioSubtitleTrack(Lcom/netflix/mediaclient/media/AudioSource;Lcom/netflix/mediaclient/media/Subtitle;JZ)Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v1

    .line 333
    if-eqz p1, :cond_0

    .line 334
    invoke-virtual {v0, p1, v1, p3}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->selectTracks(Lcom/netflix/mediaclient/media/AudioSource;Lcom/netflix/mediaclient/media/Subtitle;Z)Z

    .line 335
    const/4 v0, 0x1

    .line 338
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAudioDuck(Z)V
    .locals 1

    .prologue
    .line 635
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->getCurrentPlaybackSession()Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    move-result-object v0

    .line 636
    if-eqz v0, :cond_0

    .line 637
    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/player/IPlaybackSession;->setAudioDuck(Z)V

    .line 639
    :cond_0
    return-void
.end method

.method public setNrdpPlayer(Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mASPlayer:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;

    .line 466
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->registerReceivers()V

    .line 467
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->registerUserAgentReceiver()V

    .line 468
    return-void
.end method

.method public setStreamingBuffer(II)V
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mASPlayer:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2, p1}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;->setStreamingBuffer(ZII)V

    .line 593
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->getCurrentPlaybackSession()Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_0

    .line 248
    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/player/IPlaybackSession;->setSurface(Landroid/view/Surface;)V

    .line 254
    :cond_0
    return-void
.end method

.method public showSuspendNotificationIfAny(Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;)V
    .locals 2

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->getCurrentPlaybackSession()Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_0

    .line 142
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/IPlaybackSession;->getCurrentPlayableId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->showNotification(Ljava/lang/String;)V

    .line 143
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->mPlayerSuspendNotification:Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;

    .line 145
    :cond_0
    return-void
.end method

.method public unpause()V
    .locals 1

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->getCurrentPlaybackSession()Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_0

    .line 212
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/IPlaybackSession;->play()V

    .line 218
    :cond_0
    return-void
.end method
