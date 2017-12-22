.class public Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;
.super Ljava/lang/Object;
.source "StreamingPlaybackSession.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsStreamingBookmark;
.implements Lcom/netflix/mediaclient/service/player/IPlaybackSession;
.implements Lcom/netflix/mediaclient/service/player/drm/NfDrmSession$LicenseListener;
.implements Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;
.implements Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlayerListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bPlayerPlaying:Z

.field private bPlayerReady:Z

.field private bSessionIsClosing:Z

.field private bToOpenNrdPlayer:Z

.field private mAudioSubtitleDefaultOrderInfo:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

.field private mAudioTrackList:[Lcom/netflix/mediaclient/media/AudioSource;

.field private mBifManager:Lcom/netflix/mediaclient/service/player/bif/IBifManager;

.field private mBookmark:J

.field private mCallback:Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;

.field private mCallbackLooper:Landroid/os/Looper;

.field private mContext:Landroid/content/Context;

.field private mCurrentAudioTrackId:Ljava/lang/String;

.field private mCurrentTimedTextTrackId:Ljava/lang/String;

.field private mDelayedBifHandler:Lcom/netflix/mediaclient/ui/bandwidthsetting/DelayedBifHandler;

.field mDrmManager:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerPlaybackInterface;

.field private mDrmSession:Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;

.field private mEndOfPresentation:Z

.field private mLastKnownPts:J

.field private mLastStreamingStat:Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;

.field mManifestCache:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface;

.field private mManifestData:Lcom/netflix/mediaclient/media/PlayerManifestData;

.field private mMovieId:J

.field private mNfManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

.field mNrdpPlayer:Lcom/netflix/mediaclient/service/player/nrdpplayback/ISessionPlayer;

.field private mPdsPlaySession:Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsStreamingPlaySession;

.field private mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

.field private mPlaybackReporter:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;

.field private mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

.field private mSessionId:Ljava/lang/String;

.field private mSessionParams:Lorg/json/JSONObject;

.field private mSubtitleAudioTrackManager:Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;

.field private mSubtitleTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/media/SubtitleTrackData;",
            ">;"
        }
    .end annotation
.end field

.field private mSurface:Landroid/view/Surface;

