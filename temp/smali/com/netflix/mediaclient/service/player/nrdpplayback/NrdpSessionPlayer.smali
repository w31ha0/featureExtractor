.class public Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;
.super Ljava/lang/Object;
.source "NrdpSessionPlayer.java"

# interfaces
.implements Lcom/netflix/mediaclient/javabridge/ui/EventListener;
.implements Lcom/netflix/mediaclient/service/player/nrdpplayback/ISessionPlayer;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bPlayerBuffering:Z

.field private bPlayingWaitingForPts:Z

.field private mCallback:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlayerListener;

.field private mCallbackHandler:Landroid/os/Handler;

.field private mNrdpPlayer:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;

.field private mNrdpPlayerState:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

.field private mPlayer:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

.field private mSurface:Landroid/view/Surface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlayerListener;Landroid/os/Handler;Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->UNKNOWN:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mNrdpPlayerState:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    .line 52
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mCallback:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlayerListener;

    .line 53
    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mCallbackHandler:Landroid/os/Handler;

    .line 54
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mNrdpPlayer:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;

    .line 55
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->startListening()V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;)Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlayerListener;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mCallback:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlayerListener;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;Lcom/netflix/mediaclient/event/nrdp/player/PlayerError;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->handlePlayerError(Lcom/netflix/mediaclient/event/nrdp/player/PlayerError;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;Lcom/netflix/mediaclient/event/nrdp/player/PlaybackReporterEvent;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->handlePlaybackReporterEvent(Lcom/netflix/mediaclient/event/nrdp/player/PlaybackReporterEvent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;Lcom/netflix/mediaclient/event/nrdp/player/GenericPlayerEvent;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->handleGenericPlayerEvent(Lcom/netflix/mediaclient/event/nrdp/player/GenericPlayerEvent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;Lcom/netflix/mediaclient/event/nrdp/player/OpenComplete;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->handleOpenComplete(Lcom/netflix/mediaclient/event/nrdp/player/OpenComplete;)V

    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;Z)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->handleBufferring(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;Lcom/netflix/mediaclient/event/nrdp/player/AudioTrackChanged;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->handleAudioTrackChanged(Lcom/netflix/mediaclient/event/nrdp/player/AudioTrackChanged;)V

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;Lcom/netflix/mediaclient/event/nrdp/player/StateChanged;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->handleStatechanged(Lcom/netflix/mediaclient/event/nrdp/player/StateChanged;)V

    return-void
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;Lcom/netflix/mediaclient/event/nrdp/player/UpdatePts;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->handleUpdatePts(Lcom/netflix/mediaclient/event/nrdp/player/UpdatePts;)V

    return-void
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;Lcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->handleStreamPresenting(Lcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;)V

    return-void
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->handleStreamingStat(Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;)V

    return-void
.end method

.method private handleAudioTrackChanged(Lcom/netflix/mediaclient/event/nrdp/player/AudioTrackChanged;)V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mCallback:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlayerListener;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlayerListener;->handleAudioTrackChanged(Lcom/netflix/mediaclient/event/nrdp/player/AudioTrackChanged;)V

    .line 153
    return-void
.end method

.method private handleBufferring(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 144
    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "handleBufferring, buffering started - %s"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    const-string/jumbo v0, "underflow"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 145
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->bPlayerBuffering:Z

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mCallback:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlayerListener;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlayerListener;->playerBuffering(Z)V

    .line 147
    iput-boolean v5, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->bPlayerBuffering:Z

    .line 149
    :cond_0
    return-void

    .line 144
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private handleGenericPlayerEvent(Lcom/netflix/mediaclient/event/nrdp/player/GenericPlayerEvent;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 125
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/player/GenericPlayerEvent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 126
    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_endOfStream:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "player_endOfStream"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mCallback:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlayerListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlayerListener;->playerStopped()V

    .line 137
    :goto_0
    return-void

    .line 129
    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_bufferingComplete:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->handlePlayingState()V

    goto :goto_0

    .line 131
    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_underflow:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "player_underflow"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->handleBufferring(Z)V

    goto :goto_0

    .line 135
    :cond_2
    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "GenericPlayerEvent not handled %s"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private handleOpenComplete(Lcom/netflix/mediaclient/event/nrdp/player/OpenComplete;)V
    .locals 2

    .prologue
    .line 139
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleOpenComplete"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mCallback:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlayerListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlayerListener;->playerPrepared()V

    .line 141
    return-void
.end method

.method private handlePlaybackReporterEvent(Lcom/netflix/mediaclient/event/nrdp/player/PlaybackReporterEvent;)V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mCallback:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlayerListener;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlayerListener;->handlePlaybackReporterEvent(Lcom/netflix/mediaclient/event/nrdp/player/PlaybackReporterEvent;)V

    .line 216
    return-void
.end method

.method private handlePlayerError(Lcom/netflix/mediaclient/event/nrdp/player/PlayerError;)V
    .locals 4

    .prologue
    .line 210
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handlePlayerError %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 211
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mCallback:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlayerListener;

    new-instance v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackError;

    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;->MEDIA_PLAYBACK_ERROR:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackError;-><init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlayerListener;->playerError(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackError;)V

    .line 212
    return-void
.end method

.method private handlePlayingState()V
    .locals 2

    .prologue
    .line 192
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handlePlayingState"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->bPlayingWaitingForPts:Z

    .line 194
    return-void
.end method

.method private handleStatechanged(Lcom/netflix/mediaclient/event/nrdp/player/StateChanged;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 163
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleStatechanged %s => %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mNrdpPlayerState:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/player/StateChanged;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->getState(I)Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 164
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mNrdpPlayerState:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->UNKNOWN:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/player/StateChanged;->getState()I

    move-result v0

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->CLOSED:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 166
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "player is ready"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mCallback:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlayerListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlayerListener;->handlePlayerReady()V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/player/StateChanged;->getState()I

    move-result v0

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->OPENING:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 173
    :cond_2
    iput-boolean v5, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->bPlayingWaitingForPts:Z

    .line 174
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/player/StateChanged;->getState()I

    move-result v0

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->CLOSED:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 175
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->CLOSED:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mNrdpPlayerState:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    .line 176
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "player is closed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mCallback:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlayerListener;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mPlayer:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mPlayer:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->getmVideoPlaybackQualStat()Lcom/netflix/mediaclient/media/JPlayer/VideoPlaybackQualStat;

    move-result-object v0

    :goto_1
    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlayerListener;->handlePlayerClosed(Lcom/netflix/mediaclient/media/JPlayer/VideoPlaybackQualStat;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 179
    :cond_4
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/player/StateChanged;->getState()I

    move-result v0

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->OPENING:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 180
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->OPENING:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mNrdpPlayerState:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    goto :goto_0

    .line 181
    :cond_5
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/player/StateChanged;->getState()I

    move-result v0

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->PLAYING:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 182
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->PLAYING:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mNrdpPlayerState:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    .line 183
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->handlePlayingState()V

    goto :goto_0

    .line 184
    :cond_6
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/player/StateChanged;->getState()I

    move-result v0

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->PAUSED:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 185
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->PAUSED:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mNrdpPlayerState:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    .line 186
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mCallback:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlayerListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlayerListener;->playerPaused()V

    goto :goto_0

    .line 187
    :cond_7
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/player/StateChanged;->getState()I

    move-result v0

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->STOPPED:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 188
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->STOPPED:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mNrdpPlayerState:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    goto/16 :goto_0
.end method

.method private handleStreamPresenting(Lcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;)V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mCallback:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlayerListener;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlayerListener;->handleStreamPresenting(Lcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;)V

    .line 197
    return-void
.end method

.method private handleStreamingStat(Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;)V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mCallback:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlayerListener;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mCallback:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlayerListener;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlayerListener;->handleStreamingStat(Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;)V

    .line 159
    :cond_0
    return-void
.end method

.method private handleUpdatePts(Lcom/netflix/mediaclient/event/nrdp/player/UpdatePts;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 199
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/player/UpdatePts;->getPts()I

    move-result v0

    .line 200
    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "handleUpdatePts %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 201
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->bPlayingWaitingForPts:Z

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mCallback:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlayerListener;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlayerListener;->playerStarted()V

    .line 203
    iput-boolean v5, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->bPlayingWaitingForPts:Z

    .line 204
    iput-boolean v5, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->bPlayerBuffering:Z

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mCallback:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlayerListener;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlayerListener;->handlePtsUpdate(I)V

    .line 207
    return-void
.end method

.method private runInWorkThread(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    return-void
.end method

.method private startListening()V
    .locals 2

    .prologue
    .line 61
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Registering as ASPlayer listener "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mNrdpPlayer:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->generic_background:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mNrdpPlayer:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_openComplete:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 64
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mNrdpPlayer:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_buffering:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 65
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mNrdpPlayer:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_stateChanged:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mNrdpPlayer:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_updatePts:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mNrdpPlayer:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_audioTrackChanged:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mNrdpPlayer:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_streamPresenting:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 69
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mNrdpPlayer:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_streamingStat:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 70
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mNrdpPlayer:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_error:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mNrdpPlayer:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_playbackReporter:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mNrdpPlayer:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_endOfStream:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 73
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mNrdpPlayer:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_bufferingComplete:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mNrdpPlayer:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_underflow:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 75
    return-void
.end method

.method private stopListening()V
    .locals 5

    .prologue
    .line 77
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Unregistering as ASPlayer listener "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->values()[Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 79
    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mNrdpPlayer:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3, p0}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;->removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mNrdpPlayer:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;->close()V

    .line 232
    return-void
.end method

.method public getVideoDecoderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mPlayer:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mPlayer:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->getVideoDecoderName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public isPlayerReadyOrClosed()Z
    .locals 2

    .prologue
    .line 281
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->CLOSED:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mNrdpPlayer:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;

    invoke-interface {v1}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;->getPlayerState()Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public obtainPlaybackStat()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mNrdpPlayer:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;->obtainPlaybackStat()V

    .line 272
    return-void
.end method

.method public obtainStreamingStat()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mNrdpPlayer:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;->obtainStreamingStat()V

    .line 277
    return-void
.end method

.method public open(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Ljava/lang/String;Ljava/lang/String;JLcom/netflix/mediaclient/service/player/drm/NfDrmSession;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 220
    new-instance v1, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mSurface:Landroid/view/Surface;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;-><init>(Landroid/view/Surface;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mPlayer:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    .line 221
    if-eqz p6, :cond_3

    move v1, v0

    .line 222
    :goto_0
    if-eqz v1, :cond_0

    .line 223
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mPlayer:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-virtual {p6}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->getMediaCrypto()Landroid/media/MediaCrypto;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->setMediaCrypto(Landroid/media/MediaCrypto;)V

    .line 225
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p6}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->isLicenseAcquired()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v5, v0

    .line 226
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mNrdpPlayer:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    long-to-int v4, p4

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;->open(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 227
    return-void

    :cond_3
    move v1, v5

    .line 221
    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mNrdpPlayer:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;->pause()V

    .line 237
    return-void
.end method

.method public provideLicense(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mNrdpPlayer:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;->provideLicense(Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public received(Lcom/netflix/mediaclient/event/UIEvent;)V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer$1;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer$1;-><init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;Lcom/netflix/mediaclient/event/UIEvent;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->runInWorkThread(Ljava/lang/Runnable;)V

    .line 122
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 311
    iput-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mCallback:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlayerListener;

    .line 312
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->stopListening()V

    .line 313
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mPlayer:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mPlayer:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->release()V

    .line 316
    :cond_0
    iput-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mPlayer:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    .line 317
    return-void
.end method

.method public seek(JZ)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 246
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mNrdpPlayer:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;

    long-to-int v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v3, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;->swim(IZIZ)V

    .line 247
    return-void
.end method

.method public seekWithFuzzRange(II)V
    .locals 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mNrdpPlayer:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, p1, v1, p2, v2}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;->swim(IZIZ)V

    .line 252
    return-void
.end method

.method public setAudioDuck(Z)V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mPlayer:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mPlayer:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->setAudioDuck(Z)V

    .line 307
    :cond_0
    return-void
.end method

.method public setAudioTrack(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mNrdpPlayer:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;->setAudioTrack(Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public setStreamingConfig(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mNrdpPlayer:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;->setStreamingConfig(Lorg/json/JSONObject;)V

    .line 267
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2

    .prologue
    .line 286
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mSurface:Landroid/view/Surface;

    .line 287
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mPlayer:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mPlayer:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->updateSurface(Landroid/view/Surface;)V

    .line 290
    :cond_0
    return-void
.end method

.method public setVideoBitrateRanges(II)V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mNrdpPlayer:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;->setVideoBitrateRanges(II)V

    .line 257
    return-void
.end method

.method public unpause()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->mNrdpPlayer:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;->unpause()V

    .line 242
    return-void
.end method
