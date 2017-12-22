.class public Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;
.super Ljava/lang/Object;
.source "OfflinePlaybackSession.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/player/IPlaybackSession;
.implements Lcom/netflix/mediaclient/service/player/ISessionPlayerListener;


# static fields
.field private static final CALLBACK_INTERVAL_MS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "OfflinePlayback_Session"


# instance fields
.field private bSessionIsClosing:Z

.field private mABitrate:J

.field private mActivityTracker:Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;

.field private mAdlid:Ljava/lang/String;

.field private mAudioSource:[Lcom/netflix/mediaclient/media/AudioSource;

.field private mAudioSubtitleDefaultOrderInfo:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

.field private mBatteryStats:Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;

.field private final mBookmark:J

.field private final mCallback:Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;

.field private mConfigAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

.field private final mContext:Landroid/content/Context;

.field private mCurrentSubtitleTrack:Lcom/netflix/mediaclient/media/Subtitle;

.field private mDxid:Ljava/lang/String;

.field private mEndPlayLogged:Z

.field private mErrorLogged:Z

.field private final mLoggingAgent:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

.field private final mMainHandler:Landroid/os/Handler;

.field private mManifestData:Lcom/netflix/mediaclient/media/PlayerManifestData;

.field private final mMovieId:J

.field private final mOfflineAgent:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;

.field private mOfflineBifManger:Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;

.field private mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

.field private mOxid:Ljava/lang/String;

.field private mPdsPlaySession:Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsOfflinePlaySession;

.field private final mPeriodicCallback:Ljava/lang/Runnable;

.field private mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

.field private mPlayTracker:Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;

.field private mPlaybackTS:J

.field private mPowerStatusRcvr:Lcom/netflix/mediaclient/service/player/exoplayback/PowerStatusReceiver;

.field private mResumePlayReason:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

.field private mStartPlayLogged:Z

.field private mSubtitle:[Lcom/netflix/mediaclient/media/Subtitle;

.field private mSubtitledlid:Ljava/lang/String;

.field private final mSubtitles:Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;

.field private mSurface:Landroid/view/Surface;

.field private mUserPlay:J

.field private mVBitrate:J

.field private mVdlid:Ljava/lang/String;

.field private mVideoTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/media/manifest/VideoTrack;",
            ">;"
        }
    .end annotation
.end field

.field private mWatermark:Lcom/netflix/mediaclient/media/Watermark;

.field private mXid:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;Lcom/netflix/mediaclient/servicemgr/IClientLogging;Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsEventReporter;Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;JJLcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 9

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    sget-object v2, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;->none:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

    iput-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mResumePlayReason:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

    .line 92
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPlaybackTS:J

    .line 527
    new-instance v2, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$2;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$2;-><init>(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPeriodicCallback:Ljava/lang/Runnable;

    .line 112
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mContext:Landroid/content/Context;

    .line 113
    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mMainHandler:Landroid/os/Handler;

    .line 114
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mCallback:Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;

    .line 115
    iput-object p4, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mConfigAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    .line 116
    iput-object p5, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflineAgent:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;

    .line 117
    iput-object p6, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mLoggingAgent:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    .line 118
    invoke-static {}, Lcom/netflix/mediaclient/util/NetflixTransactionIdGenerator;->generateXid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mXid:Ljava/lang/String;

    .line 119
    move-wide/from16 v0, p9

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mMovieId:J

    .line 120
    move-wide/from16 v0, p11

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mBookmark:J

    .line 121
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mSubtitles:Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;

    .line 122
    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mUserPlay:J

    .line 123
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 124
    move-wide/from16 v0, p9

    invoke-direct {p0, p5, v0, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->requestOfflineManifest(Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;J)V

    .line 126
    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mContext:Landroid/content/Context;

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->getSessionId()Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mBookmark:J

    move-object/from16 v2, p7

    move-object/from16 v8, p13

    invoke-interface/range {v2 .. v8}, Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsEventReporter;->createPdsOfflinePlaySession(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/netflix/mediaclient/ui/common/PlayContext;)Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsOfflinePlaySession;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPdsPlaySession:Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsOfflinePlaySession;

    .line 129
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;->createBatteryStats(Landroid/content/Context;)Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mBatteryStats:Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;

    .line 130
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 131
    const-string/jumbo v3, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    new-instance v3, Lcom/netflix/mediaclient/service/player/exoplayback/PowerStatusReceiver;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mBatteryStats:Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;

    invoke-direct {v3, v4}, Lcom/netflix/mediaclient/service/player/exoplayback/PowerStatusReceiver;-><init>(Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;)V

    iput-object v3, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPowerStatusRcvr:Lcom/netflix/mediaclient/service/player/exoplayback/PowerStatusReceiver;

    .line 133
    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPowerStatusRcvr:Lcom/netflix/mediaclient/service/player/exoplayback/PowerStatusReceiver;

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->handleManifest(Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->getPlayTimeJson()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOxid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsOfflinePlaySession;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPdsPlaySession:Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsOfflinePlaySession;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->reportStartPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mCallback:Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPlaybackTS:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;J)J
    .locals 1

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPlaybackTS:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPlayTracker:Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;I)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->handleSubtitleUpdate(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mMovieId:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflineAgent:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getActivityData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 286
    const-string/jumbo v0, ""

    .line 288
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mActivityTracker:Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;

    if-eqz v1, :cond_0

    .line 289
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mActivityTracker:Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->stopTrackingActivityUpdates()V

    .line 290
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mActivityTracker:Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->getActivityData()Lorg/json/JSONObject;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mActivityTracker:Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;

    .line 294
    :cond_0
    return-object v0
.end method

.method private getPlayTimeJson()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPlayTracker:Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPlayTracker:Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->getPlayTimeJson()Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->getDefaultTimeJson()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method private handleManifest(Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 165
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;->getAudioSubtitleDefaultOrderInfo()[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mAudioSubtitleDefaultOrderInfo:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    .line 166
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;->getSubtitleTrackList()[Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mSubtitle:[Lcom/netflix/mediaclient/media/Subtitle;

    .line 167
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;->getAudioTrackList()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mAudioSource:[Lcom/netflix/mediaclient/media/AudioSource;

    .line 168
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPdsPlaySession:Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsOfflinePlaySession;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsOfflinePlaySession;->onManifest(Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;)V

    .line 170
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;->getOxId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOxid:Ljava/lang/String;

    .line 171
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;->getDxId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mDxid:Ljava/lang/String;

    .line 172
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;->getWatermark()Lcom/netflix/mediaclient/media/Watermark;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mWatermark:Lcom/netflix/mediaclient/media/Watermark;

    .line 174
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;->getVideoTrackList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mVideoTracks:Ljava/util/List;

    .line 175
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mVideoTracks:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/manifest/VideoTrack;

    iget-object v2, v0, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->streams:Ljava/util/List;

    .line 176
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/manifest/Stream;

    iget v0, v0, Lcom/netflix/mediaclient/media/manifest/Stream;->bitrate:I

    int-to-long v4, v0

    iput-wide v4, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mVBitrate:J

    .line 177
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/manifest/Stream;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/manifest/Stream;->downloadable_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mVdlid:Ljava/lang/String;

    .line 179
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;->getManifestData()Lcom/netflix/mediaclient/media/PlayerManifestData;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mManifestData:Lcom/netflix/mediaclient/media/PlayerManifestData;

    .line 180
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;->getOfflineKeySetId()[B

    move-result-object v0

    .line 182
    if-eqz v0, :cond_2

    array-length v2, v0

    if-lez v2, :cond_2

    .line 183
    const-string/jumbo v2, "OfflinePlayback_Session"

    const-string/jumbo v3, "has KeySetId"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->logByteArrayRaw(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 185
    :try_start_0
    new-instance v5, Lcom/netflix/mediaclient/service/player/exoplayback/OfflineDrmSession;

    invoke-direct {v5, v0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflineDrmSession;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;->getBifFile()Ljava/lang/String;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_0

    .line 208
    new-instance v0, Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;->getBifFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflineBifManger:Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;

    .line 211
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mMainHandler:Landroid/os/Handler;

    .line 213
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;->getMpd()Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    move-result-object v4

    iget-wide v6, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mBookmark:J

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/service/player/ISessionPlayerListener;Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;Lcom/google/android/exoplayer/drm/DrmSessionManager;J)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    .line 215
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mBookmark:J

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPlaybackTS:J

    .line 216
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->setSurface(Landroid/view/Surface;)V

    .line 220
    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPlayTracker:Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;

    .line 222
    :goto_1
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 190
    sget-object v2, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->MANIFEST_PROCESSING:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "OfflinePlayback.DrmSessionRestoreFailed"

    .line 191
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-direct {p0, v2, v3, v0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->reportStartPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPdsPlaySession:Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsOfflinePlaySession;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->getPlayTimeJson()Lorg/json/JSONObject;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->MANIFEST_PROCESSING:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "OfflinePlayback.DrmSessionRestoreFailed"

    invoke-interface {v0, v2, v3, v4}, Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsOfflinePlaySession;->stop(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mCallback:Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;

    new-instance v2, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;

    sget-object v3, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;->SESSION_INIT_ERROR:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    const-string/jumbo v4, "OfflineDrmSession failed"

    sget-object v5, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->MANIFEST_PROCESSING:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;

    .line 195
    invoke-virtual {v5}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;-><init>(Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;->handleError(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackError;)V

    goto :goto_1

    .line 200
    :cond_2
    const-string/jumbo v0, "OfflinePlayback_Session"

    const-string/jumbo v2, "invalid offline KeySetId, assume it is clear content"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v1

    goto :goto_0
.end method

.method private declared-synchronized handleSubtitleUpdate(I)V
    .locals 4

    .prologue
    .line 494
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->getCurrentSubtitleTrack()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 495
    const-string/jumbo v0, "OfflinePlayback_Session"

    const-string/jumbo v1, "Subtitles are not visible, do not send any update"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    :goto_0
    monitor-exit p0

    return-void

    .line 499
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mSubtitles:Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;

    .line 500
    if-nez v0, :cond_1

    .line 502
    const-string/jumbo v0, "OfflinePlayback_Session"

    const-string/jumbo v1, "Subtitle manager is not available."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 494
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 506
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->getSubtitleParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v1

    if-nez v1, :cond_2

    .line 508
    const-string/jumbo v0, "OfflinePlayback_Session"

    const-string/jumbo v1, "Subtitle data is not available."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 512
    :cond_2
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->getSubtitleParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;->isReady()Z

    move-result v1

    if-nez v1, :cond_3

    .line 513
    const-string/jumbo v0, "OfflinePlayback_Session"

    const-string/jumbo v1, "Subtitle data is not ready yet!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 517
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_4

    .line 518
    const-string/jumbo v0, "OfflinePlayback_Session"

    const-string/jumbo v1, "Not playing, do NOT send subtitle screen update"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 523
    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mCallback:Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->getSubtitleParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;->getSubtitlesForPosition(J)Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;->handleSubtitleUpdate(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private reportEndPlay(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 27

    .prologue
    .line 684
    const-string/jumbo v2, "OfflinePlayback_Session"

    const-string/jumbo v3, "reportEndPlay: "

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mEndPlayLogged:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mErrorLogged:Z

    if-eqz v2, :cond_1

    .line 686
    :cond_0
    const-string/jumbo v2, "OfflinePlayback_Session"

    const-string/jumbo v3, "reportEndPlay: Already logged or error reported"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :goto_0
    return-void

    .line 691
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mBatteryStats:Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;->updateBatteryStat(Z)V

    .line 693
    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mUserPlay:J

    sub-long v12, v2, v4

    .line 694
    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->getCurrentPosition()J

    move-result-wide v14

    .line 696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v19

    .line 697
    sget-object v4, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->INFO:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    .line 698
    sget-object v2, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;->error:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 699
    sget-object v4, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->ERROR:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    .line 700
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mErrorLogged:Z

    .line 703
    :cond_2
    const/16 v20, 0x0

    .line 704
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    if-eqz v2, :cond_3

    .line 705
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->getPlaybackStatJSON()Lorg/json/JSONObject;

    move-result-object v20

    .line 717
    :cond_3
    :try_start_0
    new-instance v3, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/EndPlay;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mMovieId:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-interface {v2}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getTrackId()I

    move-result v2

    int-to-long v7, v2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mXid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOxid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mDxid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPlayTracker:Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;

    .line 718
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->getMovieTotalInMs()J

    move-result-wide v16

    const-wide/16 v22, 0x3e8

    div-long v16, v16, v22

    invoke-virtual/range {p1 .. p1}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;->name()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mBatteryStats:Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;

    .line 719
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;->getJSON()Lorg/json/JSONObject;

    move-result-object v21

    const/16 v26, 0x0

    move-object/from16 v22, p2

    move-object/from16 v23, p3

    move-object/from16 v24, p4

    move-object/from16 v25, p5

    invoke-direct/range {v3 .. v26}, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/EndPlay;-><init>(Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;ZLorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 717
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->sendBlob(Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;)V

    .line 721
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mEndPlayLogged:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 722
    :catch_0
    move-exception v2

    .line 723
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private reportResumePlay(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;)V
    .locals 20

    .prologue
    .line 739
    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mUserPlay:J

    sub-long v8, v2, v4

    .line 740
    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->getCurrentPosition()J

    move-result-wide v6

    .line 741
    new-instance v3, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/ResumePlay;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mMovieId:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mXid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOxid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mDxid:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;->name()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mVdlid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mVBitrate:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mAdlid:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mABitrate:J

    move-wide/from16 v18, v0

    invoke-direct/range {v3 .. v19}, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/ResumePlay;-><init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->sendBlob(Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    :goto_0
    return-void

    .line 743
    :catch_0
    move-exception v2

    .line 744
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private reportStartPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 28

    .prologue
    .line 651
    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mUserPlay:J

    sub-long v12, v2, v4

    .line 652
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v24

    .line 653
    sget-object v4, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->INFO:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    .line 655
    if-eqz p1, :cond_0

    .line 656
    sget-object v4, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->ERROR:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    .line 660
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mBatteryStats:Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;->updateBatteryStat(Z)V

    .line 663
    :try_start_0
    new-instance v3, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/StartPlay;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mMovieId:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-interface {v2}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getTrackId()I

    move-result v2

    int-to-long v7, v2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mXid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOxid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mDxid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mBookmark:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mVdlid:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mVBitrate:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mAdlid:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mABitrate:J

    move-wide/from16 v20, v0

    move-wide/from16 v22, v12

    move-object/from16 v25, p1

    move-object/from16 v26, p2

    move-object/from16 v27, p3

    invoke-direct/range {v3 .. v27}, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/StartPlay;-><init>(Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;JLjava/lang/String;JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->sendBlob(Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;)V

    .line 666
    if-eqz p1, :cond_2

    .line 667
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mErrorLogged:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    :cond_1
    :goto_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mStartPlayLogged:Z

    .line 680
    return-void

    .line 671
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mConfigAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->canUseActivityTracker(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 672
    new-instance v2, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mActivityTracker:Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 675
    :catch_0
    move-exception v2

    .line 676
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private reportStateChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 729
    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mUserPlay:J

    sub-long v4, v0, v2

    .line 730
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->getCurrentPosition()J

    move-result-wide v6

    .line 731
    new-instance v0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/StateChanged;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mXid:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOxid:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mDxid:Ljava/lang/String;

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/StateChanged;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->sendBlob(Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    :goto_0
    return-void

    .line 732
    :catch_0
    move-exception v0

    .line 733
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private requestOfflineManifest(Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;J)V
    .locals 4

    .prologue
    .line 137
    const-string/jumbo v0, "OfflinePlayback_Session"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestOfflineManifest movieId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$1;-><init>(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)V

    invoke-interface {p1, p2, p3, v0}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;->requestOfflineManifest(JLcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;)V

    .line 162
    return-void
.end method

.method private selectAudioTrack(Lcom/netflix/mediaclient/media/AudioSource;)Z
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/AudioSource;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->selectAudioTrack(Ljava/lang/String;)Z

    move-result v0

    .line 370
    if-eqz v0, :cond_0

    .line 371
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->updateCurrentAudioTrackData()V

    .line 375
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendBlob(Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;)V
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mLoggingAgent:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getLogblobLogging()Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    .line 753
    return-void
.end method

.method private updateCurrentAudioTrackData()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 557
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->getAudioCurrentTrackId()Ljava/lang/String;

    move-result-object v3

    .line 558
    if-eqz v3, :cond_1

    .line 559
    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mAudioSource:[Lcom/netflix/mediaclient/media/AudioSource;

    array-length v5, v4

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v6, v4, v1

    .line 560
    invoke-virtual {v6}, Lcom/netflix/mediaclient/media/AudioSource;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/util/StringUtils;->notEmptyAndEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 559
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 563
    :cond_0
    invoke-virtual {v6}, Lcom/netflix/mediaclient/media/AudioSource;->getStreams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/manifest/Stream;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/manifest/Stream;->downloadable_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mAdlid:Ljava/lang/String;

    .line 564
    invoke-virtual {v6}, Lcom/netflix/mediaclient/media/AudioSource;->getStreams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/manifest/Stream;

    iget v0, v0, Lcom/netflix/mediaclient/media/manifest/Stream;->bitrate:I

    int-to-long v6, v0

    iput-wide v6, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mABitrate:J

    goto :goto_1

    .line 566
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPlayTracker:Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mVdlid:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mAdlid:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mSubtitledlid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->updateCurrrentPlayDlids(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    return-void
.end method


# virtual methods
.method public close()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 299
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->bSessionIsClosing:Z

    if-eqz v0, :cond_0

    .line 300
    const-string/jumbo v0, "OfflinePlayback_Session"

    const-string/jumbo v1, "already in process of closing... "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :goto_0
    return-void

    .line 303
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->bSessionIsClosing:Z

    .line 304
    const-string/jumbo v0, "OfflinePlayback_Session"

    const-string/jumbo v1, "close: "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    if-eqz v0, :cond_3

    .line 306
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->stop()V

    .line 307
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPeriodicCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 308
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflineAgent:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mMovieId:J

    invoke-interface {v0, v4, v5}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;->notifyStop(J)V

    .line 310
    sget-object v1, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;->stopped:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->getActivityData()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->reportEndPlay(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string/jumbo v0, "OfflinePlayback_Session"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "close: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->getPlayTimeJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPdsPlaySession:Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsOfflinePlaySession;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->getPlayTimeJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1, v2, v2}, Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsOfflinePlaySession;->stop(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    if-eqz v0, :cond_4

    .line 318
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->release()V

    .line 323
    :goto_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflineBifManger:Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflineBifManger:Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;->release()V

    .line 325
    iput-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflineBifManger:Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mSubtitles:Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;

    if-eqz v0, :cond_2

    .line 329
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mSubtitles:Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->close()V

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPowerStatusRcvr:Lcom/netflix/mediaclient/service/player/exoplayback/PowerStatusReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 314
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflineAgent:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mMovieId:J

    invoke-interface {v0, v4, v5}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;->abortManifestRequest(J)V

    goto :goto_1

    .line 320
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflineAgent:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mMovieId:J

    invoke-interface {v0, v4, v5}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;->abortManifestRequest(J)V

    goto :goto_2
.end method

.method public getAudioSubtitleDefaultOrderInfo()[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mAudioSubtitleDefaultOrderInfo:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    return-object v0
.end method

.method public getAudioTrackList()[Lcom/netflix/mediaclient/media/AudioSource;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mAudioSource:[Lcom/netflix/mediaclient/media/AudioSource;

    return-object v0
.end method

.method public getBifFrame(J)Ljava/nio/ByteBuffer;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 442
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflineBifManger:Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;

    if-eqz v1, :cond_0

    .line 443
    const-wide/32 v2, 0x7fffffff

    cmp-long v1, p1, v2

    if-ltz v1, :cond_1

    .line 444
    const-string/jumbo v1, "OfflinePlayback_Session"

    const-string/jumbo v2, "%d ms is too big, BifManager won\'t handle."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 449
    :cond_0
    :goto_0
    return-object v0

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflineBifManger:Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;->getIndexFrame(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentAudioTrack()Lcom/netflix/mediaclient/media/AudioSource;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->getAudioCurrentTrackId()Ljava/lang/String;

    .line 364
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentPlayableId()J
    .locals 2

    .prologue
    .line 454
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mMovieId:J

    return-wide v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->getCurrentPosition()J

    move-result-wide v0

    .line 348
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentSubtitleTrack()Lcom/netflix/mediaclient/media/Subtitle;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mCurrentSubtitleTrack:Lcom/netflix/mediaclient/media/Subtitle;

    return-object v0
.end method

.method public getManifestData()Lcom/netflix/mediaclient/media/PlayerManifestData;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mManifestData:Lcom/netflix/mediaclient/media/PlayerManifestData;

    return-object v0
.end method

.method public getPlayoutMetadata()Lcom/netflix/mediaclient/media/PlayoutMetadata;
    .locals 4

    .prologue
    .line 473
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    if-eqz v0, :cond_0

    .line 474
    new-instance v0, Lcom/netflix/mediaclient/media/PlayoutMetadata;

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mVBitrate:J

    long-to-int v1, v2

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    .line 476
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->getVideoResolution()Landroid/util/Pair;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    .line 477
    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->getVideoDecoderName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/media/PlayoutMetadata;-><init>(ILandroid/util/Pair;Ljava/lang/String;)V

    .line 480
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mXid:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitleTrackList()[Lcom/netflix/mediaclient/media/Subtitle;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mSubtitle:[Lcom/netflix/mediaclient/media/Subtitle;

    return-object v0
.end method

.method public getWatermark()Lcom/netflix/mediaclient/media/Watermark;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mWatermark:Lcom/netflix/mediaclient/media/Watermark;

    return-object v0
.end method

.method public handleConnectivityChanged()V
    .locals 0

    .prologue
    .line 469
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->isPlaying()Z

    move-result v0

    .line 356
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 246
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    if-eqz v0, :cond_0

    .line 247
    const-string/jumbo v0, "OfflinePlayback_Session"

    const-string/jumbo v1, "pause: "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->pause()V

    .line 249
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflineAgent:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mMovieId:J

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;->notifyPause(J)V

    .line 250
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPdsPlaySession:Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsOfflinePlaySession;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPlayTracker:Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->getPlayTimeJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsOfflinePlaySession;->pause(Lorg/json/JSONObject;)V

    .line 252
    :cond_0
    return-void
.end method

.method public play()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    if-eqz v0, :cond_0

    .line 238
    const-string/jumbo v0, "OfflinePlayback_Session"

    const-string/jumbo v1, "play: "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->play()V

    .line 240
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPdsPlaySession:Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsOfflinePlaySession;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPlayTracker:Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->getPlayTimeJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsOfflinePlaySession;->play(Lorg/json/JSONObject;)V

    .line 242
    :cond_0
    return-void
.end method

.method public playerBuffering(Z)V
    .locals 0

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->play()V

    .line 581
    return-void
.end method

.method public playerError(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackError;)V
    .locals 6

    .prologue
    .line 615
    instance-of v0, p1, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;

    if-nez v0, :cond_0

    .line 631
    :goto_0
    return-void

    .line 618
    :cond_0
    check-cast p1, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;

    .line 619
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mStartPlayLogged:Z

    if-eqz v0, :cond_1

    .line 620
    sget-object v1, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;->error:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;->getUiDisplayErrorCode()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "OfflinePlayback.PlaybackFailed"

    .line 621
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;->getExceptionStack()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->getActivityData()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 620
    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->reportEndPlay(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPdsPlaySession:Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsOfflinePlaySession;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->getPlayTimeJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;->getUiDisplayErrorCode()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "OfflinePlayback.PlaybackFailed"

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsOfflinePlaySession;->stop(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mCallback:Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;->handleError(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackError;)V

    .line 630
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflineAgent:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mMovieId:J

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;->notifyPlayError(J)V

    goto :goto_0

    .line 625
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->PLAYBACK_INIT:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "OfflinePlayback.PlaybackFailed"

    .line 626
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;->getExceptionStack()Ljava/lang/String;

    move-result-object v2

    .line 625
    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->reportStartPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public playerPaused()V
    .locals 2

    .prologue
    .line 571
    const-string/jumbo v0, "Playing"

    const-string/jumbo v1, "Paused"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->reportStateChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    return-void
.end method

.method public playerPrepared()V
    .locals 1

    .prologue
    .line 552
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->updateCurrentAudioTrackData()V

    .line 553
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mCallback:Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;->handlePrepared()V

    .line 554
    return-void
.end method

.method public playerStarted()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 586
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mStartPlayLogged:Z

    if-nez v0, :cond_0

    .line 587
    invoke-direct {p0, v1, v1, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->reportStartPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflineAgent:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mMovieId:J

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;->notifyPlay(J)V

    .line 601
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mCallback:Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;->handleStarted()V

    .line 602
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPeriodicCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 603
    return-void

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mResumePlayReason:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

    sget-object v1, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;->none:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

    if-ne v0, v1, :cond_1

    .line 593
    const-string/jumbo v0, "Paused"

    const-string/jumbo v1, "Playing"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->reportStateChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    :goto_1
    sget-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;->none:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mResumePlayReason:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

    goto :goto_0

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mResumePlayReason:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->reportResumePlay(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;)V

    goto :goto_1
.end method

.method public playerStopped()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 607
    sget-object v1, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;->ended:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->getActivityData()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->reportEndPlay(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPdsPlaySession:Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsOfflinePlaySession;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->getPlayTimeJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1, v2, v2}, Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsOfflinePlaySession;->stop(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflineAgent:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mMovieId:J

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;->notifyStop(J)V

    .line 610
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mCallback:Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;->handleStopped()V

    .line 611
    return-void
.end method

.method public seekTo(JZ)V
    .locals 3

    .prologue
    .line 256
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    if-nez v0, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    const-string/jumbo v0, "OfflinePlayback_Session"

    const-string/jumbo v1, "seekTo: "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mResumePlayReason:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

    sget-object v1, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;->none:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

    if-ne v0, v1, :cond_2

    .line 262
    sget-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;->repos:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mResumePlayReason:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

    .line 264
    :cond_2
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPlaybackTS:J

    .line 265
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->seekTo(J)V

    .line 268
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPdsPlaySession:Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsOfflinePlaySession;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsOfflinePlaySession;->seekTo(J)V

    .line 269
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mSubtitles:Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mSubtitles:Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->getSubtitleParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mSubtitles:Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->getSubtitleParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    long-to-int v1, p1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;->seeked(I)V

    goto :goto_0
.end method

.method public seekWithFuzzRange(II)V
    .locals 0

    .prologue
    .line 278
    return-void
.end method

.method public selectTracks(Lcom/netflix/mediaclient/media/AudioSource;Lcom/netflix/mediaclient/media/Subtitle;Z)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 401
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    if-nez v1, :cond_0

    .line 436
    :goto_0
    return v0

    .line 404
    :cond_0
    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mCurrentSubtitleTrack:Lcom/netflix/mediaclient/media/Subtitle;

    .line 405
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mCurrentSubtitleTrack:Lcom/netflix/mediaclient/media/Subtitle;

    if-eqz v1, :cond_3

    .line 406
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mCurrentSubtitleTrack:Lcom/netflix/mediaclient/media/Subtitle;

    invoke-interface {v1}, Lcom/netflix/mediaclient/media/Subtitle;->getDownloadableId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mSubtitledlid:Ljava/lang/String;

    .line 419
    :goto_1
    if-eqz p3, :cond_4

    .line 420
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->selectAudioTrack(Lcom/netflix/mediaclient/media/AudioSource;)Z

    move-result v0

    .line 421
    if-eqz v0, :cond_1

    .line 422
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->updateCurrentAudioTrackData()V

    .line 428
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mSubtitles:Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mBookmark:J

    move-object v2, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleOfflineManager;->changeSubtitle(Lcom/netflix/mediaclient/media/Subtitle;FJZ)V

    .line 430
    if-nez p2, :cond_2

    .line 431
    const-string/jumbo v1, "OfflinePlayback_Session"

    const-string/jumbo v2, "Removing subtitles"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mPlayTracker:Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mVdlid:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mAdlid:Ljava/lang/String;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mSubtitledlid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->updateCurrrentPlayDlids(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 408
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mSubtitledlid:Ljava/lang/String;

    goto :goto_1

    .line 425
    :cond_4
    const-string/jumbo v1, "OfflinePlayback_Session"

    const-string/jumbo v2, "Initial set of audio and subtitle. ExoPlayer sets initial audio, do subtitle only!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public setAudioDuck(Z)V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->setAudioDuck(Z)V

    .line 233
    :cond_0
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mOfflinePlayer:Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayerWithStaticMPD;->setSurface(Landroid/view/Surface;)V

    .line 340
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->mSurface:Landroid/view/Surface;

    .line 341
    return-void
.end method