.field private mTimedTextTrackList:[Lcom/netflix/mediaclient/media/Subtitle;

.field private mTrickplayUrl:[Lcom/netflix/mediaclient/media/TrickplayUrl;

.field private mWorkHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-class v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface;Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerPlaybackInterface;Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsEventReporter;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;Lcom/netflix/mediaclient/servicemgr/LogblobLogging;Landroid/os/Handler;Landroid/os/Looper;JLcom/netflix/mediaclient/ui/common/PlayContext;JLandroid/util/Pair;Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;",
            "Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface;",
            "Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerPlaybackInterface;",
            "Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsEventReporter;",
            "Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;",
            "Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;",
            "Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;",
            "Lcom/netflix/mediaclient/servicemgr/LogblobLogging;",
            "Landroid/os/Handler;",
            "Landroid/os/Looper;",
            "J",
            "Lcom/netflix/mediaclient/ui/common/PlayContext;",
            "J",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 148
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 150
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mContext:Landroid/content/Context;

    .line 151
    move-object/from16 v0, p11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mCallbackLooper:Landroid/os/Looper;

    .line 152
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mManifestCache:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface;

    .line 153
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mDrmManager:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerPlaybackInterface;

    .line 154
    move-wide/from16 v0, p12

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mMovieId:J

    .line 155
    move-object/from16 v0, p14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 156
    move-wide/from16 v0, p15

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mBookmark:J

    .line 157
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mBookmark:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mLastKnownPts:J

    .line 158
    new-instance v4, Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mCallbackLooper:Landroid/os/Looper;

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mWorkHandler:Landroid/os/Handler;

    .line 159
    invoke-static {}, Lcom/netflix/mediaclient/util/NetflixTransactionIdGenerator;->generateXid()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mSessionId:Ljava/lang/String;

    .line 160
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->bToOpenNrdPlayer:Z

    .line 161
    new-instance v4, Lcom/netflix/mediaclient/service/player/SessionParams;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getCurrentNetType(Landroid/content/Context;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    move-result-object v5

    move-object/from16 v0, p14

    invoke-direct {v4, v0, v5}, Lcom/netflix/mediaclient/service/player/SessionParams;-><init>(Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;)V

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/player/SessionParams;->getParams()Lorg/json/JSONObject;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mSessionParams:Lorg/json/JSONObject;

    .line 162
    move-object/from16 v0, p18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mCallback:Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;

    .line 163
    move-object/from16 v0, p8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    .line 164
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mManifestData:Lcom/netflix/mediaclient/media/PlayerManifestData;

    .line 166
    sget-object v4, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "create playback session %s @ %d xid %s: "

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {p15 .. p16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mSessionId:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 168
    new-instance v4, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;

    move-object/from16 v0, p10

    move-object/from16 v1, p18

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;-><init>(Landroid/os/Handler;Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mSubtitleAudioTrackManager:Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;

    .line 170
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mContext:Landroid/content/Context;

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->getSessionId()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mBookmark:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->getSessionParams()Lorg/json/JSONObject;

    move-result-object v11

    move-object/from16 v4, p5

    move-object/from16 v12, p14

    move-object/from16 v13, p0

    invoke-interface/range {v4 .. v13}, Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsEventReporter;->createPdsStreamingPlaySession(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Handler;Lorg/json/JSONObject;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsStreamingBookmark;)Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsStreamingPlaySession;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mPdsPlaySession:Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsStreamingPlaySession;

    .line 171
    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v10

    .line 173
    new-instance v4, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$1;-><init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;)V

    .line 181
    new-instance v5, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mSessionId:Ljava/lang/String;

    move-object/from16 v0, p9

    invoke-direct {v5, v6, v0, v4, v7}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/LogblobLogging;Lcom/netflix/mediaclient/service/player/subtitles/SubtitleQoeProvider;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mPlaybackReporter:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;

    .line 182
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mPlaybackReporter:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;

    const-string/jumbo v12, ""

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    move-wide/from16 v6, p12

    move-wide/from16 v8, p15

    invoke-virtual/range {v5 .. v15}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->userPlay(JJJLjava/lang/String;Ljava/util/Map;J)V

    .line 184
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mWorkHandler:Landroid/os/Handler;

    new-instance v5, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v5, v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$2;-><init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->runInHandlerThread(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 198
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;)Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mSubtitleAudioTrackManager:Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;)J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mMovieId:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;)Lcom/netflix/mediaclient/service/player/manifest/NfManifest;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNfManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mCurrentAudioTrackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mCurrentAudioTrackId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;Ljava/lang/String;)Lcom/netflix/mediaclient/media/AudioSource;
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->getAudioSource(Ljava/lang/String;)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->getCurrentStreamingConfig()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mPlaybackReporter:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;

    return-object v0
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;Z)Z
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->bPlayerReady:Z

    return p1
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;)Landroid/view/Surface;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$502(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;)Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->bSessionIsClosing:Z

    return v0
.end method

.method static synthetic access$602(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;Z)Z
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->bSessionIsClosing:Z

    return p1
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;Z)Z
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->bToOpenNrdPlayer:Z

    return p1
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;)Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsStreamingPlaySession;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mPdsPlaySession:Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsStreamingPlaySession;

    return-object v0
.end method

