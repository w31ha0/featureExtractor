.class public Lcom/netflix/mediaclient/service/mdx/MediaSessionController;
.super Ljava/lang/Object;
.source "MediaSessionController.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final MDX_VOLUME_MULTIPLIER:I = 0xa

.field private static final TAG:Ljava/lang/String; = "nf_media_session_controller"


# instance fields
.field private mAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

.field private mCapabilitiesReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mIsPostPlay:Z

.field private mIsVolumeControlSupported:Z

.field private mMdxConfiguration:Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

.field private mMediaSession:Landroid/media/session/MediaSession;

.field private mPostponedState:I

.field private mRemoteControlVisible:Z

.field private mTitle:Ljava/lang/String;

.field private mVolume:I

.field private mVolumeProvider:Landroid/media/VolumeProvider;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;)V
    .locals 3

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mTitle:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mPostponedState:I

    .line 53
    const-string/jumbo v0, "nf_media_session_controller"

    const-string/jumbo v1, "Initializing MediaSessionController"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mContext:Landroid/content/Context;

    .line 56
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    .line 57
    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mMdxConfiguration:Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mMediaSession:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    .line 60
    const-string/jumbo v0, "nf_media_session_controller"

    const-string/jumbo v1, "MediaSession was not destroyed correctly! Destroying it now."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->destroy()V

    .line 63
    :cond_0
    new-instance v0, Landroid/media/session/MediaSession;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "Netflix media session"

    invoke-direct {v0, v1, v2}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mMediaSession:Landroid/media/session/MediaSession;

    .line 64
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->registerMdxCapabilityReceiver()V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/mdx/MediaSessionController;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mPostponedState:I

    return v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/mdx/MediaSessionController;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->setState(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/mdx/MediaSessionController;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mIsPostPlay:Z

    return v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/mdx/MediaSessionController;)Lcom/netflix/mediaclient/service/mdx/MdxAgent;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/mdx/MediaSessionController;)I
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->getVolume()I

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/netflix/mediaclient/service/mdx/MediaSessionController;Z)Z
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mIsVolumeControlSupported:Z

    return p1
.end method

.method private getVolume()I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mVolume:I

    return v0
.end method

.method private initVolumeProvider()V
    .locals 4

    .prologue
    .line 296
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController$3;

    const/4 v1, 0x2

    const/16 v2, 0xa

    iget v3, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mVolume:I

    div-int/lit8 v3, v3, 0xa

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController$3;-><init>(Lcom/netflix/mediaclient/service/mdx/MediaSessionController;III)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mVolumeProvider:Landroid/media/VolumeProvider;

    .line 316
    return-void
.end method

.method private registerMdxCapabilityReceiver()V
    .locals 3

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->unregisterCapabilityReceiver()V

    .line 324
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController$4;-><init>(Lcom/netflix/mediaclient/service/mdx/MediaSessionController;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mCapabilitiesReceiver:Landroid/content/BroadcastReceiver;

    .line 340
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_CAPABILITY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 341
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.MDX"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 342
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mCapabilitiesReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 343
    return-void
.end method

.method private setState(I)V
    .locals 4

    .prologue
    .line 225
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mMediaSession:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    .line 226
    new-instance v0, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v0}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    .line 227
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mIsPostPlay:Z

    if-eqz v1, :cond_1

    .line 228
    const-wide/16 v2, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    .line 232
    :goto_0
    const-wide/16 v2, -0x1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, v2, v3, v1}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    .line 233
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    .line 235
    :cond_0
    return-void

    .line 230
    :cond_1
    const-wide/16 v2, 0x200

    invoke-virtual {v0, v2, v3}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    goto :goto_0
.end method

.method private shouldNotBeExecuted()Z
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mMdxConfiguration:Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;->isRemoteControlLockScreenEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    const/4 v0, 0x0

    .line 277
    :goto_0
    return v0

    .line 273
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mRemoteControlVisible:Z

    if-eqz v0, :cond_1

    .line 274
    const-string/jumbo v0, "nf_media_session_controller"

    const-string/jumbo v1, "Lock screen is visible and lock screen is NOT enabled! Remove it!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->stopMediaSession()V

    .line 277
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private unregisterCapabilityReceiver()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mCapabilitiesReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mCapabilitiesReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mCapabilitiesReceiver:Landroid/content/BroadcastReceiver;

    .line 350
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 285
    const-string/jumbo v0, "nf_media_session_controller"

    const-string/jumbo v1, "destroy"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->unregisterCapabilityReceiver()V

    .line 288
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->release()V

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mMediaSession:Landroid/media/session/MediaSession;

    .line 290
    return-void
.end method

.method public getMediaSessionToken()Landroid/media/session/MediaSession$Token;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    return-object v0
.end method

