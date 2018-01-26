.class public Lcom/biznessapps/player/PlayerService;
.super Landroid/app/Service;
.source "PlayerService.java"


# static fields
.field private static listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/player/PlayerStateListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private onBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private playerState:Lcom/biznessapps/player/PlayerState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/biznessapps/player/PlayerService;->listeners:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 174
    new-instance v0, Lcom/biznessapps/player/PlayerService$2;

    invoke-direct {v0, p0}, Lcom/biznessapps/player/PlayerService$2;-><init>(Lcom/biznessapps/player/PlayerService;)V

    iput-object v0, p0, Lcom/biznessapps/player/PlayerService;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 182
    new-instance v0, Lcom/biznessapps/player/PlayerService$3;

    invoke-direct {v0, p0}, Lcom/biznessapps/player/PlayerService$3;-><init>(Lcom/biznessapps/player/PlayerService;)V

    iput-object v0, p0, Lcom/biznessapps/player/PlayerService;->onBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 191
    new-instance v0, Lcom/biznessapps/player/PlayerService$4;

    invoke-direct {v0, p0}, Lcom/biznessapps/player/PlayerService$4;-><init>(Lcom/biznessapps/player/PlayerService;)V

    iput-object v0, p0, Lcom/biznessapps/player/PlayerService;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 201
    new-instance v0, Lcom/biznessapps/player/PlayerService$5;

    invoke-direct {v0, p0}, Lcom/biznessapps/player/PlayerService$5;-><init>(Lcom/biznessapps/player/PlayerService;)V

    iput-object v0, p0, Lcom/biznessapps/player/PlayerService;->onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public static addListener(Lcom/biznessapps/player/PlayerStateListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/biznessapps/player/PlayerStateListener;

    .prologue
    .line 166
    sget-object v0, Lcom/biznessapps/player/PlayerService;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    return-void
.end method

.method private initPlayer()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/biznessapps/player/PlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 72
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/player/PlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 73
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 74
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/biznessapps/player/PlayerService;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 75
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/biznessapps/player/PlayerService;->onBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 76
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/biznessapps/player/PlayerService;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 77
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/biznessapps/player/PlayerService;->onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 78
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/biznessapps/player/PlayerService;->setState(I)V

    .line 79
    return-void
.end method

.method public static removeListener(Lcom/biznessapps/player/PlayerStateListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/biznessapps/player/PlayerStateListener;

    .prologue
    .line 170
    sget-object v0, Lcom/biznessapps/player/PlayerService;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 171
    return-void
.end method


# virtual methods
.method protected firePlayerPauseEvent()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method protected firePlayerStartEvent()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method protected firePlayerStopEvent()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method protected firePlayingEvent()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method protected getPlayerState()Lcom/biznessapps/player/PlayerState;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService;->playerState:Lcom/biznessapps/player/PlayerState;

    return-object v0
.end method

.method public isInState(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService;->playerState:Lcom/biznessapps/player/PlayerState;

    invoke-virtual {v0}, Lcom/biznessapps/player/PlayerState;->getState()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 31
    new-instance v0, Lcom/biznessapps/player/PlayerService$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/player/PlayerService$1;-><init>(Lcom/biznessapps/player/PlayerService;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 63
    new-instance v0, Lcom/biznessapps/player/PlayerState;

    invoke-direct {v0}, Lcom/biznessapps/player/PlayerState;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/player/PlayerService;->playerState:Lcom/biznessapps/player/PlayerState;

    .line 64
    invoke-direct {p0}, Lcom/biznessapps/player/PlayerService;->initPlayer()V

    .line 65
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 125
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 117
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/biznessapps/player/PlayerService;->setState(I)V

    .line 118
    return-void
.end method

.method public play(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/player/PlayerService;->playerState:Lcom/biznessapps/player/PlayerState;

    invoke-virtual {v1}, Lcom/biznessapps/player/PlayerState;->getState()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 93
    iget-object v1, p0, Lcom/biznessapps/player/PlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 94
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/biznessapps/player/PlayerService;->setState(I)V

    .line 107
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/player/PlayerService;->playerState:Lcom/biznessapps/player/PlayerState;

    invoke-virtual {v1}, Lcom/biznessapps/player/PlayerState;->getState()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 96
    iget-object v1, p0, Lcom/biznessapps/player/PlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 97
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/biznessapps/player/PlayerService;->setState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/biznessapps/player/PlayerService;->initPlayer()V

    .line 100
    iget-object v1, p0, Lcom/biznessapps/player/PlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/biznessapps/player/PlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 102
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/biznessapps/player/PlayerService;->setState(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected setState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService;->playerState:Lcom/biznessapps/player/PlayerState;

    invoke-virtual {v0, p1}, Lcom/biznessapps/player/PlayerState;->setState(I)V

    .line 163
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 146
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/biznessapps/player/PlayerService;->setState(I)V

    .line 147
    return-void
.end method