.method private getAudioSource(Ljava/lang/String;)Lcom/netflix/mediaclient/media/AudioSource;
    .locals 5

    .prologue
    .line 420
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mAudioTrackList:[Lcom/netflix/mediaclient/media/AudioSource;

    if-eqz v0, :cond_1

    .line 421
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mAudioTrackList:[Lcom/netflix/mediaclient/media/AudioSource;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 422
    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/AudioSource;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 427
    :goto_1
    return-object v0

    .line 421
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 427
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getCurrentStreamingConfig()Lorg/json/JSONObject;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 205
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "streamingConfig"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    if-eqz v1, :cond_0

    .line 207
    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "StreamingConfig :%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 210
    :cond_0
    if-eqz v1, :cond_1

    .line 212
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isNetworkTypeCellular(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "cellular"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 214
    const-string/jumbo v1, "cellular"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 222
    :cond_1
    :goto_0
    return-object v0

    .line 216
    :cond_2
    const-string/jumbo v1, "wifi"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 218
    :catch_0
    move-exception v1

    .line 219
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private getDefaultAudioTrack()Ljava/lang/String;
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mAudioSubtitleDefaultOrderInfo:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mAudioSubtitleDefaultOrderInfo:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mAudioSubtitleDefaultOrderInfo:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->getAudioTrackId()Ljava/lang/String;

    move-result-object v0

    .line 531
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTrickplayUrls()[Lcom/netflix/mediaclient/media/TrickplayUrl;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mTrickplayUrl:[Lcom/netflix/mediaclient/media/TrickplayUrl;

    return-object v0
.end method

.method private isSessionExceptionErrorReported(Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 845
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->getLastExceptionIfAny()Ljava/lang/Exception;

    move-result-object v1

    .line 846
    if-eqz v1, :cond_0

    .line 847
    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "drm session has exception"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 849
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mPlaybackReporter:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->reportDrmSessionFailure(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    move-result-object v0

    .line 850
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mCallback:Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;

    new-instance v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackError;

    invoke-direct {v2, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackError;-><init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;)V

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;->handleError(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackError;)V

    .line 851
    const/4 v0, 0x1

    .line 853
    :cond_0
    return v0
.end method

.method private limitVideoHeightIfNeeded()V
    .locals 2

    .prologue
    .line 862
    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isHasVP9HardwareDecoder()Z

    move-result v0

    if-nez v0, :cond_0

    .line 863
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Disabling VP9 streams over 480p resolution (SW decoder limitation)"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNfManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    const/16 v1, 0x1e0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->limitVp9VideoHeight(I)V

    .line 866
    :cond_0
    return-void
.end method

.method private reportTransactionError(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 627
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mPlaybackReporter:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->reportTransactionFailure(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    .line 628
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mPlaybackReporter:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->getLastNrdpErr()Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    move-result-object v0

    .line 629
    if-eqz v0, :cond_0

    .line 630
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->buildDisplayErrorString(Landroid/content/Context;)V

    .line 632
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mCallback:Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;

    new-instance v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackError;

    invoke-direct {v2, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackError;-><init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;)V

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;->handleError(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackError;)V

    .line 633
    return-void
.end method

.method private runInHandlerThread(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 226
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 227
    return-void
.end method

.method private selectAudioTrack(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$10;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$10;-><init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->runInHandlerThread(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 447
    return-void
.end method

.method private startBifIfAllowed()V
    .locals 4

    .prologue
    .line 760
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startBifIfAllowed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mPlaybackReporter:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->getCurrentBandwidth()I

    move-result v0

    if-lez v0, :cond_1

    .line 762
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mDelayedBifHandler:Lcom/netflix/mediaclient/ui/bandwidthsetting/DelayedBifHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mPlaybackReporter:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->getCurrentBandwidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/bandwidthsetting/DelayedBifHandler;->canStartBifDownload(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 763
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->getTrickplayUrls()[Lcom/netflix/mediaclient/media/TrickplayUrl;

    move-result-object v0

    .line 764
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 765
    new-instance v1, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;[Lcom/netflix/mediaclient/media/TrickplayUrl;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mBifManager:Lcom/netflix/mediaclient/service/player/bif/IBifManager;

    .line 768
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mDelayedBifHandler:Lcom/netflix/mediaclient/ui/bandwidthsetting/DelayedBifHandler;

    .line 771
    :cond_1
    return-void
.end method

.method private tryOpenNrdPlayer()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 230
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->bPlayerReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNfManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNfManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->hasDrm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    new-instance v0, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mSessionId:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNfManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    .line 237
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getDrmHeader()[B

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNfManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getLicenseLink()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNfManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getLdlLicenseLink()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mDrmManager:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerPlaybackInterface;

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mMovieId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerPlaybackInterface;->getDrmSession(Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/drm/LicenseContext;)Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mDrmSession:Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;

    .line 240
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mDrmSession:Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;

    if-nez v0, :cond_1

    .line 241
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "no available drm session.BUG!!!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;->LICENSE_SESSION_UNAVAILABLE_ERROR:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->reportTransactionError(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "has drm session with flavor %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mDrmSession:Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->getLicenseContext()Lcom/netflix/mediaclient/service/player/drm/LicenseContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->getFlavor()Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 247
    :cond_2
    iput-boolean v5, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->bToOpenNrdPlayer:Z

    .line 248
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->getDefaultAudioTrack()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mCurrentAudioTrackId:Ljava/lang/String;

    .line 250
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNrdpPlayer:Lcom/netflix/mediaclient/service/player/nrdpplayback/ISessionPlayer;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNfManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mSessionId:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mCurrentAudioTrackId:Ljava/lang/String;

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mBookmark:J

    long-to-int v4, v4

    int-to-long v4, v4

    iget-object v6, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mDrmSession:Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;

    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/service/player/nrdpplayback/ISessionPlayer;->open(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Ljava/lang/String;Ljava/lang/String;JLcom/netflix/mediaclient/service/player/drm/NfDrmSession;)V

    .line 252
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mPlaybackReporter:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->setNrdPlayerReady()V

    .line 253
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mDrmSession:Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mDrmSession:Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->isSessionExceptionErrorReported(Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mDrmSession:Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->setListenerAndUseSession(Lcom/netflix/mediaclient/service/player/drm/NfDrmSession$LicenseListener;)V

    .line 261
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mDrmSession:Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->isLicenseAcquired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mPlaybackReporter:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->setUsedLDL()V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$7;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$7;-><init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;)V

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->runInHandlerThread(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 362
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mBifManager:Lcom/netflix/mediaclient/service/player/bif/IBifManager;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mBifManager:Lcom/netflix/mediaclient/service/player/bif/IBifManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/bif/IBifManager;->release()V

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mBifManager:Lcom/netflix/mediaclient/service/player/bif/IBifManager;

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mSubtitleAudioTrackManager:Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mSubtitleAudioTrackManager:Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->close()V

    .line 370
    :cond_1
    return-void
.end method

.method public getAudioSubtitleDefaultOrderInfo()[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mAudioSubtitleDefaultOrderInfo:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    return-object v0
.end method

.method public getAudioTrackList()[Lcom/netflix/mediaclient/media/AudioSource;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mAudioTrackList:[Lcom/netflix/mediaclient/media/AudioSource;

    return-object v0
.end method

.method public getBifFrame(J)Ljava/nio/ByteBuffer;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 485
    const-wide/32 v2, 0x7fffffff

    cmp-long v1, p1, v2

    if-ltz v1, :cond_1

    .line 486
    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "%d ms is too big, BifManager won\'t handle."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 489
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mBifManager:Lcom/netflix/mediaclient/service/player/bif/IBifManager;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mBifManager:Lcom/netflix/mediaclient/service/player/bif/IBifManager;

    long-to-int v1, p1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/player/bif/IBifManager;->getIndexFrame(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public getBookmark()J
    .locals 2

    .prologue
    .line 524
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mBookmark:J

    return-wide v0
.end method

.method public getCurrentAudioTrack()Lcom/netflix/mediaclient/media/AudioSource;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mCurrentAudioTrackId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->getAudioSource(Ljava/lang/String;)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentBookmarkPositionMs()J
    .locals 2

    .prologue
    .line 654
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentPlayableId()J
    .locals 2

    .prologue
    .line 505
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mMovieId:J

    return-wide v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 389
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mLastKnownPts:J

    return-wide v0
.end method

.method public getCurrentSubtitleTrack()Lcom/netflix/mediaclient/media/Subtitle;
    .locals 6

    .prologue
    .line 461
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mTimedTextTrackList:[Lcom/netflix/mediaclient/media/Subtitle;

    if-eqz v0, :cond_1

    .line 462
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mTimedTextTrackList:[Lcom/netflix/mediaclient/media/Subtitle;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 463
    invoke-interface {v0}, Lcom/netflix/mediaclient/media/Subtitle;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mCurrentTimedTextTrackId:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 468
    :goto_1
    return-object v0

    .line 462
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 468
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getDefaultSubtitleTrackId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mAudioSubtitleDefaultOrderInfo:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mAudioSubtitleDefaultOrderInfo:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mAudioSubtitleDefaultOrderInfo:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->getSubtitleTrackId()Ljava/lang/String;

    move-result-object v0

    .line 500
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getManifestData()Lcom/netflix/mediaclient/media/PlayerManifestData;
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mManifestData:Lcom/netflix/mediaclient/media/PlayerManifestData;

    return-object v0
.end method

.method public getPlayoutMetadata()Lcom/netflix/mediaclient/media/PlayoutMetadata;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 658
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNrdpPlayer:Lcom/netflix/mediaclient/service/player/nrdpplayback/ISessionPlayer;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNrdpPlayer:Lcom/netflix/mediaclient/service/player/nrdpplayback/ISessionPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/ISessionPlayer;->obtainStreamingStat()V

    .line 661
    new-instance v0, Lcom/netflix/mediaclient/media/PlayoutMetadata;

    .line 663
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNrdpPlayer:Lcom/netflix/mediaclient/service/player/nrdpplayback/ISessionPlayer;

    .line 664
    invoke-interface {v2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/ISessionPlayer;->getVideoDecoderName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v1, v2}, Lcom/netflix/mediaclient/media/PlayoutMetadata;-><init>(ILandroid/util/Pair;Ljava/lang/String;)V

    .line 666
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mLastStreamingStat:Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/media/PlayoutMetadata;->setStreamingStat(Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;)V

    .line 669
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionParams()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mSessionParams:Lorg/json/JSONObject;

    return-object v0
.end method

.method getSubtitleAudioTrackManager()Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mSubtitleAudioTrackManager:Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;

    return-object v0
.end method

.method public getSubtitleTrackList()[Lcom/netflix/mediaclient/media/Subtitle;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mTimedTextTrackList:[Lcom/netflix/mediaclient/media/Subtitle;

    return-object v0
.end method

.method public getSubtitleTracks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/media/SubtitleTrackData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 493
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mSubtitleTracks:Ljava/util/List;

    return-object v0
.end method

.method public getWatermark()Lcom/netflix/mediaclient/media/Watermark;
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNfManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNfManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getWatermark()Lcom/netflix/mediaclient/media/Watermark;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWorkHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mWorkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public handleAudioTrackChanged(Lcom/netflix/mediaclient/event/nrdp/player/AudioTrackChanged;)V
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mPlaybackReporter:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->audioTrackSwitchComplete()V

    .line 731
    return-void
.end method

.method public handleConnectivityChanged()V
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mPlaybackReporter:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mPlaybackReporter:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->updateNetworkInterfaceParams()V

    .line 837
    :cond_0
    return-void
.end method

.method public handlePlaybackReporterEvent(Lcom/netflix/mediaclient/event/nrdp/player/PlaybackReporterEvent;)V
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mPlaybackReporter:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->handlePBREvent(Lcom/netflix/mediaclient/event/nrdp/player/PlaybackReporterEvent;)V

    .line 776
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mBifManager:Lcom/netflix/mediaclient/service/player/bif/IBifManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mDelayedBifHandler:Lcom/netflix/mediaclient/ui/bandwidthsetting/DelayedBifHandler;

    if-eqz v0, :cond_0

    .line 777
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->startBifIfAllowed()V

    .line 779
    :cond_0
    return-void
.end method

.method public handlePlayerClosed(Lcom/netflix/mediaclient/media/JPlayer/VideoPlaybackQualStat;)V
    .locals 5

    .prologue
    .line 792
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "to close playback session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mMovieId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->bPlayerPlaying:Z

    .line 795
    if-eqz p1, :cond_0

    .line 796
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mPlaybackReporter:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->setVideoPlaybackQualStats(Lcom/netflix/mediaclient/media/JPlayer/VideoPlaybackQualStat;)V

    .line 799
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/JPlayer/VideoPlaybackQualStat;->disableVP9IfRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 800
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "nf_disable_vp9_playback"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 803
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNrdpPlayer:Lcom/netflix/mediaclient/service/player/nrdpplayback/ISessionPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/ISessionPlayer;->release()V

    .line 805
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mDrmSession:Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;

    if-eqz v0, :cond_2

    .line 806
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mDrmSession:Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->close()V

    .line 808
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mPdsPlaySession:Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsStreamingPlaySession;

    if-eqz v0, :cond_3

    .line 809
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mPdsPlaySession:Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsStreamingPlaySession;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->getCurrentPosition()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsStreamingPlaySession;->close(J)V

    .line 812
    :cond_3
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mEndOfPresentation:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "ended"

    .line 813
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mPlaybackReporter:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->getCurrentPosition()J

    move-result-wide v2

    const-string/jumbo v4, ""

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->playbackClosed(Ljava/lang/String;JLjava/lang/String;)V

    .line 814
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNfManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNfManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    instance-of v0, v0, Lcom/netflix/mediaclient/service/player/manifest/CachedNfManifest;

    if-eqz v0, :cond_4

    .line 815
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNfManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    check-cast v0, Lcom/netflix/mediaclient/service/player/manifest/CachedNfManifest;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/manifest/CachedNfManifest;->unloadJSONObject()V

    .line 817
    :cond_4
    return-void

    .line 812
    :cond_5
    const-string/jumbo v0, "stopped"

    goto :goto_0
.end method

.method public handlePlayerReady()V
    .locals 1

    .prologue
    .line 748
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->bPlayerReady:Z

    .line 749
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->bToOpenNrdPlayer:Z

    if-eqz v0, :cond_0

    .line 750
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->tryOpenNrdPlayer()V

    .line 752
    :cond_0
    return-void
.end method

.method public handlePtsUpdate(I)V
    .locals 4

    .prologue
    .line 783
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mLastKnownPts:J

    .line 784
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mCallback:Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;->handleUpdatePts(I)V

    .line 785
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mPdsPlaySession:Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsStreamingPlaySession;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->getCurrentBookmarkPositionMs()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsStreamingPlaySession;->updatePts(J)V

    .line 786
    return-void
.end method

.method public handleStreamPresenting(Lcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;)V
    .locals 4

    .prologue
    .line 756
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mPdsPlaySession:Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsStreamingPlaySession;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mSessionId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, p1}, Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsStreamingPlaySession;->streamPresentingEvent(JLcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;)V

    .line 757
    return-void
.end method

.method public handleStreamingStat(Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;)V
    .locals 5

    .prologue
    .line 722
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mLastStreamingStat:Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;

    if-nez v0, :cond_0

    .line 723
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "First StreamingStat %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;->getUIDisplayString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 725
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mLastStreamingStat:Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;

    .line 726
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 411
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->bPlayerPlaying:Z

    return v0
.end method

.method public licenseAcquired(Ljava/lang/Long;)V
    .locals 4

    .prologue
    .line 599
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mMovieId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 609
    :goto_0
    return-void

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$12;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$12;-><init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;)V

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->runInHandlerThread(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public licenseError(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mDrmSession:Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mDrmSession:Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->isSessionExceptionErrorReported(Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 622
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;->LICENSE_FETCH_ERROR:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->reportTransactionError(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 624
    :cond_1
    return-void
.end method

.method public onManifestAvailable(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)V
    .locals 4

    .prologue
    .line 541
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNfManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    .line 542
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNfManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    instance-of v0, v0, Lcom/netflix/mediaclient/service/player/manifest/CachedNfManifest;

    if-eqz v0, :cond_0

    .line 544
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNfManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    check-cast v0, Lcom/netflix/mediaclient/service/player/manifest/CachedNfManifest;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/manifest/CachedNfManifest;->loadJSONObject()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->limitVideoHeightIfNeeded()V

    .line 556
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mPdsPlaySession:Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsStreamingPlaySession;

    if-eqz v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mPdsPlaySession:Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsStreamingPlaySession;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNfManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsStreamingPlaySession;->collectManifestInfo(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)V

    .line 561
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mPlaybackReporter:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNfManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->setManifest(Lorg/json/JSONObject;)V

    .line 562
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNfManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getPrefetchSource()Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    move-result-object v0

    .line 563
    if-eqz v0, :cond_2

    .line 564
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mPlaybackReporter:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNfManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getRemainLife()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->setManifestCacheHit(JLjava/lang/String;)V

    .line 566
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mPlaybackReporter:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getTrackId()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->setTrackingId(J)V

    .line 568
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNfManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getAudioSubtitleDefaultOrderInfo()[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mAudioSubtitleDefaultOrderInfo:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    .line 569
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->tryOpenNrdPlayer()V

    .line 570
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNfManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getAudioTrackList()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mAudioTrackList:[Lcom/netflix/mediaclient/media/AudioSource;

    .line 571
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNfManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getSubtitleTrackList()[Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mTimedTextTrackList:[Lcom/netflix/mediaclient/media/Subtitle;

    .line 572
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNfManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getTrickplayUrls()[Lcom/netflix/mediaclient/media/TrickplayUrl;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mTrickplayUrl:[Lcom/netflix/mediaclient/media/TrickplayUrl;

    .line 573
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNfManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mSessionId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getSubtitleTracks(J)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mSubtitleTracks:Ljava/util/List;

    .line 574
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNfManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getManifestData()Lcom/netflix/mediaclient/media/PlayerManifestData;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mManifestData:Lcom/netflix/mediaclient/media/PlayerManifestData;

    .line 575
    :goto_0
    return-void

    .line 545
    :catch_0
    move-exception v0

    .line 546
    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;->MANIFEST_CACHE_EXTRACT_ERROR:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    new-instance v2, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->MANIFEST_CACHE_EXTRACT_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v2, v3}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->reportTransactionError(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 548
    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to load Manifest %s"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onManifestError(Ljava/lang/Long;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 586
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->MANIFEST_PREFETCH_PROCESSING_ERROR:Lcom/netflix/mediaclient/StatusCode;

    if-ne v0, v1, :cond_0

    .line 587
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;->MANIFEST_PROCESS_ERROR:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    invoke-direct {p0, v0, p2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->reportTransactionError(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 592
    :goto_0
    return-void

    .line 589
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;->MANIFEST_FETCH_ERROR:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    invoke-direct {p0, v0, p2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->reportTransactionError(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$4;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$4;-><init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;)V

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->runInHandlerThread(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 290
    return-void
.end method

.method public play()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$3;-><init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;)V

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->runInHandlerThread(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 278
    return-void
.end method

.method public playerBuffering(Z)V
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mCallback:Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;->handleBuffering(Z)V

    .line 695
    return-void
.end method

.method public playerError(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackError;)V
    .locals 4

    .prologue
    .line 735
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleNrdPlayerError %s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mPdsPlaySession:Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsStreamingPlaySession;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->getCurrentBookmarkPositionMs()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsStreamingPlaySession;->stop(J)V

    .line 738
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mPlaybackReporter:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->getLastNrdpErr()Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    move-result-object v0

    .line 739
    if-eqz v0, :cond_0

    .line 740
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->buildDisplayErrorString(Landroid/content/Context;)V

    .line 742
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mCallback:Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;

    new-instance v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackError;

    invoke-direct {v2, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackError;-><init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;)V

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;->handleError(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackError;)V

    .line 743
    return-void
.end method

.method public playerPaused()V
    .locals 4

    .prologue
    .line 687
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->bPlayerPlaying:Z

    .line 688
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mPdsPlaySession:Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsStreamingPlaySession;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->getCurrentPosition()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsStreamingPlaySession;->pause(J)V

    .line 689
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mPlaybackReporter:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->userPause()V

    .line 690
    return-void
.end method

.method public playerPrepared()V
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mCallback:Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;

    check-cast v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->adjustBitrateAndBufferForPlayback()V

    .line 681
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mCallback:Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;->handlePrepared()V

    .line 682
    return-void
.end method

.method public playerStarted()V
    .locals 4

    .prologue
    .line 700
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->bPlayerPlaying:Z

    .line 701
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mPdsPlaySession:Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsStreamingPlaySession;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->getCurrentBookmarkPositionMs()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsStreamingPlaySession;->play(J)V

    .line 702
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mCallback:Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;->handleStarted()V

    .line 703
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mBifManager:Lcom/netflix/mediaclient/service/player/bif/IBifManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mDelayedBifHandler:Lcom/netflix/mediaclient/ui/bandwidthsetting/DelayedBifHandler;

    if-nez v0, :cond_0

    .line 704
    new-instance v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/DelayedBifHandler;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/DelayedBifHandler;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mDelayedBifHandler:Lcom/netflix/mediaclient/ui/bandwidthsetting/DelayedBifHandler;

    .line 706
    :cond_0
    return-void
.end method

.method public playerStopped()V
    .locals 4

    .prologue
    .line 714
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->bPlayerPlaying:Z

    .line 715
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mEndOfPresentation:Z

    .line 716
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mCallback:Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;->handleStopped()V

    .line 717
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mPdsPlaySession:Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsStreamingPlaySession;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->getCurrentBookmarkPositionMs()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsStreamingPlaySession;->stop(J)V

    .line 718
    return-void
.end method

.method public seekTo(JZ)V
    .locals 3

    .prologue
    .line 300
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mSubtitleAudioTrackManager:Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->seekTo(I)V

    .line 301
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$5;-><init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;JZ)V

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->runInHandlerThread(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 309
    return-void
.end method

.method public seekWithFuzzRange(II)V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mSubtitleAudioTrackManager:Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->seekTo(I)V

    .line 319
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$6;-><init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;II)V

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->runInHandlerThread(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 327
    return-void
.end method

.method public selectTracks(Lcom/netflix/mediaclient/media/AudioSource;Lcom/netflix/mediaclient/media/Subtitle;Z)Z
    .locals 1

    .prologue
    .line 478
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/AudioSource;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->selectAudioTrack(Ljava/lang/String;)V

    .line 479
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/netflix/mediaclient/media/Subtitle;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mCurrentTimedTextTrackId:Ljava/lang/String;

    .line 480
    const/4 v0, 0x0

    return v0

    .line 479
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAudioDuck(Z)V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$9;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$9;-><init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;Z)V

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->runInHandlerThread(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 407
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$8;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$8;-><init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;Landroid/view/Surface;)V

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->runInHandlerThread(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 385
    return-void
.end method

.method public setVideoBitrateRange(II)V
    .locals 5

    .prologue
    .line 509
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "NrdPlaybackSession min: %d, max: %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 510
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$11;-><init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;II)V

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->runInHandlerThread(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 517
    return-void
.end method

.method public subtitleChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 649
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mPdsPlaySession:Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsStreamingPlaySession;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mSessionId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, p1, p2}, Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsStreamingPlaySession;->subtitleChanged(JLjava/lang/String;Ljava/lang/String;)V

    .line 650
    return-void
.end method

.method public subtitleVisibilityChanged(Z)V
    .locals 4

    .prologue
    .line 645
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mPdsPlaySession:Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsStreamingPlaySession;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mSessionId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, p1}, Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsStreamingPlaySession;->subtitleVisibilityChanged(JZ)V

    .line 646
    return-void
.end method
