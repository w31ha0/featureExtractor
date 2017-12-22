.class public Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;
.super Ljava/lang/Object;
.source "MediaPlayerWrapper.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# static fields
.field private static final MEDIA_PLAYER_END:I = 0x8

.field private static final MEDIA_PLAYER_ERROR:I = 0x9

.field private static final MEDIA_PLAYER_IDLE:I = 0x0

.field private static final MEDIA_PLAYER_INITIALIZED:I = 0x1

.field private static final MEDIA_PLAYER_PAUSED:I = 0x6

.field private static final MEDIA_PLAYER_PLAYBACK_COMPLETED:I = 0x7

.field private static final MEDIA_PLAYER_PREPARED:I = 0x2

.field private static final MEDIA_PLAYER_PREPARING:I = 0x3

.field private static final MEDIA_PLAYER_STARTED:I = 0x4

.field private static final MEDIA_PLAYER_STOPPED:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MediaPlayerWrapper"


# instance fields
.field protected assetType:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

.field private callbacks:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;

.field private completedLoops:I

.field private handler:Landroid/os/Handler;

.field protected length:J

.field protected localUrl:Ljava/lang/String;

.field protected mTextureView:Landroid/view/TextureView;

.field private maxLoops:I

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field protected offset:J

.field private playerState:I

.field private seekPosition:I

.field shouldLoop:Z

.field private startPlaybackRunnable:Ljava/lang/Runnable;

.field protected surfaceReady:Z

.field protected videoSurface:Landroid/view/Surface;

.field private volume:F


