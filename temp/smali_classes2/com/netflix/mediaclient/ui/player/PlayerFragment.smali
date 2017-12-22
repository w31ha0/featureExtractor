.class public Lcom/netflix/mediaclient/ui/player/PlayerFragment;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source "PlayerFragment.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag$DialogCanceledListenerProvider;
.implements Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;
.implements Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;
.implements Lcom/netflix/mediaclient/ui/common/PlayContextProvider;


# static fields
.field public static final ASSET_EXTRA:Ljava/lang/String; = "AssetExtra"

.field public static final BOOKMARK_SECONDS_FROM_START_PARAM:Ljava/lang/String; = "BookmarkSecondsFromStart"

.field public static final DEBUGDATA_FORMAT:Ljava/lang/String; = "App build: %1$s %2$s\nMem used: %3$d MB\nUI build: %4$s\nDuration: %5$d/%6$d min\nVideo: %7$s\nAudio: %8$s\nVideo Decoder: %9$s\nPlayer: %10$s\nSub conf: %11$s\nSub profile: %12$s\nSub out mode: %13$s\nDRM: %14$s"

.field private static final DELAY_POST:I = 0x3e8

.field private static final DELTA:I = 0xa

.field public static final DETAILS_PLAY_CONTEXT_EXTRA_BUNDLE:Ljava/lang/String; = "VideoDetailsPlaycontextExtraBundle"

.field public static final DETAILS_VIDEO_ID_EXTRA:Ljava/lang/String; = "VideoDetailsIdExtra"

.field public static final DETAILS_VIDEO_TYPE_EXTRA:Ljava/lang/String; = "VideoDetailsTypeExtra"

.field private static final FETCH_POST_PLAY_DATA_AHEAD_VIDEO_END_MS:J = 0xea60L

.field public static final INACTIVITY_TIMEOUT:I = 0x1388

.field private static final INVALID_TRACK_INDEX:I = -0x1

.field private static final PAUSE_LOCK_SCREEN_TIMEOUT:I = 0x1d4c0

.field private static final PAUSE_TIMEOUT:J = 0xdbba0L

.field public static final SEAMLESS_MODE:Ljava/lang/String; = "SeamlessMode"

.field private static final SKIP_CREDITS_BTN_INACTIVITY_TIMEOUT:I = 0x1770

.field private static final SKIP_DELTA_MS:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "PlayerFragment"

.field public static final TRACK_ID_PREFIX_TAG:Ljava/lang/String; = "TRACK_ID: "

.field private static final VOLUME_TIMEOUT:I = 0x1f4


# instance fields
.field private final allowScreenLockTimeout:Ljava/lang/Runnable;

.field private final audioPositionListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final episodesListener:Landroid/view/View$OnClickListener;

.field exitButtonHandler:Ljava/lang/Runnable;

.field private language:Lcom/netflix/mediaclient/media/Language;

.field private mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

.field private mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

.field private final mDialogCancedledListener:Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag$DialogCanceledListener;

.field private mDurationMs:J

.field private final mEpisodeRowListener:Lcom/netflix/mediaclient/ui/details/AbsEpisodeView$EpisodeRowListener;

.field private mEpisodesFrag:Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

.field private mExternalBundle:Landroid/os/Bundle;

.field protected mHandler:Landroid/os/Handler;

.field private mIsAssetReady:Z

.field private mIsBufferingOnPause:Z

.field private mIsListening:Z

.field private mIsLoadingData:Z

.field private mIsSurfaceReady:Z

.field protected mIsTablet:Z

.field private mIsZoomedOut:Z

.field private mLanguageControlsReceiver:Lcom/netflix/mediaclient/ui/player/LanguageControlsReceiver;

.field private mLogicEndMs:J

.field private mMaxStreamsReachedDialogId:Ljava/lang/String;

.field private mMediaSessionController:Lcom/netflix/mediaclient/ui/player/PlayerMediaSessionController;

.field private final mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final mNoisyAudioStreamReceiver:Landroid/content/BroadcastReceiver;

.field private mPlaybackSeekWindowSizeMs:I

.field private mPlaybackStartHandledOnce:Z

.field private mPlaybackType:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

.field private mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

.field private mPlayerBackgrounded:Z

.field private mPlayerControlsReceiver:Lcom/netflix/mediaclient/service/player/PlayerControlsReceiver;

.field private mPlayerManifestData:Lcom/netflix/mediaclient/media/PlayerManifestData;

.field private final mPlayerSuspendIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPostPlayFetchNotified:Z

.field private mPostponedPanelMenu:Landroid/view/Menu;

.field private mResources:Lcom/netflix/mediaclient/ui/player/ResourceHelper;

.field private mRootLayout:Landroid/view/ViewGroup;

.field private mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

.field private mStartPositionMs:J

.field private final mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

.field private mSubtitleManager:Lcom/netflix/mediaclient/ui/player/subtitles/SafeSubtitleManager;

.field private final mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final onEverySecond:Ljava/lang/Runnable;

.field private orientationEventListener:Landroid/view/OrientationEventListener;

.field private pausePlaybackOnPlayerBackgrounded:Z

.field private final pauseTimeout:Ljava/lang/Runnable;

.field private final playPauseListener:Landroid/view/View$OnClickListener;

.field private playPauseListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netflix/mediaclient/ui/player/PlayPauseListener;",
            ">;"
        }
    .end annotation
.end field

.field private postPlayed:Z

.field private secondsFromStart:I

.field private final skipBackListener:Landroid/view/View$OnClickListener;

.field private staticToolbarMenu:Landroid/view/Menu;

.field private final surfaceListener:Landroid/view/SurfaceHolder$Callback;

.field private final tapListener:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;

