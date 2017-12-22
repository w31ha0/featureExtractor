.class public Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;
.super Ljava/lang/Object;
.source "ExoPlayback.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$ConfigAgentListener;
.implements Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;
.implements Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;
.implements Lcom/netflix/mediaclient/servicemgr/IPlayer;


# static fields
.field private static final TAG:Ljava/lang/String; = "OfflinePlayback"


# instance fields
.field private mConfigAgentInterface:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

.field private mContext:Landroid/content/Context;

.field private mLoggingAgent:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

.field private mMainHanlder:Landroid/os/Handler;

.field private mOfflineAgent:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;

.field private mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

.field private mPlayerFileManager:Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;

.field mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

.field private mPlayerSuspendNotification:Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;

.field private mSubtitleConfiguration:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

.field private mSubtitles:Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;Lcom/netflix/mediaclient/servicemgr/IClientLogging;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    .line 81
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mMainHanlder:Landroid/os/Handler;

    .line 83
    iput-object p4, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineAgent:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;

    .line 84
    iput-object p5, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mLoggingAgent:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    .line 85
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mConfigAgentInterface:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    .line 87
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->addConfigurationChangeListener()V

    .line 88
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->updateSubtitleSettings(Z)V

    .line 89
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerFileManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/player/PlayerFileManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mPlayerFileManager:Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;

    .line 90
    new-instance v0, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;

    invoke-direct {v0, p6, p0}, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;-><init>(Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mSubtitles:Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;)Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mPlayerSuspendNotification:Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;

    return-object v0
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;)Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mPlayerSuspendNotification:Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;

    return-object p1
.end method

.method private addConfigurationChangeListener()V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mConfigAgentInterface:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    instance-of v0, v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mConfigAgentInterface:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    check-cast v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->addConfigAgentListener(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$ConfigAgentListener;)V

    .line 421
    :cond_0
    return-void
.end method

.method private findSubtitleConfiguration()Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;
    .locals 2

    .prologue
    .line 396
    const/4 v0, 0x0

    .line 397
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mConfigAgentInterface:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    if-eqz v1, :cond_0

    .line 398
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mConfigAgentInterface:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getSubtitleConfiguration()Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    move-result-object v0

    .line 401
    :cond_0
    if-nez v0, :cond_1

    .line 402
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->DEFAULT:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    .line 404
    :cond_1
    return-object v0
.end method

