.class public Lcom/netflix/mediaclient/service/player/PlayerAgent;
.super Lcom/netflix/mediaclient/service/ServiceAgent;
.source "PlayerAgent.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mExoPlayback:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;

.field private mNrdpPlayerback:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;

.field private mPlayerSuspendNotification:Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;->destroy()V

    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mNrdpPlayerback:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mNrdpPlayerback:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->destroy()V

    .line 90
    :cond_0
    return-void
.end method

.method protected doInit()V
    .locals 12

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getNrdController()Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NrdController;->getNrdp()Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    move-result-object v9

    .line 56
    if-nez v9, :cond_0

    .line 57
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->NRD_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 58
    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "NRDP is NOT READY"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_0
    return-void

    .line 61
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v2

    .line 62
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getBrowseAgent()Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;

    move-result-object v3

    .line 63
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/NetflixService;->getImageLoader()Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;Lcom/netflix/mediaclient/util/gfx/ImageLoader;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerSuspendNotification:Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;

    .line 65
    new-instance v4, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;-><init>(Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V

    .line 67
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v3

    .line 68
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v5

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getResourceFetcher()Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    move-result-object v6

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v7

    new-instance v8, Landroid/util/Pair;

    .line 69
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getNrdController()Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/netflix/mediaclient/service/NrdController;->getNrdp()Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    move-result-object v10

    invoke-interface {v10}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->getLog()Lcom/netflix/mediaclient/javabridge/ui/Log;

    move-result-object v10

    invoke-interface {v10}, Lcom/netflix/mediaclient/javabridge/ui/Log;->getAppId()Ljava/lang/String;

    move-result-object v10

    .line 70
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getNrdController()Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v11

    invoke-virtual {v11}, Lcom/netflix/mediaclient/service/NrdController;->getNrdp()Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    move-result-object v11

    invoke-interface {v11}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->getLog()Lcom/netflix/mediaclient/javabridge/ui/Log;

    move-result-object v11

    invoke-interface {v11}, Lcom/netflix/mediaclient/javabridge/ui/Log;->getSessionId()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct/range {v0 .. v8}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;Lcom/netflix/mediaclient/servicemgr/IClientLogging;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Landroid/util/Pair;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mNrdpPlayerback:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;

    .line 73
    invoke-interface {v9}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->getASPlayer()Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mNrdpPlayerback:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->setNrdpPlayer(Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;)V

    .line 76
    new-instance v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v3

    .line 77
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getOfflineAgentPlaybackInterface()Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;

    move-result-object v4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v5

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;Lcom/netflix/mediaclient/servicemgr/IClientLogging;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mExoPlayback:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;

    .line 78
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    goto/16 :goto_0
.end method

.method public getNrdpPlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mNrdpPlayerback:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;

    return-object v0
.end method

.method public getOfflinePlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mExoPlayback:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;

    return-object v0
.end method

.method public handleConnectivityChange()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mNrdpPlayerback:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mNrdpPlayerback:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->handleConnectivityChange()V

    .line 96
    :cond_0
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2

    .prologue
    .line 37
    const/16 v0, 0x14

    if-ne p1, v0, :cond_2

    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mNrdpPlayerback:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mNrdpPlayerback:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->onUiHidden()V

    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mNrdpPlayerback:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerSuspendNotification:Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->showSuspendNotificationIfAny(Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;)V

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mExoPlayback:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mExoPlayback:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mPlayerSuspendNotification:Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->showSuspendNotificationIfAny(Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;)V

    .line 52
    :cond_1
    :goto_0
    return-void

    .line 46
    :cond_2
    const/16 v0, 0x28

    if-lt p1, v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mNrdpPlayerback:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent;->mNrdpPlayerback:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->onBackgroudTrimMem()V

    goto :goto_0
.end method