.method public startMediaSession()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 136
    const-string/jumbo v0, "nf_media_session_controller"

    const-string/jumbo v1, "startMediaSession"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mRemoteControlVisible:Z

    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0, v2}, Landroid/media/session/MediaSession;->setActive(Z)V

    .line 140
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0, v2}, Landroid/media/session/MediaSession;->setFlags(I)V

    .line 142
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mIsVolumeControlSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mVolumeProvider:Landroid/media/VolumeProvider;

    if-nez v0, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->initVolumeProvider()V

    .line 144
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mMediaSession:Landroid/media/session/MediaSession;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mVolumeProvider:Landroid/media/VolumeProvider;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setPlaybackToRemote(Landroid/media/VolumeProvider;)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mMediaSession:Landroid/media/session/MediaSession;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/MediaSessionController$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController$2;-><init>(Lcom/netflix/mediaclient/service/mdx/MediaSessionController;)V

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    .line 188
    invoke-virtual {p0, v3, v3}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->updateState(ZZ)V

    .line 189
    return-void
.end method

.method public stopMediaSession()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 195
    const-string/jumbo v0, "nf_media_session_controller"

    const-string/jumbo v1, "stopMediaSession"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mRemoteControlVisible:Z

    .line 198
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->setState(I)V

    .line 199
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0, v2}, Landroid/media/session/MediaSession;->setActive(Z)V

    .line 200
    return-void
.end method

.method public updateCurrentVolume(IZ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 245
    const/16 v0, 0x64

    invoke-static {p1, v4, v0}, Lcom/netflix/mediaclient/util/MathUtils;->constrain(III)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mVolume:I

    .line 247
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->shouldNotBeExecuted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mVolumeProvider:Landroid/media/VolumeProvider;

    if-eqz v0, :cond_2

    .line 252
    const-string/jumbo v0, "nf_media_session_controller"

    const-string/jumbo v1, "setCurrentVolume:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mVolume:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 253
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mVolumeProvider:Landroid/media/VolumeProvider;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mMediaSession:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mVolumeProvider:Landroid/media/VolumeProvider;

    iget v1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mVolume:I

    div-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Landroid/media/VolumeProvider;->setCurrentVolume(I)V

    .line 258
    :cond_2
    if-eqz p2, :cond_0

    .line 259
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getCurrentTarget()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mVolume:I

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/MdxAgentApiUtils;->createIntentForSetVolume(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 260
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public updateMetadata(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->getController()Landroid/media/session/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v1

    .line 114
    if-nez v1, :cond_1

    new-instance v0, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v0}, Landroid/media/MediaMetadata$Builder;-><init>()V

    .line 116
    :goto_0
    const-string/jumbo v1, "android.media.metadata.ALBUM_ART"

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaMetadata$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;

    .line 117
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    .line 121
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mPostponedState:I

    if-lez v0, :cond_0

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/MediaSessionController$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController$1;-><init>(Lcom/netflix/mediaclient/service/mdx/MediaSessionController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mPostponedState:I

    .line 130
    :cond_0
    return-void

    .line 114
    :cond_1
    new-instance v0, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v0, v1}, Landroid/media/MediaMetadata$Builder;-><init>(Landroid/media/MediaMetadata;)V

    goto :goto_0
.end method

.method public updateMetadata(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 87
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mTitle:Ljava/lang/String;

    .line 91
    :cond_0
    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mIsPostPlay:Z

    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->getController()Landroid/media/session/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v1

    .line 94
    if-nez v1, :cond_1

    new-instance v0, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v0}, Landroid/media/MediaMetadata$Builder;-><init>()V

    .line 96
    :goto_0
    const-string/jumbo v1, "android.media.metadata.TITLE"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadata$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/media/MediaMetadata$Builder;

    .line 97
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mIsPostPlay:Z

    if-eqz v1, :cond_2

    const v1, 0x7f09012f

    .line 98
    :goto_1
    const-string/jumbo v2, "android.media.metadata.ALBUM"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaMetadata$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/media/MediaMetadata$Builder;

    .line 99
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    .line 100
    return-void

    .line 94
    :cond_1
    new-instance v0, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v0, v1}, Landroid/media/MediaMetadata$Builder;-><init>(Landroid/media/MediaMetadata;)V

    goto :goto_0

    .line 97
    :cond_2
    const v1, 0x7f0901d1

    goto :goto_1
.end method

.method public updateState(ZZ)V
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 213
    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mIsPostPlay:Z

    .line 215
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mIsPostPlay:Z

    if-eqz v1, :cond_0

    .line 216
    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mPostponedState:I

    .line 222
    :goto_0
    return-void

    .line 219
    :cond_0
    if-eqz p1, :cond_1

    .line 221
    :goto_1
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->setState(I)V

    goto :goto_0

    .line 219
    :cond_1
    const/4 v0, 0x3

    goto :goto_1
.end method