.method private varargs handlePlayerListener(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 304
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    monitor-enter v1

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

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

    .line 306
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;->isListening()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 307
    new-instance v3, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback$1;

    invoke-direct {v3, p0, p1, v0, p2}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback$1;-><init>(Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;[Ljava/lang/Object;)V

    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->runInMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 315
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

    .line 316
    return-void
.end method

.method private runInMainThread(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mMainHanlder:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    return-void
.end method

.method private shouldReportSubtitleQoe(Lcom/netflix/mediaclient/media/Subtitle;Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 441
    if-nez p2, :cond_0

    .line 454
    :goto_0
    return v0

    .line 445
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->getCurrentSubtitleTrack()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v1

    .line 446
    if-nez v1, :cond_1

    .line 447
    const-string/jumbo v1, "OfflinePlayback"

    const-string/jumbo v2, "isNewSubtitle: current subtitle is null, can not report anything..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 449
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 450
    const-string/jumbo v1, "OfflinePlayback"

    const-string/jumbo v2, "isNewSubtitle: subtitle is not changed, do not report anything..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 453
    :cond_2
    const-string/jumbo v0, "OfflinePlayback"

    const-string/jumbo v1, "isNewSubtitle: subtitle is changed, report QoE..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateSubtitleSettings(Z)V
    .locals 3

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->findSubtitleConfiguration()Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    move-result-object v0

    .line 382
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mSubtitleConfiguration:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    if-ne v1, v0, :cond_0

    if-nez p1, :cond_0

    .line 392
    :goto_0
    return-void

    .line 387
    :cond_0
    if-eqz p1, :cond_1

    .line 388
    const-string/jumbo v1, "OfflinePlayback"

    const-string/jumbo v2, "Forced set of subtitle configuration"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_1
    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mSubtitleConfiguration:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    goto :goto_0
.end method


# virtual methods
.method public addPlayerListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;)V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->addPlayerListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;)V

    .line 256
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mPlayerSuspendNotification:Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mPlayerSuspendNotification:Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->cancelNotification()V

    .line 118
    iput-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mPlayerSuspendNotification:Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/IPlaybackSession;->close()V

    .line 123
    :cond_1
    iput-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    .line 124
    return-void
.end method

.method public getAudioSubtitleDefaultOrderInfo()[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/IPlaybackSession;->getAudioSubtitleDefaultOrderInfo()[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    move-result-object v0

    .line 225
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
    .line 205
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/IPlaybackSession;->getAudioTrackList()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    .line 209
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
    .line 181
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/service/player/IPlaybackSession;->getBifFrame(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentAudioTrack()Lcom/netflix/mediaclient/media/AudioSource;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/IPlaybackSession;->getCurrentAudioTrack()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    .line 250
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPlayableId()J
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/IPlaybackSession;->getCurrentPlayableId()J

    move-result-wide v0

    .line 299
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPositionInMs()J
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/IPlaybackSession;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    .line 176
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentSubtitleTrack()Lcom/netflix/mediaclient/media/Subtitle;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/IPlaybackSession;->getCurrentSubtitleTrack()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    .line 242
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlayerFileCache()Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mPlayerFileManager:Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;

    return-object v0
.end method

.method public getPlayerManifestData()Lcom/netflix/mediaclient/media/PlayerManifestData;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/IPlaybackSession;->getManifestData()Lcom/netflix/mediaclient/media/PlayerManifestData;

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlayoutMetadata()Lcom/netflix/mediaclient/media/PlayoutMetadata;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/IPlaybackSession;->getPlayoutMetadata()Lcom/netflix/mediaclient/media/PlayoutMetadata;

    move-result-object v0

    .line 192
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResourceFetcher()Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubtitleConfiguration()Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubtitleProfileFromMetadata()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mSubtitles:Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;

    .line 272
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->getSubtitleParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 273
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->getSubtitleParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;->getSubtitleProfile()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    move-result-object v0

    .line 275
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubtitleTrackList()[Lcom/netflix/mediaclient/media/Subtitle;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/IPlaybackSession;->getSubtitleTrackList()[Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    .line 217
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/netflix/mediaclient/media/Subtitle;

    goto :goto_0
.end method

.method public handleBuffering(Z)V
    .locals 0

    .prologue
    .line 359
    return-void
.end method

.method public handleError(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackError;)V
    .locals 3

    .prologue
    .line 353
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getPlayerListenerOnPlaybackErrorHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnPlaybackErrorHandler;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->handlePlayerListener(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V

    .line 354
    return-void
.end method

.method public handlePrepared()V
    .locals 4

    .prologue
    .line 319
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/IPlaybackSession;->getWatermark()Lcom/netflix/mediaclient/media/Watermark;

    move-result-object v0

    .line 320
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getPlayerListenerPrepareHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerPrepareHandler;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->handlePlayerListener(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V

    .line 321
    return-void

    .line 319
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleStarted()V
    .locals 2

    .prologue
    .line 324
    new-instance v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback$2;-><init>(Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->runInMainThread(Ljava/lang/Runnable;)V

    .line 333
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getPlayerListenerOnStartedHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnStartedHandler;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->handlePlayerListener(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V

    .line 334
    return-void
.end method

.method public handleStopped()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getPlayerListenerOnCompletionHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnCompletionHandler;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->handlePlayerListener(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V

    .line 339
    return-void
.end method

.method public handleSubtitleUpdate(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;)V
    .locals 3

    .prologue
    .line 348
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getPlayerListenerOnSubtitleChangeHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSubtitleChangeHandler;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->handlePlayerListener(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V

    .line 349
    return-void
.end method

.method public handleUpdatePts(I)V
    .locals 4

    .prologue
    .line 343
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->getPlayerListenerOnUpdatePtsHandler()Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnUpdatePtsHandler;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->handlePlayerListener(Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;[Ljava/lang/Object;)V

    .line 344
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/IPlaybackSession;->isPlaying()Z

    move-result v0

    .line 169
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigRefreshed(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 409
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->updateSubtitleSettings(Z)V

    .line 412
    :cond_0
    return-void
.end method

.method public openPlaybackSessionAndPlay(JLcom/netflix/mediaclient/ui/common/PlayContext;J)Ljava/lang/String;
    .locals 17

    .prologue
    .line 105
    const-string/jumbo v2, "OfflinePlayback"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "open() movieId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    if-eqz v2, :cond_0

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->close()V

    .line 109
    :cond_0
    new-instance v3, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mMainHanlder:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mConfigAgentInterface:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineAgent:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mLoggingAgent:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mLoggingAgent:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    .line 110
    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getPdsEventHandler()Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsEventReporter;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mSubtitles:Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;

    move-object/from16 v6, p0

    move-wide/from16 v12, p1

    move-wide/from16 v14, p4

    move-object/from16 v16, p3

    invoke-direct/range {v3 .. v16}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;Lcom/netflix/mediaclient/servicemgr/IClientLogging;Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsEventReporter;Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;JJLcom/netflix/mediaclient/ui/common/PlayContext;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    .line 111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/player/IPlaybackSession;->getSessionId()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/IPlaybackSession;->pause()V

    .line 131
    :cond_0
    return-void
.end method

.method public prepare(Ljava/util/List;)V
    .locals 0
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
    .line 282
    return-void
.end method

.method public removePlayerListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;)V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mPlayerListenerManager:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager;->removePlayerListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;)V

    .line 261
    return-void
.end method

.method public reportFailedSubtitle(Ljava/lang/String;Lcom/netflix/mediaclient/media/SubtitleUrl;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;ZLcom/netflix/mediaclient/android/app/Status;[Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 365
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mLoggingAgent:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getLogblobLogging()Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    move-result-object v9

    new-instance v0, Lcom/netflix/mediaclient/service/player/logblob/SubtitleError;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->getCurrentSubtitleTrack()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v5

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/netflix/mediaclient/service/player/logblob/SubtitleError;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/media/SubtitleUrl;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;ZLcom/netflix/mediaclient/media/Subtitle;Lcom/netflix/mediaclient/android/app/Status;[Ljava/lang/String;Z)V

    invoke-interface {v9, v0}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    .line 366
    return-void
.end method

.method public reportSubtitleChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 437
    return-void
.end method

.method public reportSubtitleVisibilityChanged(Z)V
    .locals 0

    .prologue
    .line 433
    return-void
.end method

.method public seekTo(JZ)V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/netflix/mediaclient/service/player/IPlaybackSession;->seekTo(JZ)V

    .line 145
    :cond_0
    return-void
.end method

.method public seekWithFuzzRange(II)V
    .locals 4

    .prologue
    .line 152
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/player/IPlaybackSession;->getCurrentPosition()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-interface {v0, v2, v3, v1}, Lcom/netflix/mediaclient/service/player/IPlaybackSession;->seekTo(JZ)V

    .line 155
    :cond_0
    return-void
.end method

.method public declared-synchronized selectTracks(Lcom/netflix/mediaclient/media/AudioSource;Lcom/netflix/mediaclient/media/Subtitle;Z)Z
    .locals 1

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    invoke-interface {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/player/IPlaybackSession;->selectTracks(Lcom/netflix/mediaclient/media/AudioSource;Lcom/netflix/mediaclient/media/Subtitle;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 233
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAudioDuck(Z)V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/player/IPlaybackSession;->setAudioDuck(Z)V

    .line 428
    :cond_0
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/player/IPlaybackSession;->setSurface(Landroid/view/Surface;)V

    .line 162
    :cond_0
    return-void
.end method

.method public showSuspendNotificationIfAny(Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;)V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/IPlaybackSession;->getCurrentPlayableId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->showNotificationOffline(Ljava/lang/String;)V

    .line 100
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mPlayerSuspendNotification:Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;

    .line 102
    :cond_0
    return-void
.end method

.method public unpause()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->mOfflineSession:Lcom/netflix/mediaclient/service/player/IPlaybackSession;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/IPlaybackSession;->play()V

    .line 138
    :cond_0
    return-void
.end method