.field private final zoomListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const-wide/16 v0, -0x1

    .line 153
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    .line 212
    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mLogicEndMs:J

    .line 213
    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mDurationMs:J

    .line 214
    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mStartPositionMs:J

    .line 223
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackSeekWindowSizeMs:I

    .line 229
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    .line 244
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    .line 253
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsZoomedOut:Z

    .line 303
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->secondsFromStart:I

    .line 314
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsLoadingData:Z

    .line 326
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->StreamingPlayback:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackType:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    .line 874
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$2;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->allowScreenLockTimeout:Ljava/lang/Runnable;

    .line 1407
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$3;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playPauseListener:Landroid/view/View$OnClickListener;

    .line 1428
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$4;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->episodesListener:Landroid/view/View$OnClickListener;

    .line 1489
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$5;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->zoomListener:Landroid/view/View$OnClickListener;

    .line 1509
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$6;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$6;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->skipBackListener:Landroid/view/View$OnClickListener;

    .line 1773
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$7;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$7;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->audioPositionListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 2159
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$9;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$9;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->tapListener:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;

    .line 2188
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$10;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$10;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->onEverySecond:Ljava/lang/Runnable;

    .line 2367
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$11;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$11;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->surfaceListener:Landroid/view/SurfaceHolder$Callback;

    .line 2453
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$12;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$12;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerSuspendIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 2466
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$13;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$13;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 2766
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$15;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$15;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->pauseTimeout:Ljava/lang/Runnable;

    .line 2853
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$16;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$16;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->exitButtonHandler:Ljava/lang/Runnable;

    .line 2922
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$17;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$17;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 2929
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$18;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$18;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mNoisyAudioStreamReceiver:Landroid/content/BroadcastReceiver;

    .line 3183
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mEpisodeRowListener:Lcom/netflix/mediaclient/ui/details/AbsEpisodeView$EpisodeRowListener;

    .line 3253
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$20;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$20;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mDialogCancedledListener:Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag$DialogCanceledListener;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->releaseLockOnScreen()V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/ui/player/PlayerFragment;ZZ)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doPause(ZZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/subtitles/SafeSubtitleManager;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSubtitleManager:Lcom/netflix/mediaclient/ui/player/subtitles/SafeSubtitleManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->keepScreenOn()V

    return-void
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/ui/player/PlayerFragment;I)I
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->toBifAjustedProgress(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setProgress()V

    return-void
.end method

.method static synthetic access$1500(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->updateMetadataIfNeeded()V

    return-void
.end method

.method static synthetic access$1600(Lcom/netflix/mediaclient/ui/player/PlayerFragment;I)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->repostOnEverySecondRunnable(I)V

    return-void
.end method

.method static synthetic access$1702(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Z)Z
    .locals 0

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsSurfaceReady:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->completeInitIfReady()V

    return-void
.end method

.method static synthetic access$1900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerBackgrounded:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Z)Z
    .locals 0

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerBackgrounded:Z

    return p1
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/servicemgr/IPlayer;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->removeDialogFragmentIfShown()V

    return-void
.end method

.method static synthetic access$2100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Z
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInteractivePostPlay()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Z
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->canPlayerBeBackgrounded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)Z
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->willstartPlaybackInAnotherActivity(Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Z)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->notifyPlayPauseToListener(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mExternalBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mExternalBundle:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->continueInitAfterPlayVerify()V

    return-void
.end method

.method static synthetic access$2700(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->handleVideoDetailsResponse(Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Z)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doPause(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/servicemgr/Asset;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    return-object v0
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/servicemgr/Asset;)Lcom/netflix/mediaclient/servicemgr/Asset;
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    return-object p1
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mEpisodesFrag:Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->showEpisodesFrag()V

    return-void
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsZoomedOut:Z

    return v0
.end method

.method static synthetic access$702(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Z)Z
    .locals 0

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsZoomedOut:Z

    return p1
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->skipBack()V

    return-void
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    return-object v0
.end method

.method private static availableInMyDownloads(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 3581
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getOfflinePlayableData(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    move-result-object v0

    .line 3582
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Complete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canPlayerBeBackgrounded()Z
    .locals 2

    .prologue
    .line 2437
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isOfflinePlayback()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    .line 2438
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->isPlayStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2439
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isStalled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isSeeking()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsBufferingOnPause:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    .line 2440
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getState()Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PostPlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInteractivePostPlay()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    .line 2441
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isDeviceLowMem()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    .line 2442
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getPlaybackConfiguration()Lcom/netflix/mediaclient/service/configuration/PlaybackConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/PlaybackConfiguration;->isSuspendPlaybackEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 2437
    :goto_0
    return v0

    .line 2442
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private completeInitIfReady()V
    .locals 2

    .prologue
    .line 691
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsSurfaceReady:Z

    if-nez v0, :cond_0

    .line 692
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Surface not ready - cannot complete init"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :goto_0
    return-void

    .line 696
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsAssetReady:Z

    if-nez v0, :cond_1

    .line 697
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Asset not ready - cannot complete init"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 701
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    if-nez v0, :cond_2

    .line 702
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Asset is null - cannot complete init"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 706
    :cond_2
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "completeInitIfReady()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->verifyPlayToContinue(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/servicemgr/Asset;)V

    goto :goto_0
.end method

.method private continueInitAfterPlayVerify()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 712
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v2, "Playback verified - completing init process..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 716
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    if-eqz v2, :cond_0

    .line 718
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getTitleForScreen(Lcom/netflix/mediaclient/servicemgr/Asset;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setTitle(Ljava/lang/String;)V

    .line 719
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->onAssetUpdated(Lcom/netflix/mediaclient/servicemgr/Asset;)V

    .line 722
    :cond_0
    if-eqz v0, :cond_4

    .line 723
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isNonMemberPlayback()Z

    move-result v0

    .line 727
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isOfflinePlayback()Z

    move-result v2

    if-nez v2, :cond_2

    .line 728
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getTopPanel()Lcom/netflix/mediaclient/ui/player/TopPanel;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/Asset;->isEpisode()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/ui/player/TopPanel;->setEpisodeSelectorVisibility(Z)V

    .line 731
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->reportCachePlayStartIfNeeded()V

    .line 733
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->videoLoaded:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->loadVideo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 734
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    .line 736
    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private createListeners()Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;
    .locals 2

    .prologue
    .line 2098
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;-><init>()V

    .line 2099
    new-instance v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->videoPositionListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 2100
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playPauseListener:Landroid/view/View$OnClickListener;

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->playPauseListener:Landroid/view/View$OnClickListener;

    .line 2101
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->surfaceListener:Landroid/view/SurfaceHolder$Callback;

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->surfaceListener:Landroid/view/SurfaceHolder$Callback;

    .line 2102
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->tapListener:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->tapListener:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;

    .line 2103
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->audioPositionListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->audioPositionListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 2104
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->skipBackListener:Landroid/view/View$OnClickListener;

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->skipBackListener:Landroid/view/View$OnClickListener;

    .line 2105
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->zoomListener:Landroid/view/View$OnClickListener;

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->zoomListener:Landroid/view/View$OnClickListener;

    .line 2106
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->episodesListener:Landroid/view/View$OnClickListener;

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->episodeSelectorListener:Landroid/view/View$OnClickListener;

    .line 2107
    return-object v0
.end method

.method public static createPlayerFragment(Lcom/netflix/mediaclient/servicemgr/Asset;)Lcom/netflix/mediaclient/ui/player/PlayerFragment;
    .locals 2

    .prologue
    .line 352
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;-><init>()V

    .line 353
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getBundle(Lcom/netflix/mediaclient/servicemgr/Asset;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 354
    return-object v0
.end method

.method public static createPlayerFragment(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;I)Lcom/netflix/mediaclient/ui/player/PlayerFragment;
    .locals 2

    .prologue
    .line 366
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;-><init>()V

    .line 367
    invoke-static {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getBundle(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;I)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 368
    return-object v0
.end method

.method private doPause(Z)V
    .locals 1

    .prologue
    .line 828
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doPause(ZZ)V

    .line 829
    return-void
.end method

.method private doPause(ZZ)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 833
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-eq v0, v1, :cond_1

    .line 834
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doPause: Invalid state, exit...:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    .line 872
    :cond_0
    :goto_0
    return-void

    .line 839
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isVolumeChangeInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 840
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "doPause: volume up or down is pressed, do not pause..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 846
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->stalled:Z

    if-eqz v0, :cond_3

    .line 847
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "doPause: player already buffering, do not pause..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 851
    :cond_3
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "doPause: paused"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    const-string/jumbo v0, "playback paused."

    invoke-static {v0}, Lcom/netflix/mediaclient/Log;->partner(Ljava/lang/String;)I

    .line 854
    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 855
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSubtitleManager:Lcom/netflix/mediaclient/ui/player/subtitles/SafeSubtitleManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/subtitles/SafeSubtitleManager;->clearPendingUpdates()V

    .line 857
    if-nez p2, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_5

    .line 858
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setMediaImage(Z)V

    .line 861
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->pause()V

    .line 862
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mMediaSessionController:Lcom/netflix/mediaclient/ui/player/PlayerMediaSessionController;

    if-eqz v0, :cond_6

    .line 863
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mMediaSessionController:Lcom/netflix/mediaclient/ui/player/PlayerMediaSessionController;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerMediaSessionController;->setMediaSessionState(I)V

    .line 865
    :cond_6
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Pause, release awake clock after 2 minutes."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->allowScreenLockTimeout:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 867
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->pauseTimeout:Ljava/lang/Runnable;

    const-wide/32 v2, 0xdbba0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 869
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "doPause() remove reporting"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    invoke-direct {p0, v4}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->notifyPlayPauseToListener(Z)V

    goto/16 :goto_0
.end method

.method private doSeek(IZ)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 928
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-eq v0, v1, :cond_1

    .line 929
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doSeek: Invalid state, exit...:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    .line 959
    :cond_0
    :goto_0
    return-void

    .line 934
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_0

    .line 935
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Playout seek..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_2

    .line 937
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->changeActionState(Z)V

    .line 939
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iput-boolean v4, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->seekToInProgress:Z

    .line 940
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->onSeek()V

    .line 944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "playback seek to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/Log;->partner(Ljava/lang/String;)I

    .line 945
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_3

    .line 946
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setMediaImage(Z)V

    .line 949
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    int-to-long v2, p1

    invoke-interface {v0, v2, v3, p2}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->seekTo(JZ)V

    .line 950
    invoke-direct {p0, v4}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->notifyPlayPauseToListener(Z)V

    .line 951
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSubtitleManager:Lcom/netflix/mediaclient/ui/player/subtitles/SafeSubtitleManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/subtitles/SafeSubtitleManager;->onSubtitleRemove()V

    .line 953
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8242;->shouldShowSkipCreditsButton(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 954
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getSkipCreditsButton()Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getSkipCreditsButton()Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;->resetSkipButton()V

    goto :goto_0
.end method

.method public static getBundle(Lcom/netflix/mediaclient/servicemgr/Asset;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 407
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 408
    const-string/jumbo v1, "AssetExtra"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 409
    return-object v0
.end method

.method public static getBundle(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 379
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getBundle(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static getBundle(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;I)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 391
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 392
    const-string/jumbo v1, "VideoDetailsIdExtra"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string/jumbo v1, "VideoDetailsTypeExtra"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string/jumbo v1, "VideoDetailsPlaycontextExtraBundle"

    invoke-interface {p2}, Lcom/netflix/mediaclient/ui/common/PlayContext;->playContextToBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 395
    const/4 v1, -0x1

    if-le p3, v1, :cond_0

    .line 396
    const-string/jumbo v1, "BookmarkSecondsFromStart"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 398
    :cond_0
    return-object v0
.end method

.method private getCurrentProfileGuidOrNull()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1347
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 1348
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfileGuidOrNull()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getOfflineErrorBuilderOrNullFromWatchState(Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const v1, 0x7f0901f8

    const v4, 0x7f0901f4

    const v2, 0x7f0901f2

    const/4 v3, -0x1

    .line 3433
    .line 3435
    sget-object v5, Lcom/netflix/mediaclient/ui/player/PlayerFragment$21;->$SwitchMap$com$netflix$mediaclient$servicemgr$interface_$offline$WatchState:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    move v1, v3

    move v2, v3

    .line 3467
    :goto_0
    if-eq v2, v3, :cond_0

    if-ne v1, v3, :cond_2

    .line 3477
    :cond_0
    :goto_1
    return-object v0

    .line 3437
    :pswitch_0
    const v2, 0x7f090210

    .line 3439
    goto :goto_0

    .line 3442
    :pswitch_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3443
    const v1, 0x7f0901e7

    move v7, v2

    move v2, v1

    move v1, v7

    goto :goto_0

    :cond_1
    move v1, v2

    move v2, v4

    .line 3447
    goto :goto_0

    :pswitch_2
    move v1, v2

    move v2, v4

    .line 3451
    goto :goto_0

    .line 3454
    :pswitch_3
    const v1, 0x7f0901f3

    move v7, v2

    move v2, v1

    move v1, v7

    .line 3455
    goto :goto_0

    .line 3458
    :pswitch_4
    const v1, 0x7f0901f9

    move v7, v2

    move v2, v1

    move v1, v7

    .line 3459
    goto :goto_0

    .line 3462
    :pswitch_5
    const v2, 0x7f0901f7

    goto :goto_0

    .line 3470
    :cond_2
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3471
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3472
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3473
    new-instance v0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    const v3, 0x7f090156

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->exitButtonHandler:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 3474
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory;->createDialog(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    move-result-object v0

    goto :goto_1

    .line 3435
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static getOfflinePlayableData(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;
    .locals 1

    .prologue
    .line 3586
    if-eqz p0, :cond_0

    .line 3587
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflinePlayableData(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    move-result-object v0

    .line 3589
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPlayLocation()Lcom/netflix/mediaclient/ui/common/PlayLocationType;
    .locals 1

    .prologue
    .line 3409
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3410
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getPlayLocation()Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    move-result-object v0

    .line 3412
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->UNKNOWN:Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    goto :goto_0
.end method

.method private getPlayerManifestData()Lcom/netflix/mediaclient/media/PlayerManifestData;
    .locals 1

    .prologue
    .line 3672
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getPlayerManifestData()Lcom/netflix/mediaclient/media/PlayerManifestData;

    move-result-object v0

    .line 3673
    :goto_0
    if-eqz v0, :cond_0

    .line 3674
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerManifestData:Lcom/netflix/mediaclient/media/PlayerManifestData;

    .line 3676
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerManifestData:Lcom/netflix/mediaclient/media/PlayerManifestData;

    return-object v0

    .line 3672
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPostPlaySafely()Lcom/netflix/mediaclient/ui/player/PostPlay;
    .locals 1

    .prologue
    .line 3288
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    .line 3289
    if-nez v0, :cond_0

    .line 3290
    const/4 v0, 0x0

    .line 3292
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getPostPlay()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    goto :goto_0
.end method

.method private handleControlButtonPress(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2655
    const/16 v2, 0x60

    if-ne p1, v2, :cond_2

    .line 2656
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 2678
    :cond_0
    :goto_0
    return v0

    .line 2659
    :cond_1
    const-string/jumbo v2, "PlayerFragment"

    const-string/jumbo v3, "A button pressed"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2660
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->showControlScreenOverlay(Z)V

    .line 2661
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playPauseListener:Landroid/view/View$OnClickListener;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    move v0, v1

    .line 2662
    goto :goto_0

    .line 2664
    :cond_2
    const/16 v2, 0x15

    if-eq p1, v2, :cond_3

    const/16 v2, 0x66

    if-ne p1, v2, :cond_4

    .line 2665
    :cond_3
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v3, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-ne v2, v3, :cond_0

    .line 2666
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->showControlScreenOverlay(Z)V

    .line 2667
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->skipBack()V

    move v0, v1

    .line 2668
    goto :goto_0

    .line 2671
    :cond_4
    const/16 v2, 0x16

    if-eq p1, v2, :cond_5

    const/16 v2, 0x67

    if-ne p1, v2, :cond_0

    .line 2672
    :cond_5
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v3, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-ne v2, v3, :cond_0

    .line 2673
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->showControlScreenOverlay(Z)V

    .line 2674
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->skipForward()V

    move v0, v1

    .line 2675
    goto :goto_0
.end method

.method private handleEveryPlaybackStart()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1160
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "handleEveryPlaybackStart."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->startScreenUpdate()V

    .line 1163
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mMediaSessionController:Lcom/netflix/mediaclient/ui/player/PlayerMediaSessionController;

    if-eqz v0, :cond_0

    .line 1164
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mMediaSessionController:Lcom/netflix/mediaclient/ui/player/PlayerMediaSessionController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerMediaSessionController;->startMediaSession()V

    .line 1167
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->stalled:Z

    if-eqz v0, :cond_1

    .line 1168
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Dismissing buffering progress bar..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iput-boolean v2, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->seekToInProgress:Z

    .line 1170
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iput-boolean v2, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->audioSeekToInProgress:Z

    .line 1171
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iput-boolean v2, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->stalled:Z

    .line 1172
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsBufferingOnPause:Z

    .line 1173
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->keepScreenOn()V

    .line 1174
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_1

    .line 1175
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->changeActionState(Z)V

    .line 1176
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setBufferingOverlayVisibility(Z)V

    .line 1177
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Remove bif image if it was visible. Only for phones!!!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsTablet:Z

    if-nez v0, :cond_1

    .line 1179
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->stopBif()V

    .line 1185
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setSeekbarTrackingEnabled(Z)V

    .line 1186
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsLoadingData:Z

    .line 1188
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isOfflinePlayback()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1189
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_2

    .line 1190
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setMediaImage(Z)V

    .line 1193
    :cond_2
    return-void
.end method

.method private handlePlaybackStartOnce()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1138
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackStartHandledOnce:Z

    .line 1140
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getCurrentPositionInMs()J

    move-result-wide v4

    long-to-int v0, v4

    .line 1141
    const-string/jumbo v3, "PlayerFragment"

    const-string/jumbo v4, "handlePlaybackStartOnce, position: %d,  duration: %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    iget-wide v6, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mDurationMs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1142
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    iget-wide v4, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mDurationMs:J

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->initProgress(I)V

    .line 1143
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    iget-wide v4, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mDurationMs:J

    long-to-int v4, v4

    invoke-virtual {v3, v0, v4, v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setProgress(IIZ)I

    .line 1145
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iput-boolean v2, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playStarted:Z

    .line 1146
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->removeSplashScreen()V

    .line 1147
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayLocation()Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    move-result-object v4

    invoke-static {v0, v3, v8, v8, v4}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportPlayActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;Lcom/netflix/mediaclient/ui/common/PlayLocationType;)V

    .line 1148
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playStartInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1152
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->shouldBeZoomed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1153
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 1154
    :goto_0
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v3, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setZoom(Z)V

    .line 1155
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-nez v0, :cond_2

    :goto_1
    invoke-virtual {v3, v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setZoomImage(Z)V

    .line 1156
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->createAdvisories()V

    .line 1157
    return-void

    :cond_1
    move v0, v1

    .line 1153
    goto :goto_0

    :cond_2
    move v2, v1

    .line 1155
    goto :goto_1
.end method

.method private handleVideoDetailsResponse(Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 3365
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsAssetReady:Z

    .line 3367
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3401
    :goto_0
    return-void

    .line 3371
    :cond_0
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_2

    .line 3372
    :cond_1
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Error loading video details for video playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3373
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090118

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3380
    :cond_2
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lcom/netflix/mediaclient/servicemgr/Asset;->create(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;Z)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    .line 3381
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->OfflinePlayback:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    if-ne p4, v0, :cond_3

    .line 3382
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentProfileGuidOrNull()Ljava/lang/String;

    move-result-object v1

    .line 3383
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    .line 3382
    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper;->getBookmark(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;

    move-result-object v0

    .line 3386
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    .line 3387
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 3388
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    iget v0, v0, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;->mBookmarkInSecond:I

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getEndtime()I

    move-result v3

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getRuntime()I

    move-result v1

    invoke-static {v0, v3, v1}, Lcom/netflix/mediaclient/util/TimeUtils;->computePlayPos(III)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->setPlaybackBookmark(I)V

    .line 3391
    :cond_3
    iput-boolean v4, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsAssetReady:Z

    .line 3393
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mExternalBundle:Landroid/os/Bundle;

    if-nez v0, :cond_5

    .line 3394
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->updateUI(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 3399
    :cond_4
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mExternalBundle:Landroid/os/Bundle;

    .line 3400
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->completeInitIfReady()V

    goto :goto_0

    .line 3395
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_4

    .line 3397
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0, p2, p4}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->onVideoDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)V

    goto :goto_1
.end method

.method private isContent16x9()Z
    .locals 4

    .prologue
    .line 3666
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayerManifestData()Lcom/netflix/mediaclient/media/PlayerManifestData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/PlayerManifestData;->getPlaybackDisplaySpec()Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;

    move-result-object v0

    iget-object v0, v0, Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;->aspectRatioDimension:Landroid/graphics/Point;

    .line 3667
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayerManifestData()Lcom/netflix/mediaclient/media/PlayerManifestData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/PlayerManifestData;->getPlaybackDisplaySpec()Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;

    move-result-object v1

    iget-object v1, v1, Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;->croppedAspectRatioDimension:Landroid/graphics/Point;

    .line 3668
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->x:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/graphics/Point;->y:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ne v2, v1, :cond_0

    iget v1, v0, Landroid/graphics/Point;->x:I

    mul-int/lit8 v1, v1, 0x9

    iget v0, v0, Landroid/graphics/Point;->y:I

    mul-int/lit8 v0, v0, 0x10

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCroppedVideoAvailable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3657
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayerManifestData()Lcom/netflix/mediaclient/media/PlayerManifestData;

    move-result-object v1

    .line 3658
    if-eqz v1, :cond_0

    .line 3659
    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/PlayerManifestData;->getPlaybackDisplaySpec()Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;

    move-result-object v1

    iget-object v1, v1, Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;->croppedAspectRatioDimension:Landroid/graphics/Point;

    .line 3660
    iget v2, v1, Landroid/graphics/Point;->x:I

    if-eqz v2, :cond_0

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 3662
    :cond_0
    return v0
.end method

.method private isInteractivePostPlay()Z
    .locals 1

    .prologue
    .line 2447
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    .line 2448
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getPostPlay()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    .line 2449
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getPostPlay()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInPostPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    .line 2450
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getPostPlay()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInteractivePostPlay:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2447
    :goto_0
    return v0

    .line 2450
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSeamless()Z
    .locals 3

    .prologue
    .line 2552
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "SeamlessMode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isVolumeChangeInProgress()Z
    .locals 4

    .prologue
    .line 1401
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-wide v2, v2, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->volumeChangeInProgress:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isZoomEnabledByPlayerType()Z
    .locals 1

    .prologue
    .line 2799
    const/4 v0, 0x1

    return v0
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 2961
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2962
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "KEEP_SCREEN: ON"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2966
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->pauseTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2967
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->allowScreenLockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2968
    return-void
.end method

.method private loadVideo()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 747
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 814
    :goto_0
    return v1

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    if-nez v0, :cond_1

    .line 752
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v2, "asset is null, this should not happen!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 756
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 757
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackType:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->OfflinePlayback:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    if-ne v2, v3, :cond_2

    .line 758
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getOfflinePlayableData(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    move-result-object v2

    .line 759
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->willPlayOffline(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 760
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v2, "continue with offline player"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isOfflinePlayback()Z

    move-result v0

    if-nez v0, :cond_4

    .line 773
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v2, "Raising no connectivity warning"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->noConnectivityWarning()V

    goto :goto_0

    .line 762
    :cond_3
    const-string/jumbo v2, "PlayerFragment"

    const-string/jumbo v3, "switching to streaming player"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->StreamingPlayback:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    iput-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackType:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    .line 764
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v2, p0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->removePlayerListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;)V

    .line 765
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->close()V

    .line 766
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackType:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getPlayer(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    .line 767
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    if-eqz v0, :cond_2

    .line 768
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->addPlayerListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;)V

    goto :goto_1

    .line 782
    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->handleConnectivityCheck()Z

    move-result v0

    if-nez v0, :cond_5

    .line 784
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v2, "Network check fails"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 788
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iput-boolean v6, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->videoLoaded:Z

    .line 791
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->secondsFromStart:I

    if-le v0, v4, :cond_8

    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->secondsFromStart:I

    .line 793
    :goto_2
    iput v4, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->secondsFromStart:I

    .line 794
    mul-int/lit16 v2, v0, 0x3e8

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mStartPositionMs:J

    .line 795
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/Asset;->getDuration()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mDurationMs:J

    .line 796
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/Asset;->getEndtime()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mLogicEndMs:J

    .line 798
    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mLogicEndMs:J

    iget-wide v4, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mDurationMs:J

    const-wide/16 v8, 0x2

    div-long/2addr v4, v8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_6

    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mLogicEndMs:J

    iget-wide v4, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mDurationMs:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_7

    .line 799
    :cond_6
    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mDurationMs:J

    iput-wide v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mLogicEndMs:J

    .line 806
    :cond_7
    if-gez v0, :cond_9

    .line 807
    const-string/jumbo v0, "PlayerFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Invalid bookmark, reset to 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v1

    .line 810
    :goto_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->toLongSafe(Ljava/lang/String;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->openPlaybackSessionAndPlay(JLcom/netflix/mediaclient/ui/common/PlayContext;J)Ljava/lang/String;

    .line 811
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->setSurface(Landroid/view/Surface;)V

    .line 813
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->notifyOthersOfPlayStart()V

    move v1, v6

    .line 814
    goto/16 :goto_0

    .line 791
    :cond_8
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlaybackBookmark()I

    move-result v0

    goto/16 :goto_2

    :cond_9
    move v4, v0

    goto :goto_3
.end method

.method private noConnectivityWarning()V
    .locals 5

    .prologue
    .line 2880
    const v0, 0x7f0901a8

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2881
    new-instance v1, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    const/4 v2, 0x0

    const v3, 0x7f090156

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->exitButtonHandler:Ljava/lang/Runnable;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 2882
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v2, v1}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory;->createDialog(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    move-result-object v0

    .line 2883
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;)Landroid/app/Dialog;

    .line 2884
    return-void
.end method

.method private nonWifiPlayWarning()V
    .locals 5

    .prologue
    .line 2865
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 2866
    const v0, 0x7f09014c

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2867
    new-instance v1, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    const/4 v2, 0x0

    const v3, 0x7f090156

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->exitButtonHandler:Ljava/lang/Runnable;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 2868
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v2, v1}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory;->createDialog(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    move-result-object v0

    .line 2869
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;)Landroid/app/Dialog;

    .line 2870
    return-void
.end method

.method private notifyPlayPauseToListener(Z)V
    .locals 4

    .prologue
    .line 3537
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playPauseListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playPauseListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3546
    :cond_0
    return-void

    .line 3541
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playPauseListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/player/PlayPauseListener;

    .line 3542
    if-eqz v0, :cond_2

    .line 3543
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getCurrentPositionInMs()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v0, p1, v2}, Lcom/netflix/mediaclient/ui/player/PlayPauseListener;->onPlaybackPaused(ZI)V

    goto :goto_0
.end method

.method private onSeek()V
    .locals 2

    .prologue
    .line 2538
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 2539
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "onSeek"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2540
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->showLoading()V

    .line 2541
    return-void
.end method

.method private registerLanguageControlsReceivers()V
    .locals 0

    .prologue
    .line 2035
    return-void
.end method

.method private registerPlayerControlsReceivers()V
    .locals 0

    .prologue
    .line 2024
    return-void
.end method

.method private registerReceivers()V
    .locals 4

    .prologue
    .line 1976
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1977
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerSuspendIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->getNotificationIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1979
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mNoisyAudioStreamReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1980
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1981
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setupTiltDetection()V

    .line 1982
    return-void
.end method

.method private releaseLockOnScreen()V
    .locals 2

    .prologue
    .line 2974
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2975
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "KEEP_SCREEN: OFF"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2976
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2978
    :cond_0
    return-void
.end method

.method private removeDialogFragmentIfShown()V
    .locals 1

    .prologue
    .line 3248
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isDialogFragmentVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3249
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeDialogFrag()V

    .line 3251
    :cond_0
    return-void
.end method

.method private reportCachePlayEndedIfNeeded(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3610
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isOfflinePlayback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3612
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1, p1, v1}, Lcom/netflix/mediaclient/util/log/OfflineLogUtils;->reportCachedPlayEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 3614
    :cond_0
    return-void
.end method

.method private reportCachePlayStartIfNeeded()V
    .locals 6

    .prologue
    .line 3594
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isOfflinePlayback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3596
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    .line 3597
    if-nez v5, :cond_1

    .line 3606
    :cond_0
    :goto_0
    return-void

    .line 3601
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v5}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getOfflinePlayableData(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    move-result-object v2

    .line 3602
    if-eqz v2, :cond_0

    .line 3603
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getOxId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lcom/netflix/mediaclient/servicemgr/Asset;->getDuration()I

    move-result v3

    invoke-virtual {v5}, Lcom/netflix/mediaclient/servicemgr/Asset;->getLogicalStart()I

    move-result v4

    invoke-virtual {v5}, Lcom/netflix/mediaclient/servicemgr/Asset;->getEndtime()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/util/log/OfflineLogUtils;->reportCachedPlayStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)V

    goto :goto_0
.end method

.method private repostOnEverySecondRunnable(I)V
    .locals 4

    .prologue
    .line 2244
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->onEverySecond:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2245
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->onEverySecond:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2246
    return-void
.end method

.method private requestDetailsIfNeededOffline(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 4

    .prologue
    .line 2091
    const-string/jumbo v0, "VideoDetailsPlaycontextExtraBundle"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->createPlayContextFromBundle(Landroid/os/Bundle;)Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v1

    .line 2092
    invoke-static {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->getOfflineVideoDetails(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    move-result-object v2

    .line 2093
    if-eqz v2, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    :goto_0
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->OfflinePlayback:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->handleVideoDetailsResponse(Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)V

    .line 2094
    const/4 v0, 0x1

    return v0

    .line 2093
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->INT_ERR_REALM_DETAILS_NULL:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    goto :goto_0
.end method

.method private requestDetailsIfNeededStreaming(Ljava/lang/String;Landroid/os/Bundle;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    .line 2065
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2066
    const-string/jumbo v1, "PlayerFragment"

    const-string/jumbo v2, "Intent has EXTRA_GET_DETAILS_VIDEO_ID - fetching details..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    const-string/jumbo v1, "VideoDetailsTypeExtra"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    .line 2068
    const-string/jumbo v2, "VideoDetailsPlaycontextExtraBundle"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->createPlayContextFromBundle(Landroid/os/Bundle;)Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v2

    .line 2069
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v3, :cond_0

    .line 2070
    invoke-virtual {p3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v1

    new-instance v3, Lcom/netflix/mediaclient/ui/player/PlayerFragment$FetchVideoDetailsForPlaybackCallback;

    invoke-direct {v3, p0, v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$FetchVideoDetailsForPlaybackCallback;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    invoke-interface {v1, p1, v5, v3}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 2085
    :goto_0
    return v0

    .line 2072
    :cond_0
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v3, :cond_1

    .line 2073
    invoke-virtual {p3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldLoadKubrickLeavesInDetails()Z

    move-result v3

    new-instance v4, Lcom/netflix/mediaclient/ui/player/PlayerFragment$FetchVideoDetailsForPlaybackCallback;

    invoke-direct {v4, p0, v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$FetchVideoDetailsForPlaybackCallback;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    invoke-interface {v1, p1, v5, v3, v4}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchShowDetails(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0

    .line 2076
    :cond_1
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v3, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2077
    invoke-virtual {p3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v1

    new-instance v3, Lcom/netflix/mediaclient/ui/player/PlayerFragment$FetchVideoDetailsForPlaybackCallback;

    invoke-direct {v3, p0, v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$FetchVideoDetailsForPlaybackCallback;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    invoke-interface {v1, p1, v5, v3}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchEpisodeDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0

    .line 2080
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid billboard video type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2083
    :cond_3
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsAssetReady:Z

    .line 2084
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Regular playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCroppedSize(II)V
    .locals 1

    .prologue
    .line 2507
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2508
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getSurfaceView()Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setCroppedVideoWidth(I)V

    .line 2509
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getSurfaceView()Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setCroppedVideoHeight(I)V

    .line 2511
    :cond_0
    return-void
.end method

.method private setFragmentContentView(I)V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 468
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "setFragmentContentView"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 470
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 472
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 473
    return-void
.end method

.method private setLanguage(Lcom/netflix/mediaclient/media/Language;)V
    .locals 2

    .prologue
    .line 2515
    if-nez p1, :cond_0

    .line 2516
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Language is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2524
    :goto_0
    return-void

    .line 2520
    :cond_0
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Sets language"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->language:Lcom/netflix/mediaclient/media/Language;

    .line 2523
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->onLanguageUpdated(Lcom/netflix/mediaclient/media/Language;)V

    goto :goto_0
.end method

.method private setProgress()V
    .locals 4

    .prologue
    .line 2338
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayerManifestData()Lcom/netflix/mediaclient/media/PlayerManifestData;

    move-result-object v0

    .line 2339
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-boolean v1, v1, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->draggingInProgress:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    .line 2362
    :cond_0
    :goto_0
    return-void

    .line 2349
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getCurrentPositionInMs()J

    move-result-wide v2

    long-to-int v1, v2

    .line 2350
    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/PlayerManifestData;->getDuration()J

    move-result-wide v2

    long-to-int v0, v2

    .line 2352
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2356
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setProgress(IIZ)I

    goto :goto_0
.end method

.method private setSurface(II)V
    .locals 1

    .prologue
    .line 2499
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getSurfaceView()Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2504
    :goto_0
    return-void

    .line 2502
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getSurfaceView()Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setVideoWidth(I)V

    .line 2503
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getSurfaceView()Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setVideoHeight(I)V

    goto :goto_0
.end method

.method private setupTiltDetection()V
    .locals 2

    .prologue
    .line 1988
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$8;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$8;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->orientationEventListener:Landroid/view/OrientationEventListener;

    .line 2010
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 2011
    return-void
.end method

.method private shouldBeZoomed()Z
    .locals 1

    .prologue
    .line 3652
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isDeviceWithHigherAspectRatio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3653
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isCroppedVideoAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isContent16x9()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 3652
    :goto_0
    return v0

    .line 3653
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldNotifyPostPlayToFetch(J)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 3642
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPostPlayFetchNotified:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3644
    const-wide/32 v2, 0xea60

    add-long/2addr v2, p1

    iget-wide v4, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mLogicEndMs:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    .line 3648
    :cond_0
    return v0
.end method

.method private showEpisodesFrag()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1463
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    .line 1465
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1484
    :cond_0
    :goto_0
    return-void

    .line 1469
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mEpisodesFrag:Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    if-nez v0, :cond_2

    .line 1470
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper;->isInTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1471
    invoke-static {v3}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->create(Z)Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    move-result-object v0

    .line 1472
    :goto_1
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mEpisodesFrag:Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    .line 1473
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mEpisodesFrag:Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1474
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mEpisodesFrag:Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->setCancelable(Z)V

    .line 1475
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mEpisodesFrag:Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    const v2, 0x7f0b0116

    invoke-virtual {v0, v4, v2}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->setStyle(II)V

    .line 1478
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mEpisodesFrag:Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    if-eqz v0, :cond_3

    .line 1479
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mEpisodesFrag:Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    check-cast v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/Asset;->getParentId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->addEpisodeArguments(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->notifyOthersOfPlayStop()V

    .line 1483
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mEpisodesFrag:Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showDialog(Landroid/app/DialogFragment;)Z

    goto :goto_0

    .line 1471
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    .line 1472
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->getParentId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->createEpisodes(Ljava/lang/String;Ljava/lang/String;Z)Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    move-result-object v0

    goto :goto_1
.end method

.method private showLoading()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2544
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iput-boolean v1, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->stalled:Z

    .line 2546
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isOfflinePlayback()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2547
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setBufferingOverlayVisibility(Z)V

    .line 2549
    :cond_0
    return-void
.end method

.method private skip(I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1529
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->setLastActionTime(J)V

    .line 1530
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->userInteraction()V

    .line 1531
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getCurrentPositionInMs()J

    move-result-wide v2

    long-to-int v0, v2

    add-int/2addr v0, p1

    .line 1532
    if-gez v0, :cond_0

    .line 1533
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v2, "Go back to start, instead of trying to go minus!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1536
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doSeek(IZ)V

    .line 1537
    return-void
.end method

.method private skipBack()V
    .locals 1

    .prologue
    .line 1518
    const/16 v0, -0x7530

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->skip(I)V

    .line 1519
    return-void
.end method

.method private skipForward()V
    .locals 1

    .prologue
    .line 1522
    const/16 v0, 0x7530

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->skip(I)V

    .line 1523
    return-void
.end method

.method private slowNetworkWarning()V
    .locals 5

    .prologue
    .line 2873
    const v0, 0x7f09019f

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2874
    new-instance v1, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    const/4 v2, 0x0

    const v3, 0x7f090156

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->exitButtonHandler:Ljava/lang/Runnable;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 2875
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v2, v1}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory;->createDialog(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    move-result-object v0

    .line 2876
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;)Landroid/app/Dialog;

    .line 2877
    return-void
.end method

.method private startScreenUpdate()V
    .locals 4

    .prologue
    .line 2527
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2529
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->setLastActionTime(J)V

    .line 2530
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->startScreenUpdateTask()V

    .line 2532
    :cond_0
    return-void
.end method

.method private stopPlayback()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1310
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "stopPlayback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_SRVCMNGR_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-ne v0, v1, :cond_1

    .line 1313
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->close()V

    .line 1314
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsListening:Z

    .line 1315
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->removePlayerListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;)V

    .line 1316
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_NOTREADY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    .line 1317
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->enableButtons(Z)V

    .line 1319
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    if-eqz v0, :cond_1

    .line 1320
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->notifyOthersOfPlayStop()V

    .line 1323
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    .line 1324
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsAssetReady:Z

    .line 1325
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mMediaSessionController:Lcom/netflix/mediaclient/ui/player/PlayerMediaSessionController;

    if-eqz v0, :cond_2

    .line 1326
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mMediaSessionController:Lcom/netflix/mediaclient/ui/player/PlayerMediaSessionController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerMediaSessionController;->stopMediaSession()V

    .line 1328
    :cond_2
    return-void
.end method

.method private toBifAjustedProgress(I)I
    .locals 1

    .prologue
    .line 1755
    div-int/lit16 v0, p1, 0x2710

    .line 1756
    mul-int/lit16 v0, v0, 0x2710

    .line 1758
    if-ne v0, p1, :cond_0

    .line 1767
    :cond_0
    return v0
.end method

.method private toLong(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 2139
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private toLongSafe(Ljava/lang/String;)J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 2119
    if-nez p1, :cond_1

    .line 2135
    :cond_0
    :goto_0
    return-wide v0

    .line 2122
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2123
    const-string/jumbo v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2130
    :try_start_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->toLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 2131
    :catch_0
    move-exception v2

    .line 2132
    const-string/jumbo v3, "PlayerFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Got exception inside toLongSafe: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private tryFinishActivity()V
    .locals 2

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 532
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 533
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 535
    :cond_0
    return-void
.end method

.method private updateAssetWithCurrentPlayPosition()V
    .locals 6

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    if-eqz v0, :cond_0

    .line 1197
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getCurrentPositionInMs()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/Asset;->setPlaybackBookmark(I)V

    .line 1199
    :cond_0
    return-void
.end method

.method private updateMetadataIfNeeded()V
    .locals 18

    .prologue
    .line 2252
    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "ui.playeroverlay"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 2253
    if-nez v2, :cond_1

    .line 2254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setDebugDataVisibility(Z)V

    .line 2331
    :cond_0
    :goto_0
    return-void

    .line 2257
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setDebugDataVisibility(Z)V

    .line 2260
    const/4 v6, 0x0

    .line 2261
    const/4 v5, 0x0

    .line 2262
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2263
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2264
    const-string/jumbo v2, "N/A"

    .line 2265
    const-string/jumbo v4, "N/A"

    .line 2266
    const-string/jumbo v3, "N/A"

    .line 2267
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    if-eqz v9, :cond_0

    .line 2268
    const-string/jumbo v9, "Release"

    .line 2269
    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 2270
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v12

    const-wide/32 v14, 0x100000

    div-long/2addr v12, v14

    long-to-int v11, v12

    .line 2272
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v12}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getPlayoutMetadata()Lcom/netflix/mediaclient/media/PlayoutMetadata;

    move-result-object v12

    .line 2273
    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isOfflinePlayback()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 2274
    if-eqz v12, :cond_9

    .line 2275
    const v2, 0x7f0900f6

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v9, v3, v4

    const/4 v4, 0x1

    aput-object v10, v3, v4

    const/4 v4, 0x2

    .line 2278
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, v12, Lcom/netflix/mediaclient/media/PlayoutMetadata;->instantBitRate:I

    .line 2279
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, v12, Lcom/netflix/mediaclient/media/PlayoutMetadata;->mVideoResolution:Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-object v5, v12, Lcom/netflix/mediaclient/media/PlayoutMetadata;->mVideoResolution:Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    iget-object v5, v12, Lcom/netflix/mediaclient/media/PlayoutMetadata;->mVideoDecoderName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string/jumbo v5, "Offline"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    .line 2283
    invoke-static {}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->getDrmInfo()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2275
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2327
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v3, :cond_0

    .line 2328
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v3, v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setDebugData(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2286
    :cond_3
    const/4 v3, 0x0

    .line 2287
    if-eqz v12, :cond_8

    .line 2288
    iget-object v3, v12, Lcom/netflix/mediaclient/media/PlayoutMetadata;->mVideoDecoderName:Ljava/lang/String;

    .line 2289
    iget v5, v12, Lcom/netflix/mediaclient/media/PlayoutMetadata;->position:I

    const v6, 0xea60

    div-int v6, v5, v6

    .line 2290
    iget v5, v12, Lcom/netflix/mediaclient/media/PlayoutMetadata;->duration:I

    const v13, 0xea60

    div-int/2addr v5, v13

    .line 2291
    iget v13, v12, Lcom/netflix/mediaclient/media/PlayoutMetadata;->instantBitRate:I

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2292
    iget v13, v12, Lcom/netflix/mediaclient/media/PlayoutMetadata;->targetBitRate:I

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2293
    iget-boolean v13, v12, Lcom/netflix/mediaclient/media/PlayoutMetadata;->isSuperHD:Z

    if-eqz v13, :cond_5

    .line 2294
    const v13, 0x7f0901ab

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2303
    :goto_2
    iget-object v13, v12, Lcom/netflix/mediaclient/media/PlayoutMetadata;->language:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2304
    invoke-virtual {v12}, Lcom/netflix/mediaclient/media/PlayoutMetadata;->getAudioChannel()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2305
    invoke-virtual {v12}, Lcom/netflix/mediaclient/media/PlayoutMetadata;->getAudioTrackType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2307
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v13}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getSubtitleConfiguration()Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    move-result-object v13

    .line 2308
    if-eqz v13, :cond_4

    .line 2309
    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->getString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 2311
    :cond_4
    const-string/jumbo v13, "PlayerFragment"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Subtitle config: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v13}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getSubtitleProfileFromMetadata()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    move-result-object v13

    .line 2313
    if-eqz v13, :cond_7

    .line 2314
    invoke-virtual {v13}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->getNccpCode()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v17, v3

    move-object v3, v4

    move-object v4, v2

    move-object/from16 v2, v17

    .line 2317
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSubtitleManager:Lcom/netflix/mediaclient/ui/player/subtitles/SafeSubtitleManager;

    invoke-static {v13}, Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManagerFactory;->getSubtitleManagerLabel(Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;)Ljava/lang/String;

    move-result-object v13

    .line 2318
    const-string/jumbo v14, "App build: %1$s %2$s\nMem used: %3$d MB\nUI build: %4$s\nDuration: %5$d/%6$d min\nVideo: %7$s\nAudio: %8$s\nVideo Decoder: %9$s\nPlayer: %10$s\nSub conf: %11$s\nSub profile: %12$s\nSub out mode: %13$s\nDRM: %14$s"

    const/16 v15, 0xe

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v9, v15, v16

    const/4 v9, 0x1

    aput-object v10, v15, v9

    const/4 v9, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v15, v9

    const/4 v9, 0x3

    const-string/jumbo v10, "UI Version"

    aput-object v10, v15, v9

    const/4 v9, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v15, v9

    const/4 v6, 0x5

    .line 2319
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v15, v6

    const/4 v5, 0x6

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v15, v5

    const/4 v5, 0x7

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v15, v5

    const/16 v5, 0x8

    aput-object v2, v15, v5

    const/16 v2, 0x9

    const-string/jumbo v5, "JPLAYER2"

    aput-object v5, v15, v2

    const/16 v2, 0xa

    aput-object v4, v15, v2

    const/16 v2, 0xb

    aput-object v3, v15, v2

    const/16 v2, 0xc

    aput-object v13, v15, v2

    const/16 v2, 0xd

    invoke-static {}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->getDrmInfo()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v15, v2

    .line 2318
    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2321
    if-eqz v12, :cond_2

    .line 2322
    invoke-virtual {v12}, Lcom/netflix/mediaclient/media/PlayoutMetadata;->getStreamingStat()Ljava/lang/String;

    move-result-object v3

    .line 2323
    if-eqz v3, :cond_2

    .line 2324
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 2296
    :cond_5
    iget-boolean v13, v12, Lcom/netflix/mediaclient/media/PlayoutMetadata;->isHD:Z

    if-eqz v13, :cond_6

    .line 2297
    const v13, 0x7f09011e

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 2299
    :cond_6
    const v13, 0x7f09018a

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_7
    move-object/from16 v17, v3

    move-object v3, v4

    move-object v4, v2

    move-object/from16 v2, v17

    goto/16 :goto_3

    :cond_8
    move-object/from16 v17, v3

    move-object v3, v4

    move-object v4, v2

    move-object/from16 v2, v17

    goto/16 :goto_3

    :cond_9
    move-object v2, v3

    goto/16 :goto_1
.end method

.method private updateUI(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1892
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateUI, details: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    .line 1895
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1896
    :cond_0
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Wrong activity state, finishing activity "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->tryFinishActivity()V

    .line 1973
    :goto_0
    return-void

    .line 1901
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/ui/player/PostPlay;->getPostPlayType(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;)Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    move-result-object v2

    .line 1902
    invoke-static {v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->resolveContentView(Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;)I

    move-result v0

    .line 1903
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setFragmentContentView(I)V

    .line 1906
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mRootLayout:Landroid/view/ViewGroup;

    const v3, 0x7f1002c5

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 1907
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v3

    iput-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->staticToolbarMenu:Landroid/view/Menu;

    .line 1908
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 1910
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getOfflinePlayableData(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    move-result-object v0

    .line 1911
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->willPlayOffline(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1912
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->OfflinePlayback:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    iput-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackType:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    .line 1913
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getWatchState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getOfflineErrorBuilderOrNullFromWatchState(Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    move-result-object v0

    .line 1914
    if-eqz v0, :cond_3

    .line 1915
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;)Landroid/app/Dialog;

    goto :goto_0

    .line 1919
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->StreamingPlayback:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackType:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    .line 1922
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackType:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getPlayer(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    .line 1923
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    .line 1924
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    if-nez v0, :cond_5

    .line 1925
    :cond_4
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Unable to receive handle to player object, finishing activity "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->tryFinishActivity()V

    goto :goto_0

    .line 1934
    :cond_5
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->cancelAllImageLoaderRequests()Z

    .line 1936
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->isInTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1937
    invoke-static {v1}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->cancelPrefetchDPRequests(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    .line 1940
    :cond_6
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->createListeners()Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;

    move-result-object v0

    .line 1941
    invoke-static {p0, v0, v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->createInstance(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    .line 1942
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "ui.playergraphicref"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 1943
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setDebugGraphicOverlayVisibility(Z)V

    .line 1944
    if-eqz p1, :cond_7

    .line 1945
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackType:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    invoke-virtual {v0, p1, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->onVideoDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)V

    .line 1948
    :cond_7
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isSeamless()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1949
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->startSeamlessMode()V

    .line 1952
    :cond_8
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isSeamless()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1953
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->startSeamlessMode()V

    .line 1956
    :cond_9
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->addPlayerListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;)V

    .line 1957
    iput-boolean v4, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsListening:Z

    .line 1960
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPostponedPanelMenu:Landroid/view/Menu;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInPortrait()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1961
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPostponedPanelMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 1962
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getTopPanel()Lcom/netflix/mediaclient/ui/player/TopPanel;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPostponedPanelMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/TopPanel;->onCreateOptionsMenu(Landroid/view/Menu;)V

    .line 1963
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1967
    :cond_a
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getSurfaceView()Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setSecure(Z)V

    .line 1968
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setTargetSelection()V

    .line 1969
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->registerReceivers()V

    .line 1970
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->registerPlayerControlsReceivers()V

    .line 1971
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->registerLanguageControlsReceivers()V

    .line 1972
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_SRVCMNGR_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    goto/16 :goto_0
.end method

.method private static verifyPlayToContinue(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/servicemgr/Asset;)V
    .locals 5

    .prologue
    .line 3305
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isAgeProtected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isPinVerified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3306
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "nf_pin PlayerActivity pinVerification skipped - ageProtected: %b, pinVerified:%b, pinProtected:%b"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 3307
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isAgeProtected()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isPinVerified()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isPinProtected()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 3306
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3309
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->continueInitAfterPlayVerify()V

    .line 3315
    :goto_0
    return-void

    .line 3312
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    sget-object v1, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->PLAYER:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/Asset;)V

    .line 3313
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isAgeProtected()Z

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier;->verifyAgeAndPinToPlay(Lcom/netflix/mediaclient/android/activity/NetflixActivity;ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)V

    goto :goto_0
.end method

.method private willstartPlaybackInAnotherActivity(Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)Z
    .locals 3

    .prologue
    .line 3617
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "playableId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3618
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 3619
    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getOfflinePlayableData(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    move-result-object v1

    .line 3620
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->willPlayOffline(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3621
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Complete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_0

    .line 3622
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->stopPlayback()V

    .line 3623
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->tryFinishActivity()V

    .line 3625
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-static {v0, p1, v1, p2}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->createColdStartIntent(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/common/PlayContext;)Landroid/content/Intent;

    move-result-object v0

    .line 3626
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->startActivity(Landroid/content/Intent;)V

    .line 3627
    const/4 v0, 0x1

    .line 3630
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addPlayPauseListener(Lcom/netflix/mediaclient/ui/player/PlayPauseListener;)V
    .locals 1

    .prologue
    .line 3497
    if-nez p1, :cond_0

    .line 3507
    :goto_0
    return-void

    .line 3501
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playPauseListenerList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 3502
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playPauseListenerList:Ljava/util/ArrayList;

    .line 3505
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playPauseListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public changeLanguage(Lcom/netflix/mediaclient/media/Language;Z)V
    .locals 4

    .prologue
    .line 2733
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 2734
    if-eqz p1, :cond_1

    .line 2735
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setLanguage(Lcom/netflix/mediaclient/media/Language;)V

    .line 2736
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getSelectedAudio()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getSelectedSubtitle()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->selectTracks(Lcom/netflix/mediaclient/media/AudioSource;Lcom/netflix/mediaclient/media/Subtitle;Z)Z

    .line 2737
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getSelectedSubtitle()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2738
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Disable subtitles, none is selected"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2739
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSubtitleManager:Lcom/netflix/mediaclient/ui/player/subtitles/SafeSubtitleManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/subtitles/SafeSubtitleManager;->clear()V

    .line 2741
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->commit()V

    .line 2742
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isOfflinePlayback()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2743
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Starting playback by seek with forceRebuffer to current position"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2744
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->onStalled()V

    .line 2747
    :cond_1
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Language change should be completed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    return-void
.end method

.method protected cleanup()V
    .locals 2

    .prologue
    .line 1272
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerBackgrounded:Z

    if-eqz v0, :cond_0

    .line 1273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerBackgrounded:Z

    .line 1275
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-ne v0, v1, :cond_1

    .line 1276
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->stopPlayback()V

    .line 1279
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->stopScreenUpdateTask()V

    .line 1280
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_NOTREADY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    .line 1281
    return-void
.end method

.method public cleanupAndExit()V
    .locals 2

    .prologue
    .line 1284
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "cleanupAndExit"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->reportCachePlayEndedIfNeeded(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 1294
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanup()V

    .line 1297
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "cleanupAndExit calling finish"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1300
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->tryFinishActivity()V

    .line 1302
    :cond_0
    return-void
.end method

.method public clearPanel()V
    .locals 4

    .prologue
    .line 2146
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-nez v0, :cond_0

    .line 2147
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Screen was not yet initialized - no need to clear the panel."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    :goto_0
    return-void

    .line 2151
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getState()Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PostPlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne v0, v1, :cond_1

    .line 2152
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "When in post play do NOT clear panel."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2155
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->setLastActionTime(J)V

    .line 2156
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->clearPanel()V

    goto :goto_0
.end method

.method createMdxTargetSelection([Landroid/util/Pair;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;"
        }
    .end annotation

    .prologue
    .line 2850
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getPlaybackConfiguration()Lcom/netflix/mediaclient/service/configuration/PlaybackConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/configuration/PlaybackConfiguration;->isLocalPlaybackEnabled()Z

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;-><init>([Landroid/util/Pair;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public doPause()V
    .locals 1

    .prologue
    .line 824
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doPause(Z)V

    .line 825
    return-void
.end method

.method public doSeek(I)V
    .locals 1

    .prologue
    .line 923
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doSeek(IZ)V

    .line 924
    return-void
.end method

.method public doUnpause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 884
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-eq v0, v1, :cond_1

    .line 885
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doUnpause: Invalid state, exit...:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    .line 917
    :cond_0
    :goto_0
    return-void

    .line 890
    :cond_1
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "doUnpause: resume"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    const-string/jumbo v0, "playback resumed"

    invoke-static {v0}, Lcom/netflix/mediaclient/Log;->partner(Ljava/lang/String;)I

    .line 893
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_2

    .line 895
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setMediaImage(Z)V

    .line 898
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->keepScreenOn()V

    .line 899
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerBackgrounded:Z

    if-eqz v0, :cond_4

    .line 900
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->setLastActionTime(J)V

    .line 901
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->userInteraction()V

    .line 902
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSubtitleManager:Lcom/netflix/mediaclient/ui/player/subtitles/SafeSubtitleManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/subtitles/SafeSubtitleManager;->onSubtitleRemove()V

    .line 903
    iput-boolean v4, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerBackgrounded:Z

    .line 904
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->pausePlaybackOnPlayerBackgrounded:Z

    if-eqz v0, :cond_3

    .line 905
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Pause playback is true, so not resuming playback from player backgrounded case."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 908
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    const/16 v1, -0x1388

    const/16 v2, 0x1388

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->seekWithFuzzRange(II)V

    goto :goto_0

    .line 910
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->unpause()V

    .line 911
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mMediaSessionController:Lcom/netflix/mediaclient/ui/player/PlayerMediaSessionController;

    if-eqz v0, :cond_5

    .line 912
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mMediaSessionController:Lcom/netflix/mediaclient/ui/player/PlayerMediaSessionController;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerMediaSessionController;->setMediaSessionState(I)V

    .line 914
    :cond_5
    invoke-direct {p0, v4}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->notifyPlayPauseToListener(Z)V

    goto :goto_0
.end method

.method public doZoomIn()V
    .locals 3

    .prologue
    .line 985
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-eq v0, v1, :cond_1

    .line 986
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doZoomIn: Invalid state, exit...:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    .line 998
    :cond_0
    :goto_0
    return-void

    .line 991
    :cond_1
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "doZoomOut: start"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    .line 994
    if-eqz v0, :cond_0

    .line 995
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setZoom(Z)V

    .line 996
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setZoomImage(Z)V

    goto :goto_0
.end method

.method public doZoomOut()V
    .locals 3

    .prologue
    .line 966
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-eq v0, v1, :cond_1

    .line 967
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doZoomIn: Invalid state, exit...:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    .line 979
    :cond_0
    :goto_0
    return-void

    .line 972
    :cond_1
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "doZoomIn: start"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    .line 975
    if-eqz v0, :cond_0

    .line 976
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setZoom(Z)V

    .line 977
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setZoomImage(Z)V

    goto :goto_0
.end method

.method public extendTimeoutTimer()V
    .locals 4

    .prologue
    .line 2790
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->setLastActionTime(J)V

    .line 2791
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->userInteraction()V

    .line 2792
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 668
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 672
    :cond_0
    return-void
.end method

.method public getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;
    .locals 1

    .prologue
    .line 2495
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    return-object v0
.end method

.method public getDialogCanceledListener()Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag$DialogCanceledListener;
    .locals 1

    .prologue
    .line 3274
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mDialogCancedledListener:Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag$DialogCanceledListener;

    return-object v0
.end method

.method public getEpisodeRowListener()Lcom/netflix/mediaclient/ui/details/AbsEpisodeView$EpisodeRowListener;
    .locals 1

    .prologue
    .line 3180
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mEpisodeRowListener:Lcom/netflix/mediaclient/ui/details/AbsEpisodeView$EpisodeRowListener;

    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 3088
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getLanguage()Lcom/netflix/mediaclient/media/Language;
    .locals 1

    .prologue
    .line 3043
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->language:Lcom/netflix/mediaclient/media/Language;

    return-object v0
.end method

.method public getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;
    .locals 1

    .prologue
    .line 3405
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    return-object v0
.end method

.method public getPlayPauseListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playPauseListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getPlaybackSeekWindowSizeMs()I
    .locals 1

    .prologue
    .line 3680
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackSeekWindowSizeMs:I

    return v0
.end method

.method public getPlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    return-object v0
.end method

.method public getScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;
    .locals 1

    .prologue
    .line 2729
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    return-object v0
.end method

.method public getState()Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;
    .locals 1

    .prologue
    .line 2758
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    return-object v0
.end method

.method getSubtitleManager()Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;
    .locals 1

    .prologue
    .line 3416
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSubtitleManager:Lcom/netflix/mediaclient/ui/player/subtitles/SafeSubtitleManager;

    return-object v0
.end method

.method public getTitleForScreen(Lcom/netflix/mediaclient/servicemgr/Asset;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2480
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getParentTitle()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->FORCED_RTL:Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->prependBidiMarkerIfRtl(Ljava/lang/String;Lcom/netflix/mediaclient/util/l10n/BidiMarker;)Ljava/lang/String;

    move-result-object v1

    .line 2481
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getTitle()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->FORCED_RTL:Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->prependBidiMarkerIfRtl(Ljava/lang/String;Lcom/netflix/mediaclient/util/l10n/BidiMarker;)Ljava/lang/String;

    move-result-object v2

    .line 2482
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isEpisode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2483
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090274

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v6

    .line 2484
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getSeasonAbbrSeqLabel()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getEpisodeNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x3

    aput-object v2, v4, v5

    .line 2483
    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2485
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isNSRE()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2486
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090275

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v6

    aput-object v2, v4, v7

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2491
    :cond_0
    :goto_0
    return-object v0

    .line 2489
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090276

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v6

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUiResources()Lcom/netflix/mediaclient/ui/player/ResourceHelper;
    .locals 1

    .prologue
    .line 2808
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mResources:Lcom/netflix/mediaclient/ui/player/ResourceHelper;

    return-object v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 679
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public handleBackPressed()Z
    .locals 1

    .prologue
    .line 3278
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->inInterruptedOrPendingInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getPostPlay()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3279
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getPostPlay()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->moveFromInterruptedToPlaying()V

    .line 3280
    const/4 v0, 0x1

    .line 3282
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method handleConnectivityCheck()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2890
    const-string/jumbo v2, "PlayerFragment"

    const-string/jumbo v3, "Check connection"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isOfflinePlayback()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2892
    const-string/jumbo v1, "PlayerFragment"

    const-string/jumbo v2, "offline playback network is not needed."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2917
    :goto_0
    return v0

    .line 2895
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getConnectionType(Landroid/content/Context;)Lcom/netflix/mediaclient/service/net/LogMobileType;

    move-result-object v2

    .line 2897
    if-nez v2, :cond_1

    .line 2898
    const-string/jumbo v1, "PlayerFragment"

    const-string/jumbo v2, "No internet connection. Since this is expected state on Verizons\' phones, skip"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2900
    :cond_1
    sget-object v3, Lcom/netflix/mediaclient/service/net/LogMobileType;->_2G:Lcom/netflix/mediaclient/service/net/LogMobileType;

    if-ne v2, v3, :cond_2

    .line 2901
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v2, "2G only, alert"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2902
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->slowNetworkWarning()V

    move v0, v1

    .line 2903
    goto :goto_0

    .line 2904
    :cond_2
    sget-object v3, Lcom/netflix/mediaclient/service/net/LogMobileType;->WIFI:Lcom/netflix/mediaclient/service/net/LogMobileType;

    if-ne v2, v3, :cond_3

    .line 2905
    const-string/jumbo v1, "PlayerFragment"

    const-string/jumbo v2, "WiFi connection, do playback"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2908
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->isPlaybackInWifiOnly(Landroid/content/Context;)Z

    move-result v2

    .line 2909
    const-string/jumbo v3, "PlayerFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "3G Preference setting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2911
    if-eqz v2, :cond_4

    .line 2912
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v2, "We should warn user if he is on NON WIFI network!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2913
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->nonWifiPlayWarning()V

    move v0, v1

    .line 2914
    goto :goto_0

    .line 2916
    :cond_4
    const-string/jumbo v1, "PlayerFragment"

    const-string/jumbo v2, "Warning is not required, proceed with playback"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public hideNavigationBar()V
    .locals 1

    .prologue
    .line 3426
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_0

    .line 3427
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->hideNavigationBar()V

    .line 3429
    :cond_0
    return-void
.end method

.method public isInPortrait()Z
    .locals 1

    .prologue
    .line 687
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isListening()Z
    .locals 1

    .prologue
    .line 3298
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsListening:Z

    return v0
.end method

.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 2813
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsLoadingData:Z

    return v0
.end method

.method public isOfflinePlayback()Z
    .locals 2

    .prologue
    .line 3577
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackType:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->OfflinePlayback:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    if-ne v0, v1, :cond_0

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
    const/4 v0, 0x0

    .line 2721
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    if-nez v1, :cond_1

    .line 2724
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPostPlayed()Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->postPlayed:Z

    return v0
.end method

.method public isSeeking()Z
    .locals 1

    .prologue
    .line 2707
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    if-nez v0, :cond_0

    .line 2708
    const/4 v0, 0x0

    .line 2710
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->seekToInProgress:Z

    goto :goto_0
.end method

.method public isStalled()Z
    .locals 1

    .prologue
    .line 2697
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->stalled:Z

    return v0
.end method

.method public isTablet()Z
    .locals 1

    .prologue
    .line 675
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsTablet:Z

    return v0
.end method

.method public notifyOthersOfPlayStart()V
    .locals 3

    .prologue
    .line 1355
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.LOCAL_PLAYER_PLAY_START"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1356
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/Asset;->toIntent(Landroid/content/Intent;)Landroid/content/Intent;

    .line 1357
    const-string/jumbo v0, "playbackType"

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackType:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1363
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;

    if-eqz v0, :cond_0

    .line 1364
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->updateIntent(Lcom/netflix/mediaclient/servicemgr/Asset;)V

    .line 1369
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1370
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Intent PLAYER_PLAY_START sent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    return-void

    .line 1366
    :cond_0
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v2, "notifyOthersOfPlayStart() got unsupported activity type - skipping..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public notifyOthersOfPlayStop()V
    .locals 3

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    if-eqz v0, :cond_0

    .line 1335
    invoke-static {}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->getInstance()Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isPinProtected()Z

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/Asset;->isPreviewProtected()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->registerPlayEvent(ZZ)V

    .line 1337
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOCAL_PLAYER_PLAY_STOP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1338
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->toIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 1339
    const-string/jumbo v1, "playbackType"

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackType:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1340
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1341
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentProfileGuidOrNull()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;->fromAsset(Lcom/netflix/mediaclient/servicemgr/Asset;)Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper;->setBookmark(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;)V

    .line 1342
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Intent PLAYER_PLAY_STOP sent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    :cond_0
    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 2

    .prologue
    .line 2583
    packed-switch p1, :pswitch_data_0

    .line 2610
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown audio focus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2616
    :goto_0
    return-void

    .line 2585
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    if-eqz v0, :cond_0

    .line 2586
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->setAudioDuck(Z)V

    .line 2588
    :cond_0
    const-string/jumbo v0, "AUDIOFOCUS_GAIN"

    goto :goto_0

    .line 2591
    :pswitch_2
    const-string/jumbo v0, "AUDIOFOCUS_GAIN_TRANSIENT"

    goto :goto_0

    .line 2594
    :pswitch_3
    const-string/jumbo v0, "AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK"

    goto :goto_0

    .line 2597
    :pswitch_4
    const-string/jumbo v0, "AUDIOFOCUS_LOSS"

    goto :goto_0

    .line 2600
    :pswitch_5
    const-string/jumbo v0, "AUDIOFOCUS_LOSS_TRANSIENT"

    goto :goto_0

    .line 2603
    :pswitch_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    if-eqz v0, :cond_1

    .line 2604
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->setAudioDuck(Z)V

    .line 2606
    :cond_1
    const-string/jumbo v0, "AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK"

    goto :goto_0

    .line 2583
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCompletion()V
    .locals 4

    .prologue
    .line 1235
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "onCompletion, check if we are in postplay"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->stopScreenUpdateTask()V

    .line 1237
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->canExitPlaybackEndOfPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1238
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    .line 1243
    :goto_0
    return-void

    .line 1240
    :cond_0
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "In PostPlay, allow screen to lock after timeout..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->allowScreenLockTimeout:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1005
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1006
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v2, :cond_3

    .line 1007
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v3, "keyboard out"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_2

    .line 1013
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1015
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v2, :cond_1

    .line 1016
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->shouldBeZoomed()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    move v0, v2

    .line 1017
    :goto_1
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v3, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setZoom(Z)V

    .line 1018
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-nez v0, :cond_5

    :goto_2
    invoke-virtual {v3, v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setZoomImage(Z)V

    .line 1020
    :cond_2
    return-void

    .line 1008
    :cond_3
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 1009
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v3, "keyboard in"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move v0, v1

    .line 1016
    goto :goto_1

    :cond_5
    move v2, v1

    .line 1018
    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 414
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onCreate(Landroid/os/Bundle;)V

    .line 420
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->logDeviceDensity(Landroid/app/Activity;)V

    .line 423
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 424
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->reset()V

    .line 427
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->playback:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportPlayActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 429
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playStartInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 431
    new-instance v0, Lcom/netflix/mediaclient/ui/player/subtitles/SafeSubtitleManager;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/subtitles/SafeSubtitleManager;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSubtitleManager:Lcom/netflix/mediaclient/ui/player/subtitles/SafeSubtitleManager;

    .line 433
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerMediaSessionController;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/player/PlayerFragment$1;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$1;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/player/PlayerMediaSessionController;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mMediaSessionController:Lcom/netflix/mediaclient/ui/player/PlayerMediaSessionController;

    .line 446
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->pauseReporting(Landroid/content/Context;)V

    .line 447
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "onCreate done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .prologue
    .line 1860
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1863
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->staticToolbarMenu:Landroid/view/Menu;

    if-eq v0, p1, :cond_0

    .line 1874
    :goto_0
    return-void

    .line 1867
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getTopPanel()Lcom/netflix/mediaclient/ui/player/TopPanel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1868
    :cond_1
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "onCreateOptionsMenu() was triggered before UI was initialized. Scheduling panel menu update to be called later."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPostponedPanelMenu:Landroid/view/Menu;

    goto :goto_0

    .line 1871
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getTopPanel()Lcom/netflix/mediaclient/ui/player/TopPanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/TopPanel;->onCreateOptionsMenu(Landroid/view/Menu;)V

    .line 1872
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPostponedPanelMenu:Landroid/view/Menu;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 452
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "onCreateView"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 454
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mRootLayout:Landroid/view/ViewGroup;

    .line 455
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setHasOptionsMenu(Z)V

    .line 456
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mRootLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 634
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerBackgrounded:Z

    if-eqz v0, :cond_0

    .line 635
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    .line 638
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 639
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->releaseLockOnScreen()V

    .line 641
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->pauseTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 642
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->allowScreenLockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 644
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_1

    .line 645
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->destroy()V

    .line 648
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSubtitleManager:Lcom/netflix/mediaclient/ui/player/subtitles/SafeSubtitleManager;

    if-eqz v0, :cond_2

    .line 649
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSubtitleManager:Lcom/netflix/mediaclient/ui/player/subtitles/SafeSubtitleManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/subtitles/SafeSubtitleManager;->clear()V

    .line 652
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mMediaSessionController:Lcom/netflix/mediaclient/ui/player/PlayerMediaSessionController;

    if-eqz v0, :cond_3

    .line 653
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mMediaSessionController:Lcom/netflix/mediaclient/ui/player/PlayerMediaSessionController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerMediaSessionController;->destroy()V

    .line 655
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->resumeReporting(Landroid/content/Context;Z)V

    .line 657
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onDestroy()V

    .line 659
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "====> Destroying PlayerFragment done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2623
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->setLastActionTime(J)V

    .line 2624
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->userInteraction()V

    .line 2625
    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    .line 2627
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->inInterruptedOrPendingInterrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2628
    const-string/jumbo v1, "PlayerFragment"

    const-string/jumbo v2, "Back used to dismiss interrupter overlay, send it back to framework"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    :cond_0
    :goto_0
    return v0

    .line 2631
    :cond_1
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v2, "Back..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2633
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->handleBackPressed()Z

    .line 2635
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    move v0, v1

    .line 2636
    goto :goto_0

    .line 2637
    :cond_2
    const/16 v2, 0x54

    if-ne p1, v2, :cond_3

    move v0, v1

    .line 2639
    goto :goto_0

    .line 2640
    :cond_3
    const/16 v2, 0x52

    if-ne p1, v2, :cond_4

    .line 2641
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    move v0, v1

    .line 2642
    goto :goto_0

    .line 2643
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->handleControlButtonPress(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 2644
    goto :goto_0
.end method

.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 1813
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1814
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "onManagerReady() was called when activity is already not in valid state - skipping..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    :cond_0
    :goto_0
    return-void

    .line 1821
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 1822
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isTablet()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsTablet:Z

    .line 1823
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsTablet:Z

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/ResourceHelper;->newInstance(Z)Lcom/netflix/mediaclient/ui/player/ResourceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mResources:Lcom/netflix/mediaclient/ui/player/ResourceHelper;

    .line 1827
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->requestDetailsIfNeeded(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1829
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->updateUI(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 1843
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1844
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IErrorHandler;->clear()V

    .line 1847
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1848
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->reportUserOpenedNotification(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Landroid/content/Intent;)V

    goto :goto_0

    .line 1830
    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isOfflinePlayback()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1835
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f0300cc

    .line 1838
    :goto_2
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setFragmentContentView(I)V

    goto :goto_1

    .line 1835
    :cond_5
    const v0, 0x7f0300c8

    goto :goto_2
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 1854
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "NetflixService is NOT available!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    .line 1856
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 1878
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getTopPanel()Lcom/netflix/mediaclient/ui/player/TopPanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/TopPanel;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1879
    const/4 v0, 0x1

    .line 1881
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 560
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isStalled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isSeeking()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsBufferingOnPause:Z

    .line 562
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-ne v0, v1, :cond_1

    .line 563
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Screen is on, just pause"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doPause()V

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mMediaSessionController:Lcom/netflix/mediaclient/ui/player/PlayerMediaSessionController;

    if-eqz v0, :cond_2

    .line 568
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mMediaSessionController:Lcom/netflix/mediaclient/ui/player/PlayerMediaSessionController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerMediaSessionController;->stopMediaSession()V

    .line 570
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPostPlaySafely()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    .line 571
    if-eqz v0, :cond_3

    .line 572
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->onPause()V

    .line 575
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_4

    .line 576
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->onPause()V

    .line 579
    :cond_4
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "onPause called done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onPause()V

    .line 581
    return-void

    .line 560
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPlayVerified(ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)V
    .locals 5

    .prologue
    .line 3318
    const-string/jumbo v0, "nf_pin"

    const-string/jumbo v1, "%s onPlayVerification vault: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-class v4, Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    .line 3319
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    .line 3318
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3321
    if-eqz p1, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->PLAYER:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->getInvokeLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3322
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->continueInitAfterPlayVerify()V

    .line 3328
    :goto_0
    return-void

    .line 3325
    :cond_0
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Age/Pin verification failed cannot proceed - close playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3326
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    goto :goto_0
.end method

.method public onPlaybackError(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackError;)V
    .locals 3

    .prologue
    .line 3070
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/player/error/PlayerErrorDialogDescriptorFactory;->getHandlerForPlaybackError(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackError;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    move-result-object v0

    .line 3071
    if-eqz v0, :cond_0

    .line 3072
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/error/ErrorDescriptor;->getData()Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    move-result-object v1

    .line 3073
    if-eqz v1, :cond_0

    .line 3074
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    .line 3075
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3076
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/IErrorHandler;->addError(Lcom/netflix/mediaclient/service/error/ErrorDescriptor;)Z

    .line 3080
    :cond_0
    return-void
.end method

.method public onPrepared(Lcom/netflix/mediaclient/media/Watermark;)V
    .locals 4

    .prologue
    .line 1025
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 1026
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-ne v0, v1, :cond_3

    .line 1028
    :try_start_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayerManifestData()Lcom/netflix/mediaclient/media/PlayerManifestData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/PlayerManifestData;->getPlaybackDisplaySpec()Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;

    move-result-object v0

    iget-object v0, v0, Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;->aspectRatioDimension:Landroid/graphics/Point;

    .line 1030
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 1031
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 1033
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v2, :cond_0

    .line 1038
    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setSurface(II)V

    .line 1039
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isZoomEnabledByPlayerType()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setZoomEnabledByPlayertype(Z)V

    .line 1042
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayerManifestData()Lcom/netflix/mediaclient/media/PlayerManifestData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/PlayerManifestData;->getPlaybackDisplaySpec()Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;

    move-result-object v0

    iget-object v0, v0, Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;->croppedAspectRatioDimension:Landroid/graphics/Point;

    .line 1043
    if-eqz v0, :cond_1

    iget v1, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_1

    .line 1044
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setCroppedSize(II)V

    .line 1047
    :cond_1
    if-eqz p1, :cond_2

    .line 1052
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->addWatermark(Lcom/netflix/mediaclient/media/Watermark;)V

    .line 1056
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->selectInitialTracks()V

    .line 1057
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayerManifestData()Lcom/netflix/mediaclient/media/PlayerManifestData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/PlayerManifestData;->getGopMaxSizeInMs()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackSeekWindowSizeMs:I

    .line 1066
    :goto_1
    return-void

    .line 1054
    :cond_2
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Watermark not found..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1058
    :catch_0
    move-exception v0

    .line 1059
    const-string/jumbo v1, "PlayerFragment"

    const-string/jumbo v2, "Failed to start player"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1060
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    goto :goto_1

    .line 1063
    :cond_3
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPrepared not in correct state, ActivityState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 539
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onResume()V

    .line 543
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPostPlaySafely()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    .line 544
    if-eqz v0, :cond_0

    .line 545
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->onResume()V

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_1

    .line 549
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "ui.playergraphicref"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 550
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setDebugGraphicOverlayVisibility(Z)V

    .line 551
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->onResume()V

    .line 553
    :cond_1
    return-void
.end method

.method public onRetryRequested()V
    .locals 2

    .prologue
    .line 1544
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDialogFragment()Landroid/app/DialogFragment;

    move-result-object v0

    .line 1545
    instance-of v1, v0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    if-eqz v1, :cond_0

    .line 1549
    check-cast v0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;->onRetryRequested()V

    .line 1556
    :cond_0
    return-void
.end method

.method public declared-synchronized onStalled()V
    .locals 3

    .prologue
    .line 1203
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Playout stalled"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 1206
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1207
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Playout stalled, clear pending updates"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSubtitleManager:Lcom/netflix/mediaclient/ui/player/subtitles/SafeSubtitleManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/subtitles/SafeSubtitleManager;->clearPendingUpdates()V

    .line 1210
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->seekToInProgress:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->audioSeekToInProgress:Z

    if-eqz v0, :cond_2

    .line 1211
    :cond_0
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Seek in progress..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1231
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1215
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->stalled:Z

    .line 1216
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_3

    .line 1217
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->changeActionState(Z)V

    .line 1220
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_4

    .line 1221
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setMediaImage(Z)V

    .line 1224
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->lowBandwidth:Z

    if-eqz v0, :cond_5

    .line 1225
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Enabled Toast"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090127

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1229
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setBufferingOverlayVisibility(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1203
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 481
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onStart()V

    .line 486
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->keepScreenOn()V

    .line 488
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPostPlaySafely()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    .line 489
    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->onStart()V

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->onStart()V

    .line 497
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 498
    if-eqz v0, :cond_2

    .line 499
    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 504
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mExternalBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mExternalBundle:Landroid/os/Bundle;

    .line 505
    :goto_1
    if-nez v0, :cond_4

    .line 506
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "This should NEVER happen, bundle is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->tryFinishActivity()V

    .line 528
    :goto_2
    return-void

    .line 501
    :cond_2
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Audio manager not found. Unable to ask for audio focus!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 504
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 510
    :cond_4
    const-string/jumbo v1, "AssetExtra"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/Asset;

    .line 515
    if-eqz v0, :cond_5

    .line 516
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    .line 521
    :cond_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "BookmarkSecondsFromStart"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->secondsFromStart:I

    .line 523
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "onStart done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public declared-synchronized onStarted()V
    .locals 5

    .prologue
    .line 1111
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Playout started: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 1114
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-eq v0, v1, :cond_2

    .line 1119
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1120
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->clientFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    sget-object v2, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->handledSilently:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;Ljava/lang/String;Ljava/util/List;)V

    .line 1121
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayLocation()Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    move-result-object v4

    invoke-static {v1, v2, v0, v3, v4}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportPlayActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;Lcom/netflix/mediaclient/ui/common/PlayLocationType;)V

    .line 1124
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playStartInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1125
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1135
    :goto_0
    monitor-exit p0

    return-void

    .line 1129
    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackStartHandledOnce:Z

    if-nez v0, :cond_3

    .line 1130
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->handlePlaybackStartOnce()V

    .line 1132
    :cond_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->handleEveryPlaybackStart()V

    .line 1133
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isOfflinePlayback()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "Offline"

    .line 1134
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " playback started"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/Log;->partner(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1133
    :cond_4
    :try_start_2
    const-string/jumbo v0, "Streaming"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 589
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPostPlaySafely()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    .line 590
    if-eqz v0, :cond_0

    .line 591
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->onStop()V

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->onStop()V

    .line 598
    :cond_1
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onStop()V

    .line 599
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 600
    if-eqz v0, :cond_3

    .line 601
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 606
    :goto_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerBackgrounded:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->canPlayerBeBackgrounded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 607
    :cond_2
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "PlayerActivity::onStop done, player is backbrounded"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :goto_1
    return-void

    .line 603
    :cond_3
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Audio manager not found. Unable to abandon audio focus!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 610
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playStartInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 611
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Start play is in progress and user canceled playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayLocation()Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    move-result-object v2

    invoke-static {v0, v1, v3, v3, v2}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportPlayActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;Lcom/netflix/mediaclient/ui/common/PlayLocationType;)V

    .line 615
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mMaxStreamsReachedDialogId:Ljava/lang/String;

    .line 616
    if-eqz v0, :cond_6

    .line 617
    const-string/jumbo v1, "PlayerFragment"

    const-string/jumbo v2, "Report max stream reach dialog ended"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->maxStreamsReached:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->reportUiModelessViewSessionEnded(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)V

    .line 621
    :cond_6
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    .line 623
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "PlayerActivity::onStop done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onSubtitleChange(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;)V
    .locals 2

    .prologue
    .line 2983
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2984
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Activity isn\'t already in a valid state - no need to update the subtitles"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2993
    :goto_0
    return-void

    .line 2992
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSubtitleManager:Lcom/netflix/mediaclient/ui/player/subtitles/SafeSubtitleManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/SafeSubtitleManager;->onSubtitleChange(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;)V

    goto :goto_0
.end method

.method public onSubtitleFailed()V
    .locals 2

    .prologue
    .line 2998
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3006
    :goto_0
    return-void

    .line 3002
    :cond_0
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "We failed to change subtitle"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onUpdatePts(J)V
    .locals 5

    .prologue
    .line 3048
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3049
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Activity is already not in valid state - skpping onUpdatePts()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3063
    :goto_0
    return-void

    .line 3052
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->shouldNotifyPostPlayToFetch(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3053
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPostPlayFetchNotified:Z

    .line 3054
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getPostPlay()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->notifyPlayerReady()V

    .line 3057
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mDurationMs:J

    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->updatePlaybackPosition(JJ)V

    .line 3059
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    if-eqz v0, :cond_2

    .line 3060
    invoke-static {}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->getInstance()Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isPinProtected()Z

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/Asset;->isPreviewProtected()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->registerPlayEvent(ZZ)V

    .line 3062
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->updateAssetWithCurrentPlayPosition()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .prologue
    .line 2560
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2578
    :cond_0
    :goto_0
    return-void

    .line 2564
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    .line 2565
    if-eqz v0, :cond_2

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Loading:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getState()Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    move-result-object v0

    if-ne v1, v0, :cond_3

    .line 2566
    :cond_2
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "UI is not in focus on splash screen. Do NOT pause, ignore."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2570
    :cond_3
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Alert from some other activity is in front of us. Pause."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2571
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$14;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$14;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public performUpAction(Z)V
    .locals 6

    .prologue
    .line 1246
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 1247
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->actionBarBackButton:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDataContext()Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommand(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 1248
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    .line 1249
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "performUpAction bLaunchDetailsScreen=%b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1250
    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 1251
    new-instance v4, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/Asset;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/Asset;->getTrackId()I

    move-result v1

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/Asset;->getListPos()I

    move-result v2

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/Asset;->getVideoPos()I

    move-result v5

    invoke-direct {v4, v0, v1, v2, v5}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;III)V

    .line 1252
    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/Asset;->isEpisode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/Asset;->getParentId()Ljava/lang/String;

    move-result-object v2

    .line 1253
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/Asset;->isEpisode()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    :goto_1
    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/Asset;->getTitle()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "PlayerFragment"

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->show(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Ljava/lang/String;)V

    .line 1255
    :cond_0
    return-void

    .line 1252
    :cond_1
    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1253
    :cond_2
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    goto :goto_1
.end method

.method public playNextVideo(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;Z)V
    .locals 6

    .prologue
    .line 3099
    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playNextVideo(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;ZIZ)V

    .line 3100
    return-void
.end method

.method public playNextVideo(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;ZIZ)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3111
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3112
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Activity already destroyed, ignore next!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3177
    :goto_0
    return-void

    .line 3118
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    if-nez v0, :cond_2

    move v0, v2

    move v3, v2

    .line 3149
    :goto_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    .line 3151
    invoke-static {p1, p2, v3, v2, p3}, Lcom/netflix/mediaclient/servicemgr/Asset;->createForPostPlay(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;IZZ)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v4

    .line 3153
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->isAdvisoryDisabled()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v1

    .line 3160
    :goto_2
    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    .line 3161
    invoke-virtual {v4, v1}, Lcom/netflix/mediaclient/servicemgr/Asset;->setAdvisoryDisabled(Z)V

    .line 3168
    :cond_1
    invoke-virtual {v4}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3169
    const-string/jumbo v0, "PlayableId is null - skip playback"

    .line 3170
    const-string/jumbo v1, "PlayerFragment"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3171
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3123
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->isExemptFromInterrupterLimit()Z

    move-result v0

    .line 3128
    if-eqz p3, :cond_8

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->noUserInteraction()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3129
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPostPlayVideoPlayed()I

    move-result v3

    .line 3130
    if-nez v0, :cond_3

    .line 3131
    add-int/lit8 v3, v3, 0x1

    .line 3139
    :cond_3
    :goto_3
    if-nez p1, :cond_4

    move v0, v2

    goto :goto_1

    .line 3144
    :cond_4
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isPlayableEpisode()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->isEpisode()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    .line 3145
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->getParentId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getTopLevelId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    move v3, v2

    .line 3153
    goto :goto_2

    .line 3176
    :cond_7
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0, v4, v2, p4, p5}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->playVideo(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;ZIZ)V

    goto/16 :goto_0

    :cond_8
    move v3, v2

    goto :goto_3
.end method

.method public removePlayPauseListener(Lcom/netflix/mediaclient/ui/player/PlayPauseListener;)V
    .locals 1

    .prologue
    .line 3515
    if-nez p1, :cond_1

    .line 3524
    :cond_0
    :goto_0
    return-void

    .line 3519
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playPauseListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playPauseListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3523
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playPauseListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public requestDetailsIfNeeded(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z
    .locals 3

    .prologue
    .line 2048
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mExternalBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 2049
    :goto_0
    const-string/jumbo v1, "VideoDetailsIdExtra"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2050
    invoke-static {p1, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->availableInMyDownloads(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;)Z

    move-result v2

    .line 2057
    if-eqz v2, :cond_1

    .line 2058
    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->requestDetailsIfNeededOffline(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    .line 2060
    :goto_1
    return v0

    .line 2048
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mExternalBundle:Landroid/os/Bundle;

    goto :goto_0

    .line 2060
    :cond_1
    invoke-direct {p0, v1, v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->requestDetailsIfNeededStreaming(Ljava/lang/String;Landroid/os/Bundle;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v0

    goto :goto_1
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 461
    return-void
.end method

.method public resetCurrentPlayback()V
    .locals 2

    .prologue
    .line 3239
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    if-eqz v0, :cond_0

    .line 3240
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->pause()V

    .line 3241
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->close()V

    .line 3243
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->videoLoaded:Z

    .line 3244
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->showLoading()V

    .line 3245
    return-void
.end method

.method public restorePlaybackAfterSnap()V
    .locals 4

    .prologue
    .line 1377
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "restorePlaybackAfterSnap."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->keepScreenOn()V

    .line 1380
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1381
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->setLastActionTime(J)V

    .line 1382
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->userInteraction()V

    .line 1383
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->repostOnEverySecondRunnable(I)V

    .line 1384
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->startScreenUpdateTask()V

    .line 1387
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_1

    .line 1388
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->changeActionState(Z)V

    .line 1391
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doUnpause()V

    .line 1392
    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 2763
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 2764
    return-void
.end method

.method public selectInitialTracks()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v7, -0x1

    .line 1070
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getSubtitleTrackList()[Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v2

    .line 1071
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getAudioTrackList()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v3

    .line 1072
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getAudioSubtitleDefaultOrderInfo()[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    move-result-object v4

    .line 1074
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Create localization manager"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    new-instance v0, Lcom/netflix/mediaclient/ui/player/LocalizationManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isOfflinePlayback()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/player/LocalizationManager;-><init>(Landroid/content/Context;[Lcom/netflix/mediaclient/media/Subtitle;[Lcom/netflix/mediaclient/media/AudioSource;[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;Z)V

    .line 1078
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->findInitialLanguage()Lcom/netflix/mediaclient/util/LanguageChoice;

    move-result-object v0

    .line 1079
    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/LanguageChoice;->getAudio()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v1

    .line 1081
    if-eqz v1, :cond_0

    .line 1085
    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/AudioSource;->getNccpOrderNumber()I

    move-result v6

    .line 1090
    :goto_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/LanguageChoice;->getSubtitle()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    .line 1092
    if-eqz v0, :cond_1

    .line 1096
    invoke-interface {v0}, Lcom/netflix/mediaclient/media/Subtitle;->getNccpOrderNumber()I

    move-result v8

    .line 1097
    const/4 v9, 0x1

    .line 1103
    :goto_1
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v4, v1, v0, v10}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->selectTracks(Lcom/netflix/mediaclient/media/AudioSource;Lcom/netflix/mediaclient/media/Subtitle;Z)Z

    .line 1105
    new-instance v4, Lcom/netflix/mediaclient/media/Language;

    move-object v5, v3

    move-object v7, v2

    invoke-direct/range {v4 .. v9}, Lcom/netflix/mediaclient/media/Language;-><init>([Lcom/netflix/mediaclient/media/AudioSource;I[Lcom/netflix/mediaclient/media/Subtitle;IZ)V

    .line 1106
    invoke-direct {p0, v4}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setLanguage(Lcom/netflix/mediaclient/media/Language;)V

    .line 1107
    return-void

    .line 1087
    :cond_0
    const-string/jumbo v4, "PlayerFragment"

    const-string/jumbo v5, "No need to set initial audio source"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    goto :goto_0

    .line 1099
    :cond_1
    const-string/jumbo v4, "PlayerFragment"

    const-string/jumbo v5, "No need to set initial subtitle"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    move v9, v10

    goto :goto_1
.end method

.method public setExternalBundle(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 476
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mExternalBundle:Landroid/os/Bundle;

    .line 477
    return-void
.end method

.method public setMaxStreamsReachedDialogId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3039
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mMaxStreamsReachedDialogId:Ljava/lang/String;

    .line 3040
    return-void
.end method

.method public setPauseOnPlayerBackgrounded(Z)V
    .locals 0

    .prologue
    .line 3553
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->pausePlaybackOnPlayerBackgrounded:Z

    .line 3554
    return-void
.end method

.method public setPostPlayed(Z)V
    .locals 0

    .prologue
    .line 343
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->postPlayed:Z

    .line 344
    return-void
.end method

.method public setSubtitleVisiblity(Z)V
    .locals 1

    .prologue
    .line 3562
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSubtitleManager:Lcom/netflix/mediaclient/ui/player/subtitles/SafeSubtitleManager;

    if-nez v0, :cond_0

    .line 3570
    :goto_0
    return-void

    .line 3569
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSubtitleManager:Lcom/netflix/mediaclient/ui/player/subtitles/SafeSubtitleManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/SafeSubtitleManager;->setSubtitleVisibility(Z)V

    goto :goto_0
.end method

.method public setTargetSelection()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2821
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2822
    :cond_0
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Skipping setTargetSelection()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2840
    :goto_0
    return-void

    .line 2826
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 2827
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v1

    if-nez v1, :cond_3

    .line 2828
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getTopPanel()Lcom/netflix/mediaclient/ui/player/TopPanel;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/ui/player/TopPanel;->setMdxTargetSelector(Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;)V

    goto :goto_0

    .line 2832
    :cond_3
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getTargetList()[Landroid/util/Pair;

    move-result-object v1

    .line 2833
    if-eqz v1, :cond_4

    array-length v2, v1

    const/4 v3, 0x1

    if-ge v2, v3, :cond_5

    .line 2834
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getTopPanel()Lcom/netflix/mediaclient/ui/player/TopPanel;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/ui/player/TopPanel;->setMdxTargetSelector(Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;)V

    goto :goto_0

    .line 2838
    :cond_5
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getCurrentTarget()Ljava/lang/String;

    move-result-object v0

    .line 2839
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getTopPanel()Lcom/netflix/mediaclient/ui/player/TopPanel;

    move-result-object v2

    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->createMdxTargetSelection([Landroid/util/Pair;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->setMdxTargetSelector(Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;)V

    goto :goto_0
.end method

.method public setUserInteraction()V
    .locals 2

    .prologue
    .line 3485
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    if-eqz v0, :cond_0

    .line 3486
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->userInteraction()V

    .line 3487
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Set user interaction to true"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3489
    :cond_0
    return-void
.end method

.method public showControlScreenOverlay(Z)V
    .locals 2

    .prologue
    .line 2682
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    .line 2683
    if-eqz v0, :cond_0

    .line 2684
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->onTap(Z)V

    .line 2688
    :goto_0
    return-void

    .line 2686
    :cond_0
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Screen is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showNavigationBar()V
    .locals 1

    .prologue
    .line 3420
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_0

    .line 3421
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->showNavigationBar()V

    .line 3423
    :cond_0
    return-void
.end method

.method public startScreenUpdateTask()V
    .locals 2

    .prologue
    .line 2945
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->repostOnEverySecondRunnable(I)V

    .line 2946
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "===>> Screen update thread started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2947
    return-void
.end method

.method public stopScreenUpdateTask()V
    .locals 2

    .prologue
    .line 2953
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->onEverySecond:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2954
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "===>> Screen update thread canceled"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2955
    return-void
.end method
