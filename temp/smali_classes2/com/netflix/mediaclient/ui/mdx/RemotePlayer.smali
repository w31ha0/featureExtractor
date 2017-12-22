.class public Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;
.super Landroid/content/BroadcastReceiver;
.source "RemotePlayer.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/mdx/RemotePlaybackListener;


# static fields
.field private static final SHOW_MINI_PLAYER_STATES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SKIP_BACK_TIME_SECONDS:I = -0x1e

.field private static final STATUS_AUTO_ADVANCE:Ljava/lang/String; = "AUTO_ADVANCE"

.field private static final STATUS_END_PLAYBACK:Ljava/lang/String; = "END_PLAYBACK"

.field private static final STATUS_PAUSE:Ljava/lang/String; = "PAUSE"

.field private static final STATUS_PLAY:Ljava/lang/String; = "PLAY"

.field private static final STATUS_PLAYING:Ljava/lang/String; = "PLAYING"

.field private static final STATUS_PREPAUSE:Ljava/lang/String; = "prepause"

.field private static final STATUS_PREPLAY:Ljava/lang/String; = "preplay"

.field private static final STATUS_PRESEEK:Ljava/lang/String; = "preseek"

.field private static final STATUS_PROGRESS:Ljava/lang/String; = "PROGRESS"

.field private static final STATUS_STALLED:Ljava/lang/String; = "STALLED"

.field private static final STATUS_STOP:Ljava/lang/String; = "STOP"

.field private static final TAG:Ljava/lang/String; = "mdx_remote_player"


# instance fields
.field private final mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private mCachedLanguage:Lcom/netflix/mediaclient/media/Language;

.field private final mCallback:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;

.field private mCapabilities:Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;

.field private mDuration:I

.field private final mMdxEventFactory:Lcom/netflix/mediaclient/ui/mdx/events/MdxEventHandlerFactory;

.field private mPositionInSeconds:I

.field private mReady:Z

.field private mReceiverIsRegistered:Z

.field private mRequestForLanguageDataSent:Z

.field private mState:Ljava/lang/String;

.field private mVolume:I

.field private mVolumeControllEnabled:Z

.field private userDidPlayPause:Z

.field private userDidSeek:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->SHOW_MINI_PLAYER_STATES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;)V
    .locals 2

    .prologue
    .line 146
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 94
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/events/MdxEventHandlerFactory;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/mdx/events/MdxEventHandlerFactory;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mMdxEventFactory:Lcom/netflix/mediaclient/ui/mdx/events/MdxEventHandlerFactory;

    .line 99
    const-string/jumbo v0, "PLAY"

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mState:Ljava/lang/String;

    .line 148
    const-string/jumbo v0, "mdx_remote_player"

    const-string/jumbo v1, "Remote player created"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    if-nez p1, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "activity can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    if-nez p2, :cond_1

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "owner can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_1
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 159
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mCallback:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;

    .line 160
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->registerReceiver()V

    .line 161
    return-void
.end method

.method private createIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 433
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManagerUtils;->isMdxAgentAvailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getCurrentTarget()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgentApiUtils;->createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 436
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 165
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_READY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 166
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_NOTREADY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_AUDIOSUB"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_CAPABILITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_DIALOGCANCEL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_DIALOGSHOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_MOVIEMETADATA_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_MOVIEMETADA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_TARGETLIST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDX_NETWORK_CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.MDX"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 178
    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1, p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mReceiverIsRegistered:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    const-string/jumbo v1, "mdx_remote_player"

    const-string/jumbo v2, "Failed to register "

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private resetLanguageData()V
    .locals 2

    .prologue
    .line 664
    const-string/jumbo v0, "mdx_remote_player"

    const-string/jumbo v1, "Resetting language data..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mRequestForLanguageDataSent:Z

    .line 666
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mCachedLanguage:Lcom/netflix/mediaclient/media/Language;

    .line 667
    return-void
.end method

.method private skip(I)V
    .locals 2

    .prologue
    .line 293
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDX_SKIP"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->createIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 294
    if-eqz v0, :cond_0

    .line 295
    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 296
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 298
    :cond_0
    const-string/jumbo v0, "PLAY"

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mState:Ljava/lang/String;

    .line 299
    return-void
.end method