# direct methods
.method public constructor <init>(Landroid/view/TextureView;ZIFLcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->volume:F

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->surfaceReady:Z

    .line 76
    iput-object p5, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->assetType:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    .line 77
    iput-object p6, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->callbacks:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;

    .line 78
    if-eqz p1, :cond_0

    .line 79
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mTextureView:Landroid/view/TextureView;

    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 84
    :goto_0
    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->shouldLoop:Z

    .line 85
    iput p3, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->maxLoops:I

    .line 86
    iput p4, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->volume:F

    .line 87
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->surfaceReady:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->startPlayback()V

    return-void
.end method

.method private releaseResources(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->releaseMediaPlayer()V

    .line 417
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->releaseSurface(Landroid/graphics/SurfaceTexture;)V

    .line 418
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->callbacks:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->callbacks:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;->onPlaybackFinished()V

    .line 421
    :cond_0
    return-void
.end method

.method private releaseSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .prologue
    .line 444
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->surfaceReady:Z

    .line 445
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->videoSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->videoSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 447
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->videoSurface:Landroid/view/Surface;

    .line 449
    :cond_0
    if-eqz p1, :cond_1

    .line 450
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 452
    :cond_1
    return-void
.end method

.method private startPlayback()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 180
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 190
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->surfaceReady:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 191
    iget v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 193
    :cond_2
    iget v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    if-eq v0, v2, :cond_3

    .line 194
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->seekPosition:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 200
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 201
    const/4 v0, 0x4

    iput v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    .line 202
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    goto :goto_0
.end method

.method private stopPlayback()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 171
    iget v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->seekPosition:I

    .line 173
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 174
    const/4 v0, 0x5

    iput v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    .line 177
    :cond_0
    return-void
.end method

.method private updateVolume()V
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->volume:F

    iget v2, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->volume:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 220
    :cond_0
    return-void
.end method


# virtual methods
.method public clearCallbacks()V
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->callbacks:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;

    .line 428
    return-void
.end method

.method public delayedStartPlayback(I)V
    .locals 4

    .prologue
    .line 310
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->handler:Landroid/os/Handler;

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->startPlaybackRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 315
    new-instance v0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$1;-><init>(Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->startPlaybackRunnable:Ljava/lang/Runnable;

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->startPlaybackRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 327
    return-void
.end method

.method public initializeMediaPlayer()V
    .locals 7

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->surfaceReady:Z

    if-eqz v0, :cond_3

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    .line 105
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 107
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 108
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 109
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 110
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 111
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->updateVolume()V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->videoSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->videoSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 122
    :cond_1
    iget v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 123
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->startPlayback()V

    .line 149
    :cond_3
    :goto_0
    return-void

    .line 124
    :cond_4
    iget v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 125
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->localUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 126
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->localUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 128
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->offset:J

    iget-wide v4, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->length:J

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 130
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 131
    const/4 v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 133
    const/4 v0, 0x3

    iput v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 146
    :goto_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->releaseResources()V

    goto :goto_0

    .line 138
    :cond_6
    :try_start_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->releaseResources()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 142
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public isDonePlaying()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 223
    iget v1, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->maxLoops:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->completedLoops:I

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->shouldLoop:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->maxLoops:I

    :goto_1
    if-lt v2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method public isMuted()Z
    .locals 2

    .prologue
    .line 208
    iget v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->volume:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 256
    const/4 v1, 0x7

    iput v1, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    .line 257
    iget v1, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->completedLoops:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->completedLoops:I

    .line 258
    iput v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->seekPosition:I

    .line 259
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->isDonePlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->callbacks:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->callbacks:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;->onPlaybackSuccessfullyCompleted()V

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->releaseResources()V

    .line 300
    :goto_0
    return-void

    .line 286
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 291
    :cond_2
    if-eqz v0, :cond_3

    .line 295
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->delayedStartPlayback(I)V

    goto :goto_0

    .line 297
    :cond_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->startPlayback()V

    goto :goto_0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .prologue
    .line 331
    const/16 v0, 0x9

    iput v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    .line 337
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->callbacks:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->callbacks:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;

    invoke-interface {v0, p2, p3}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;->onPlaybackError(II)V

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->releaseResources()V

    .line 343
    const/4 v0, 0x1

    return v0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->callbacks:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->callbacks:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;->onPlaybackStarted()V

    .line 245
    :cond_0
    const/4 v0, 0x1

    .line 248
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x2

    iput v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    .line 235
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->startPlayback()V

    .line 236
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .prologue
    .line 372
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->videoSurface:Landroid/view/Surface;

    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->surfaceReady:Z

    .line 375
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->initializeMediaPlayer()V

    .line 376
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .prologue
    .line 383
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->releaseResources(Landroid/graphics/SurfaceTexture;)V

    .line 384
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .prologue
    .line 389
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 393
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    .prologue
    .line 355
    if-lez p2, :cond_0

    if-lez p3, :cond_0

    .line 356
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->startPlayback()V

    .line 362
    :cond_0
    return-void
.end method

.method public pausePlayback()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->seekPosition:I

    .line 163
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 164
    const/4 v0, 0x6

    iput v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    .line 167
    :cond_0
    return-void
.end method

.method public releaseMediaPlayer()V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 432
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->stopPlayback()V

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 436
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    .line 437
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 438
    const/16 v0, 0x8

    iput v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->playerState:I

    .line 439
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 441
    :cond_1
    return-void
.end method

.method public releaseResources()V
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->releaseResources(Z)V

    .line 397
    return-void
.end method

.method public releaseResources(Z)V
    .locals 2

    .prologue
    .line 406
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 407
    :goto_0
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->releaseResources(Landroid/graphics/SurfaceTexture;)V

    .line 408
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->startPlaybackRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->startPlaybackRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 411
    :cond_0
    return-void

    .line 406
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resumePlayback()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->surfaceReady:Z

    if-eqz v0, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->startPlayback()V

    .line 154
    const/4 v0, 0x1

    .line 156
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDataSource(Ljava/lang/String;JJ)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->localUrl:Ljava/lang/String;

    .line 91
    iput-wide p2, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->offset:J

    .line 92
    iput-wide p4, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->length:J

    .line 93
    return-void
.end method

.method public toggleVolume()V
    .locals 2

    .prologue
    .line 212
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->volume:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->volume:F

    .line 213
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->updateVolume()V

    .line 214
    return-void
.end method