.method private unregisterReceiver()V
    .locals 3

    .prologue
    .line 191
    :try_start_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mReceiverIsRegistered:Z

    if-eqz v0, :cond_0

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mReceiverIsRegistered:Z

    .line 193
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    const-string/jumbo v1, "mdx_remote_player"

    const-string/jumbo v2, "Failed to unregister "

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public cancelDialog()V
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mCallback:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;->cancelDialog()V

    .line 479
    return-void
.end method

.method public changeLanguage(Lcom/netflix/mediaclient/media/Language;)V
    .locals 3

    .prologue
    .line 216
    if-nez p1, :cond_1

    .line 217
    const-string/jumbo v0, "mdx_remote_player"

    const-string/jumbo v1, "Language is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getSelectedAudio()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    if-nez v0, :cond_2

    .line 222
    const-string/jumbo v0, "mdx_remote_player"

    const-string/jumbo v1, "Language selected audio is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 226
    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getSelectedSubtitle()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    if-nez v0, :cond_3

    .line 227
    const-string/jumbo v0, "mdx_remote_player"

    const-string/jumbo v1, "Language selected subtitle is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 231
    :cond_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->resetLanguageData()V

    .line 233
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDX_SETAUDIOSUB"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->createIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_0

    .line 235
    const-string/jumbo v1, "audioTrackId"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getSelectedAudio()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/AudioSource;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    const-string/jumbo v1, "subtitleTrackId"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getSelectedSubtitle()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/media/Subtitle;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->unregisterReceiver()V

    .line 408
    return-void
.end method

.method public error(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 556
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->resetLanguageData()V

    .line 557
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mCallback:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;->error(ILjava/lang/String;)V

    .line 558
    return-void
.end method

.method public getCapabilities()Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mCapabilities:Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mDuration:I

    return v0
.end method

.method public getLanguage()Lcom/netflix/mediaclient/media/Language;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mCachedLanguage:Lcom/netflix/mediaclient/media/Language;

    return-object v0
.end method

.method public getPositionInSeconds()I
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mPositionInSeconds:I

    return v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mState:Ljava/lang/String;

    return-object v0
.end method

.method public getVolume()I
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mVolume:I

    return v0
.end method

.method public isPaused()Z
    .locals 2

    .prologue
    .line 419
    const-string/jumbo v0, "PAUSE"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "prepause"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 415
    const-string/jumbo v0, "PLAYING"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPreplayOrPlaying()Z
    .locals 2

    .prologue
    .line 411
    const-string/jumbo v0, "PLAYING"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "preplay"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 470
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mReady:Z

    return v0
.end method

.method public isStalled()Z
    .locals 2

    .prologue
    .line 424
    const-string/jumbo v0, "PLAY"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "PROGRESS"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "STALLED"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "preplay"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStopped()Z
    .locals 2

    .prologue
    .line 428
    const-string/jumbo v0, "STOP"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVolumeControllEnabled()Z
    .locals 1

    .prologue
    .line 443
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mVolumeControllEnabled:Z

    return v0
.end method

.method public mdxStateChanged(Z)V
    .locals 1

    .prologue
    .line 536
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mReady:Z

    .line 537
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mCallback:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;->mdxStateChanged(Z)V

    .line 538
    return-void
.end method

.method public onNetworkConnectivityChange(Z)V
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mCallback:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;->onNetworkConnectivityChange(Z)V

    .line 661
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 451
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 456
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mMdxEventFactory:Lcom/netflix/mediaclient/ui/mdx/events/MdxEventHandlerFactory;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/events/MdxEventHandlerFactory;->getHandler(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/mdx/events/MdxEventHandler;

    move-result-object v0

    .line 457
    if-eqz v0, :cond_0

    .line 458
    invoke-interface {v0, p0, p2}, Lcom/netflix/mediaclient/ui/mdx/events/MdxEventHandler;->handle(Lcom/netflix/mediaclient/ui/mdx/RemotePlaybackListener;Landroid/content/Intent;)V

    .line 462
    :goto_0
    return-void

    .line 460
    :cond_0
    const-string/jumbo v0, "mdx_remote_player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Event not supported "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDX_PAUSE"

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->createIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 275
    const-string/jumbo v0, "PAUSE"

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mState:Ljava/lang/String;

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->userDidPlayPause:Z

    .line 277
    return-void
.end method

.method public play(Lcom/netflix/mediaclient/servicemgr/Asset;)V
    .locals 2

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->resetLanguageData()V

    .line 244
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgentApiUtils;->playVideo(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;Z)Z

    move-result v0

    .line 245
    if-nez v0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->userDidPlayPause:Z

    .line 250
    const-string/jumbo v0, "preplay"

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mState:Ljava/lang/String;

    goto :goto_0
.end method

.method public requestAudioAndSubtitleData()V
    .locals 2

    .prologue
    .line 644
    const-string/jumbo v0, "mdx_remote_player"

    const-string/jumbo v1, "Sending request for subtitle/audio data..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDX_GETAUDIOSUB"

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->createIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 646
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mRequestForLanguageDataSent:Z

    .line 647
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDX_RESUME"

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->createIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 268
    const-string/jumbo v0, "PLAYING"

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mState:Ljava/lang/String;

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->userDidPlayPause:Z

    .line 270
    return-void
.end method

.method public seek(I)V
    .locals 2

    .prologue
    .line 311
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDX_SEEK"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->createIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 312
    if-eqz v0, :cond_0

    .line 313
    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 314
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 316
    :cond_0
    const-string/jumbo v0, "PLAY"

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mState:Ljava/lang/String;

    .line 317
    return-void
.end method

.method public sendDialogResponse(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 329
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDX_DIALOGRESP"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->createIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 330
    if-eqz v0, :cond_0

    .line 331
    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 334
    :cond_0
    return-void
.end method

.method public setVolume(I)V
    .locals 3

    .prologue
    const/16 v0, 0x64

    .line 343
    iget v1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mVolume:I

    if-gtz v1, :cond_1

    if-gtz p1, :cond_1

    .line 344
    const-string/jumbo v0, "mdx_remote_player"

    const-string/jumbo v1, "Volume is already less than 0 and it can not be turned down more. Do nothing."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    iget v1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mVolume:I

    if-lt v1, v0, :cond_2

    if-lt p1, v0, :cond_2

    .line 349
    const-string/jumbo v0, "mdx_remote_player"

    const-string/jumbo v1, "Volume is already more than 100 and it can not be turned up more. Do nothing."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 353
    :cond_2
    if-le p1, v0, :cond_4

    .line 357
    :goto_1
    if-gez v0, :cond_3

    .line 358
    const/4 v0, 0x0

    .line 362
    :cond_3
    iput v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mVolume:I

    .line 368
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDX_SETVOLUME"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->createIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 369
    if-eqz v0, :cond_0

    .line 370
    const-string/jumbo v1, "volume"

    iget v2, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mVolume:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 371
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_4
    move v0, p1

    goto :goto_1
.end method

.method public shouldIgnorePlayPauseUpdates()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->userDidPlayPause:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->userDidSeek:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldIgnoreVideoPositionUpdates()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->userDidPlayPause:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->userDidSeek:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showDialog(Lcom/netflix/mediaclient/ui/mdx/RemoteDialog;)V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mCallback:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;->showDialog(Lcom/netflix/mediaclient/ui/mdx/RemoteDialog;)V

    .line 529
    return-void
.end method

.method public skipBackThirtySeconds()V
    .locals 1

    .prologue
    .line 280
    const/16 v0, -0x1e

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->skip(I)V

    .line 281
    return-void
.end method

.method public stop(Z)V
    .locals 2

    .prologue
    .line 255
    const-string/jumbo v0, "mdx_remote_player"

    const-string/jumbo v1, "stop sending..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDX_STOP"

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->createIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 257
    const-string/jumbo v0, "mdx_remote_player"

    const-string/jumbo v1, "stop sent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const-string/jumbo v0, "STOP"

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mState:Ljava/lang/String;

    .line 260
    if-eqz p1, :cond_0

    .line 261
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    .line 263
    :cond_0
    return-void
.end method

.method public sync()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDX_GETCAPABILITY"

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->createIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 206
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDX_GETSTATE"

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->createIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 207
    return-void
.end method

.method public targetListChanged()V
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mCallback:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;->targetListChanged()V

    .line 567
    return-void
.end method

.method public updateDuration(I)V
    .locals 1

    .prologue
    .line 545
    iput p1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mDuration:I

    .line 546
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mCallback:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;->updateDuration(I)V

    .line 548
    return-void
.end method

.method public updateLanguage(Lcom/netflix/mediaclient/media/Language;)V
    .locals 1

    .prologue
    .line 519
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mCachedLanguage:Lcom/netflix/mediaclient/media/Language;

    .line 520
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mCallback:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;->updateLanguage(Lcom/netflix/mediaclient/media/Language;)V

    .line 521
    return-void
.end method

.method public updateState(Ljava/lang/String;II)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 575
    const-string/jumbo v0, "END_PLAYBACK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 576
    const-string/jumbo v0, "mdx_remote_player"

    const-string/jumbo v1, "DESTROY: end of playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->resetLanguageData()V

    .line 578
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mCallback:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;->endOfPlayback()V

    .line 633
    :goto_0
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mState:Ljava/lang/String;

    .line 634
    iput p2, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mPositionInSeconds:I

    .line 635
    iput p3, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mVolume:I

    .line 637
    sget-object v0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->SHOW_MINI_PLAYER_STATES:Ljava/util/Set;

    const-string/jumbo v1, "END_PLAYBACK"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 639
    iget-object v9, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mCallback:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;

    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;

    .line 640
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->isPaused()Z

    move-result v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    iget v5, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mDuration:I

    sget-object v1, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->SHOW_MINI_PLAYER_STATES:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    move-object v1, p0

    move v4, p2

    move v6, p3

    invoke-direct/range {v0 .. v8}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;-><init>(Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;ZZIIIZLcom/netflix/mediaclient/ui/mdx/RemotePlayer$1;)V

    .line 639
    invoke-interface {v9, v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;->updateUi(Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;)V

    .line 641
    :cond_1
    :goto_1
    return-void

    .line 580
    :cond_2
    const-string/jumbo v0, "PLAYING"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 582
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->shouldIgnorePlayPauseUpdates()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 583
    const-string/jumbo v0, "mdx_remote_player"

    const-string/jumbo v1, "PLAYING: Do nothing, user just did trickplay"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 585
    :cond_3
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mRequestForLanguageDataSent:Z

    if-nez v0, :cond_4

    .line 586
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->requestAudioAndSubtitleData()V

    goto :goto_0

    .line 588
    :cond_4
    const-string/jumbo v0, "mdx_remote_player"

    const-string/jumbo v1, "Video is playing"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 591
    :cond_5
    const-string/jumbo v0, "PAUSE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 593
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->shouldIgnorePlayPauseUpdates()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 594
    const-string/jumbo v0, "mdx_remote_player"

    const-string/jumbo v1, "PAUSE: Do nothing, user just did trickplay"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 597
    :cond_6
    const-string/jumbo v0, "mdx_remote_player"

    const-string/jumbo v1, "Paused..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 600
    :cond_7
    const-string/jumbo v0, "prepause"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 602
    const-string/jumbo v0, "mdx_remote_player"

    const-string/jumbo v1, "PREPAUSE: Start listening to play/pause from target again"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iput-boolean v3, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->userDidPlayPause:Z

    goto :goto_1

    .line 606
    :cond_8
    const-string/jumbo v0, "preplay"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 608
    const-string/jumbo v0, "mdx_remote_player"

    const-string/jumbo v1, "PREPLAY: Start listening to play/pause from target again"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iput-boolean v3, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->userDidPlayPause:Z

    goto/16 :goto_0

    .line 611
    :cond_9
    const-string/jumbo v0, "preseek"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 613
    const-string/jumbo v0, "mdx_remote_player"

    const-string/jumbo v1, "PRESEEK: Start listening to video position updates from target again"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iput-boolean v3, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->userDidSeek:Z

    goto/16 :goto_1

    .line 617
    :cond_a
    const-string/jumbo v0, "PLAY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 618
    const-string/jumbo v0, "mdx_remote_player"

    const-string/jumbo v1, "Play, do nothing..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 620
    :cond_b
    const-string/jumbo v0, "PROGRESS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 621
    const-string/jumbo v0, "mdx_remote_player"

    const-string/jumbo v1, "Progress..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 623
    :cond_c
    const-string/jumbo v0, "STALLED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 624
    const-string/jumbo v0, "mdx_remote_player"

    const-string/jumbo v1, "Stalled..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public updateTargetCapabilities(Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;)V
    .locals 1

    .prologue
    .line 507
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mCapabilities:Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;

    .line 508
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mCallback:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;->updateTargetCapabilities(Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;)V

    .line 509
    return-void
.end method

.method public updateVideoMetadata()V
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mCallback:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;->updateVideoMetadata()V

    .line 656
    return-void
.end method
